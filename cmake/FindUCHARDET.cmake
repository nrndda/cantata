# - Try to find UCHARDET
# Once done this will define
#
#  UCHARDET_FOUND - system has UCHARDET
#  UCHARDET_INCLUDE_DIR - the libuchardet include directory
#  UCHARDET_LIBS - The libuchardet libraries

# use pkg-config to get the directories and then use these values
# in the find_path() and find_library() calls
find_package(PkgConfig)

if(PKG_CONFIG_FOUND)
    pkg_check_modules(_UCHARDET uchardet)
endif(PKG_CONFIG_FOUND)

find_path(UCHARDET_INCLUDE_DIR uchardet/uchardet.h
    ${_UCHARDET_INCLUDE_DIRS}
)

find_library(UCHARDET_LIBS NAMES uchardet
    PATHS
    ${_UCHARDET_LIBRARY_DIRS}
)

include(FindPackageHandleStandardArgs)
find_package_handle_standard_args(UCHARDET DEFAULT_MSG UCHARDET_INCLUDE_DIR UCHARDET_LIBS)

mark_as_advanced(UCHARDET_INCLUDE_DIR UCHARDET_LIBS)

