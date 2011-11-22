##############################################################################
# @file  FindGMock.cmake
# @brief Find Google Mock package.
#
# @par Input variables:
# <table border="0">
#   <tr>
#     <td style="white-space:nowrap; vertical-align:top; padding-right:1em">
#         @b GMock_DIR</td>
#     <td>The Google Mock package files are searched under the specified
#         root directory. If they are not found there, the default search
#         paths are considered. This variable can also be set as environment
#         variable.</td>
#   </tr>
#   <tr>
#     <td style="white-space:nowrap; vertical-align:top; padding-right:1em">
#         @b GMOCK_DIR</td>
#     <td>Alternative environment variable for @p GMock_DIR.</td>
#   </tr>
#   <tr>
#     <td style="white-space:nowrap; vertical-align:top; padding-right:1em">
#         @b GMock_SHARED_LIBRARIES</td>
#     <td>Forces this module to search for shared libraries.
#         Otherwise, static libraries are preferred.</td>
#   </tr>
# </table>
#
# @par Output variables:
# <table border="0">
#   <tr>
#     <td style="white-space:nowrap; vertical-align:top; padding-right:1em">
#         @b GMock_FOUND</td>
#     <td>Whether the package was found and the following CMake variables are valid.</td>
#   </tr>
#   <tr>
#     <td style="white-space:nowrap; vertical-align:top; padding-right:1em">
#         @b GMock_INCLUDE_DIR</td>
#     <td>Package include directories.</td>
#   </tr>
#   <tr>
#     <td style="white-space:nowrap; vertical-align:top; padding-right:1em">
#         @b GMock_INCLUDES</td>
#     <td>Include directories including prerequisite libraries.</td>
#   </tr>
#   <tr>
#     <td style="white-space:nowrap; vertical-align:top; padding-right:1em">
#         @b GMock_LIBRARY</td>
#     <td>Package libraries.</td>
#   </tr>
#   <tr>
#     <td style="white-space:nowrap; vertical-align:top; padding-right:1em">
#         @b GMock_LIBRARIES</td>
#     <td>Package ibraries and prerequisite libraries.</td>
#   </tr>
# </table>
#
# Copyright (c) 2011 University of Pennsylvania. All rights reserved.
# See https://www.rad.upenn.edu/sbia/software/license.html or COPYING file.
#
# Contact: SBIA Group <sbia-software at uphs.upenn.edu>
#
# @ingroup CMakeFindModules
##############################################################################

# ----------------------------------------------------------------------------
# initialize search
if (NOT GMock_DIR)
  if ($ENV{GMOCK_DIR})
    set (GMock_DIR "$ENV{GMOCK_DIR}" CACHE PATH "Installation prefix for Google Mock.")
  else ()
    set (GMock_DIR "$ENV{GMock_DIR}" CACHE PATH "Installation prefix for Google Mock.")
  endif ()
endif ()

set (GMock_ORIG_CMAKE_FIND_LIBRARY_SUFFIXES ${CMAKE_FIND_LIBRARY_SUFFIXES})

if (GMock_SHARED_LIBRARIES)
  if (WIN32)
    set (CMAKE_FIND_LIBRARY_SUFFIXES .dll)
  else ()
    set (CMAKE_FIND_LIBRARY_SUFFIXES .so)
  endif()
else ()
  if (WIN32)
    set (CMAKE_FIND_LIBRARY_SUFFIXES .lib)
  else ()
    set (CMAKE_FIND_LIBRARY_SUFFIXES .a)
  endif()
endif ()

# ----------------------------------------------------------------------------
# find paths/files
if (GMock_DIR)

  find_path (
    GMock_INCLUDE_DIR
      NAMES         gmock.h
      HINTS         "${GMock_DIR}"
      PATH_SUFFIXES "include/gmock"
      DOC           "Include directory for Google Mock."
      NO_DEFAULT_PATH
  )

  find_library (
    GMock_LIBRARY
      NAMES         gmock
      HINTS         "${GMock_DIR}"
      PATH_SUFFIXES "lib"
      DOC           "Link library for Google Mock (gmock)."
      NO_DEFAULT_PATH
  )

else ()

  find_path (
    GMock_INCLUDE_DIR
      NAMES gmock.h
      HINTS ENV C_INCLUDE_PATH ENV CXX_INCLUDE_PATH
      DOC   "Include directory for Google Mock."
  )

  find_library (
    GMock_LIBRARY
      NAMES gmock
      HINTS ENV LD_LIBRARY_PATH
      DOC   "Link library for Google Mock (gmock)."
  )

endif ()

mark_as_advanced (GMock_INCLUDE_DIR)
mark_as_advanced (GMock_LIBRARY)

# ----------------------------------------------------------------------------
# prerequisite libraries
set (GMock_INCLUDES  "${GMock_INCLUDE_DIR}")
set (GMock_LIBRARIES "${GMock_LIBRARY}")

# ----------------------------------------------------------------------------
# reset CMake variables
set (CMAKE_FIND_LIBRARY_SUFFIXES ${GTest_ORIG_CMAKE_FIND_LIBRARY_SUFFIXES})

# ----------------------------------------------------------------------------
# aliases / backwards compatibility
set (GMock_INCLUDE_DIRS "${GTest_INCLUDES}")

# ----------------------------------------------------------------------------
# handle the QUIETLY and REQUIRED arguments and set *_FOUND to TRUE
# if all listed variables are found or TRUE
include (FindPackageHandleStandardArgs)

find_package_handle_standard_args (
  GMock
  REQUIRED_VARS
    GMock_INCLUDE_DIR
    GMock_LIBRARY
)

set (GMock_FOUND "${GMOCK_FOUND}")