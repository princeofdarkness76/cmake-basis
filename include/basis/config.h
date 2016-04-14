// ===========================================================================
// Copyright (c) 2011-2012 University of Pennsylvania
// Copyright (c) 2013-2014 Andreas Schuh
// All rights reserved.
//
// See COPYING file for license information or visit
// http://opensource.andreasschuh.com/cmake-basis/download.html#license
// ===========================================================================

/**
 * @file  config.h
 * @brief System related macro definitions.
 */

#pragma once
#ifndef _BASIS_CONFIG_H
#define _BASIS_CONFIG_H


/// @addtogroup BasisCxxUtilities
/// @{


/// @def   LINUX
/// @brief Whether the sources are compiled on a Linux system.
#ifndef LINUX
#  if defined (linux) || defined (__linux)
#    define LINUX 1
#  else
#    define LINUX 0
#  endif
#endif

/// @def   WINDOWS
/// @brief Whether the sources are compiled on a Windows system.
#ifndef WINDOWS
#  if defined (_WIN32) || defined (WIN32) || defined (_WINDOWS)
#    define WINDOWS 1
#  else
#    define WINDOWS 0
#  endif
#endif

/// @def   MACOS
/// @brief Whether the sources are compiled on a Mac OS system.
#ifndef MACOS
#  if defined (__APPLE__) || defined (__OSX__)
#    define MACOS 1
#  else
#    define MACOS 0
#  endif
#endif

/// @def   UNIX
/// @brief Whether the sources are compiled on a Unix-based system.
#ifndef UNIX
#  if WINDOWS
#    define UNIX 0
#  else
#    define UNIX 1
#  endif
#endif

/// @def   HAVE_LONG_LONG
/// @brief Whether the long long type is supported by the compiler.
#ifndef HAVE_LONG_LONG
#  define HAVE_LONG_LONG 1
#endif

/// @def HAVE_SSTREAM
/// @brief Whether the ANSI string stream classes are available.
#ifndef HAVE_SSTREAM
#  define HAVE_SSTREAM 1
#endif

/**
 * @def   HAVE_STRSTREAM
 * @brief Whether the obsolete string stream classes are available.
 *
 * @note As the strstream implementations are obsolete already for a long
 *       time, this macro always evaluates to 0.
 */
#ifdef HAVE_STRSTREAM
#  undef HAVE_STRSTREAM
#endif
#define HAVE_STRSTREAM 0

/// @def HAVE_PTHREAD
/// @brief Whether the pthread library is available.
#ifndef HAVE_PTHREAD
#  define HAVE_PTHREAD 1
#endif

/**
 * @def HAVE_TR1_TUPLE
 * @brief Whether the tr1/tuple header file is available.
 *
 * @note This header file is only more recently supported by compilers
 *       and be used by Google Test, for example. If not supported by
 *       the compiler, Google Test can use it's own implementation.
 */
#ifndef HAVE_TR1_TUPLE
#  define HAVE_TR1_TUPLE 0
#endif


/// @}
// end of Doxygen group

#endif // _BASIS_CONFIG_H
