# ============================================================================
# Copyright (c) 2011-2012 University of Pennsylvania
# Copyright (c) 2013-2014 Andreas Schuh
# All rights reserved.
#
# See COPYING file for license information or visit
# http://opensource.andreasschuh.com/cmake-basis/download.html#license
# ============================================================================

##############################################################################
# @file  Directories.cmake
# @brief CMake variables of project directories.
#
# @note The file Directories.cmake is automatically generated by BASIS from
#       the template file Directories.cmake.in which is part of BASIS.
#
# @sa http://opensource.andreasschuh.com/cmake-basis/standard/fhs.html
##############################################################################

## @addtogroup BasisDirectories
#  @{


# ============================================================================
# script site packages directories
# ============================================================================

## @brief Default directory for Python site packages.
set (PYTHON_SITELIB "")
## @brief Default directory for Jython site packages.
set (JYTHON_SITELIB "")
## @brief Default directory for Perl site packages.
set (PERL_SITELIB "/Library/Perl/5.16")

# ============================================================================
# source tree
# ============================================================================

## @brief Absolute paths to directories of public header files in source tree.
set (PROJECT_INCLUDE_DIRS "/Users/admin/cmake-basis/include")
## @brief Absolute paths to directories of project sources in source tree.
set (PROJECT_CODE_DIRS "/Users/admin/cmake-basis/src")
## @brief Absolute path to directory containing project modules in subdirectories.
set (PROJECT_MODULES_DIR "/Users/admin/cmake-basis/modules")
## @brief Absolute paths to root directories of project modules.
set (PROJECT_MODULE_DIRS "")
## @brief Absolute path to directory of BASIS project configuration in source tree.
set (PROJECT_CONFIG_DIR "/Users/admin/cmake-basis/config")
## @brief Absolute path to directory of auxiliary data in source tree.
set (PROJECT_DATA_DIR "/Users/admin/cmake-basis/data")
## @brief Absolute path to directory of documentation files in source tree.
set (PROJECT_DOC_DIR "/Users/admin/cmake-basis/doc")
## @brief Absolute path to directory of documentation ressource files in source tree.
set (PROJECT_DOCRES_DIR "/Users/admin/cmake-basis/doc/static")
## @brief Absolute path to directory of example in source tree.
set (PROJECT_EXAMPLE_DIR "/Users/admin/cmake-basis/example")
## @brief Absolute path to directory of public scripted packages.
set (PROJECT_LIBRARY_DIR "/Users/admin/cmake-basis/lib")
## @brief Absolute path to directory of testing tree in source tree.
set (PROJECT_TESTING_DIR "/Users/admin/cmake-basis/test")
## @brief Names of additional project subdirectories at root level.
set (PROJECT_SUBDIRS "")

# ============================================================================
# testing tree
# ============================================================================

## @brief Absolute path to output directory for tests.
set (TESTING_OUTPUT_DIR "/Users/admin/cmake-basis/Testing/Temporary")
## @brief Absolute path to output directory for built test executables.
set (TESTING_RUNTIME_DIR "/Users/admin/cmake-basis/Testing/bin")
## @brief Absolute path to output directory for auxiliary executables used by tests.
set (TESTING_LIBEXEC_DIR "/Users/admin/cmake-basis/Testing/lib")
## @brief Absolute path to output directory for testing libraries.
set (TESTING_LIBRARY_DIR "/Users/admin/cmake-basis/Testing/lib")

## @brief Absolute path to output directory for Python modules used for testing.
set (TESTING_PYTHON_LIBRARY_DIR "/Users/admin/cmake-basis/Testing/lib/python")
## @brief Absolute path to output directory for Jython modules used for testing.
set (TESTING_JYTHON_LIBRARY_DIR "/Users/admin/cmake-basis/Testing/lib/jython")
## @brief Absolute path to output directory for Perl modules used for testing.
set (TESTING_PERL_LIBRARY_DIR "/Users/admin/cmake-basis/Testing/lib/perl")
## @brief Absolute path to output directory for MATLAB modules used for testing.
set (TESTING_MATLAB_LIBRARY_DIR "/Users/admin/cmake-basis/Testing/lib/matlab")
## @brief Absolute path to output directory for Bash modules used for testing.
set (TESTING_BASH_LIBRARY_DIR "/Users/admin/cmake-basis/Testing/lib/bash")

# ============================================================================
# build tree
# ============================================================================

## @brief Absolute path to output directory for main executables.
set (BINARY_RUNTIME_DIR "/Users/admin/cmake-basis/bin")
## @brief Absolute path to output directory for auxiliary executables.
set (BINARY_LIBEXEC_DIR "/Users/admin/cmake-basis/lib")
## @brief Absolute path to output directory for configured public header files.
set (BINARY_INCLUDE_DIR "/Users/admin/cmake-basis/include")
## @brief Absolute path to output directory for shared libraries and modules.
set (BINARY_LIBRARY_DIR "/Users/admin/cmake-basis/lib")
## @brief Absolute path to output directory for static and import libraries.
set (BINARY_ARCHIVE_DIR "/Users/admin/cmake-basis/lib")

## @brief Absolute path to output directory for Python modules.
set (BINARY_PYTHON_LIBRARY_DIR "/Users/admin/cmake-basis/lib/python")
## @brief Absolute path to output directory for Jython modules.
set (BINARY_JYTHON_LIBRARY_DIR "/Users/admin/cmake-basis/lib/jython")
## @brief Absolute path to output directory for Perl modules.
set (BINARY_PERL_LIBRARY_DIR "/Users/admin/cmake-basis/lib/perl")
## @brief Absolute path to output directory for MATLAB modules.
set (BINARY_MATLAB_LIBRARY_DIR "/Users/admin/cmake-basis/lib/matlab")
## @brief Absolute path to output directory for Bash modules.
set (BINARY_BASH_LIBRARY_DIR "/Users/admin/cmake-basis/lib/bash")

# ============================================================================
# install tree
# ============================================================================

## @brief Installation prefix, i.e., root directory of installation.
set (CMAKE_INSTALL_PREFIX "/opt/cmake-basis-3.2.0")

## @brief Path of installation directory for CMake package configuration
#         files relative to @c CMAKE_INSTALL_PREFIX.
#
# Install configuration files of modules in subdirectories such that
# CMake does not find them by default. Their might be a case that
# someone is using two projects where the one project is named just
# the same as the module of the other project. The configuration file
# of the module is anyway supposed to be included by the package
# configuration file if this module is requested by the COMPONENTS
# argument to the find_package() command.
set (INSTALL_CONFIG_DIR "lib/cmake/basis")
## @brief Path of installation directory for runtime executables and shared
#         libraries on Windows relative to @c CMAKE_INSTALL_PREFIX.
set (INSTALL_RUNTIME_DIR "bin")
## @brief Path of installation directory for auxiliary executables
#         relative to @c CMAKE_INSTALL_PREFIX.
set (INSTALL_LIBEXEC_DIR "lib")
## @brief Path of installation directory for public header files
#         relative to @c CMAKE_INSTALL_PREFIX.
#
# @note If the @c INCLUDE_PREFIX specifies subdirectories, these will be
#       created underneath this directory during the installation.
set (INSTALL_INCLUDE_DIR "include")
## @brief Path of installation directory for shared libraries on Unix-based
#         systems and module libraries relative to @c CMAKE_INSTALL_PREFIX.
set (INSTALL_LIBRARY_DIR "lib")
## @brief Path of installation directory for static and import libraries
#         relative to @c CMAKE_INSTALL_PREFIX.
set (INSTALL_ARCHIVE_DIR "lib")

# Similar to the public header files of C/C++ libraries, the modules written
# in Python or Perl are installed with fixed relative directories which
# correspond to the packages these modules belong to:
#
# For example, the Python module <vendor>.<pkg>.<module> is installed
# in the subdirectory <vendor>/<pkg>/<module>/ relative to the
# installation path for public Python modules, i.e., INSTALL_PYTHON_LIBRARY_DIR.
# External users of this module will add the INSTALL_PYTHON_LIBRARY_DIR
# to the search path for Python modules and import the module, for example, as
# follows:
#
# from <vendor>.<pkg> import <module>

## @brief Path of installation directory of private Python modules relative to @c CMAKE_INSTALL_PREFIX.
set (INSTALL_PYTHON_LIBRARY_DIR "lib/python")
## @brief Path of installation directory of private Jython modules relative to @c CMAKE_INSTALL_PREFIX.
set (INSTALL_JYTHON_LIBRARY_DIR "lib/jython")
## @brief Path of installation directory of private Perl modules relative to @c CMAKE_INSTALL_PREFIX.
set (INSTALL_PERL_LIBRARY_DIR "lib/perl")
## @brief Path of installation directory of private MATLAB M-files relative to @c CMAKE_INSTALL_PREFIX.
set (INSTALL_MATLAB_LIBRARY_DIR "lib/matlab")
## @brief Path of installation directory of private Bash modules relative to @c CMAKE_INSTALL_PREFIX.
set (INSTALL_BASH_LIBRARY_DIR "lib/bash")

## @brief Path of installation directory of public Python modules relative to @c CMAKE_INSTALL_PREFIX.
set (INSTALL_PYTHON_SITE_DIR "lib/python")
## @brief Path of installation directory of public Jython modules relative to @c CMAKE_INSTALL_PREFIX.
set (INSTALL_JYTHON_SITE_DIR "lib/jython")
## @brief Path of installation directory of public Perl modules relative to @c CMAKE_INSTALL_PREFIX.
set (INSTALL_PERL_SITE_DIR "lib/perl")
## @brief Path of installation directory of public MATLAB M-files relative to @c CMAKE_INSTALL_PREFIX.
set (INSTALL_MATLAB_SITE_DIR "lib/matlab")
## @brief Path of installation directory of public Bash modules relative to @c CMAKE_INSTALL_PREFIX.
set (INSTALL_BASH_SITE_DIR "lib/bash")

## @brief Path of installation directory for shared files relative to @c CMAKE_INSTALL_PREFIX.
set (INSTALL_SHARE_DIR "share")
## @brief Path of installation directory for shared data files relative to @c CMAKE_INSTALL_PREFIX.
set (INSTALL_DATA_DIR "share/data")
## @brief Path of installation directory for documentation files relative to @c CMAKE_INSTALL_PREFIX.
set (INSTALL_DOC_DIR "doc")
## @brief Path of installation directory for example files relative to @c CMAKE_INSTALL_PREFIX.
set (INSTALL_EXAMPLE_DIR "share/example")
## @brief Path of installation directory for man pages relative to @c CMAKE_INSTALL_PREFIX.
set (INSTALL_MAN_DIR "man")
## @brief Path of Texinfo files relative to @c CMAKE_INSTALL_PREFIX.
set (INSTALL_TEXINFO_DIR "info")

# ============================================================================
# top-level references
# ============================================================================

## @brief Absolute path of root directory of source tree of top-level project.
set (TOPLEVEL_PROJECT_SOURCE_DIR "/Users/admin/cmake-basis")
## @brief Absolute path of root directory of build tree of top-level project.
set (TOPLEVEL_PROJECT_BINARY_DIR "/Users/admin/cmake-basis")


## @}
# end of Doxygen group