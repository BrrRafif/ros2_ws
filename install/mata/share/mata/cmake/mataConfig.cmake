# generated from ament/cmake/core/templates/nameConfig.cmake.in

# prevent multiple inclusion
if(_mata_CONFIG_INCLUDED)
  # ensure to keep the found flag the same
  if(NOT DEFINED mata_FOUND)
    # explicitly set it to FALSE, otherwise CMake will set it to TRUE
    set(mata_FOUND FALSE)
  elseif(NOT mata_FOUND)
    # use separate condition to avoid uninitialized variable warning
    set(mata_FOUND FALSE)
  endif()
  return()
endif()
set(_mata_CONFIG_INCLUDED TRUE)

# output package information
if(NOT mata_FIND_QUIETLY)
  message(STATUS "Found mata: 0.0.0 (${mata_DIR})")
endif()

# warn when using a deprecated package
if(NOT "" STREQUAL "")
  set(_msg "Package 'mata' is deprecated")
  # append custom deprecation text if available
  if(NOT "" STREQUAL "TRUE")
    set(_msg "${_msg} ()")
  endif()
  # optionally quiet the deprecation message
  if(NOT ${mata_DEPRECATED_QUIET})
    message(DEPRECATION "${_msg}")
  endif()
endif()

# flag package as ament-based to distinguish it after being find_package()-ed
set(mata_FOUND_AMENT_PACKAGE TRUE)

# include all config extra files
set(_extras "")
foreach(_extra ${_extras})
  include("${mata_DIR}/${_extra}")
endforeach()
