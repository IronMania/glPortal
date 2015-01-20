# - Find TinyXML
# Find the native TinyXML includes and library
#
#   TINYXML_FOUND       - True if TinyXML2 found.
#   TINYXML_INCLUDE_DIR - where to find tinyxml2.h, etc.
#   TINYXML_LIBRARIES   - List of libraries when using TinyXML.
#

IF( TINYXML_INCLUDE_DIR )
    # Already in cache, be silent
    SET( TinyXML_FIND_QUIETLY TRUE )
ENDIF( TINYXML_INCLUDE_DIR )

FIND_PATH( TINYXML_INCLUDE_DIR "tinyxml2.h"
           PATH_SUFFIXES "tinyxml2" )
set (TINYXML_INCLUDE_DIRS ${TINYXML_INCLUDE_DIR})

FIND_LIBRARY( TINYXML_LIBRARY
              NAMES "tinyxml2"
              PATH_SUFFIXES "tinyxml2" )
set (TINYXML_LIBRARIES ${TINYXML_LIBRARY})

# handle the QUIETLY and REQUIRED arguments and set TINYXML_FOUND to TRUE if
# all listed variables are TRUE
INCLUDE( "FindPackageHandleStandardArgs" )
FIND_PACKAGE_HANDLE_STANDARD_ARGS( "TinyXML2" DEFAULT_MSG TINYXML_LIBRARY TINYXML_INCLUDE_DIR )

MARK_AS_ADVANCED( TINYXML_LIBRARY TINYXML_INCLUDE_DIR TINYXML_INCLUDE_DIRS TINYXML_LIBRARIES )
