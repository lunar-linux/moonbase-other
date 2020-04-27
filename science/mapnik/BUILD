 CXXFLAGS+=' -DU_USING_ICU_NAMESPACE=1' &&

 export JOBS=${MAKES} &&

# Current moonbase scons-3.1.2 breaks this build so use provided scons
  PYTHON=python
    python scons/scons.py configure \
    PREFIX="/usr" \
    INPUT_PLUGINS=all \
    XMLPARSER=libxml2 \
    FREETYPE_INCLUDES=/usr/include/freetype2 \
    FREETYPE_LIBS=/usr/lib \
    CUSTOM_CXXFLAGS="$CXXFLAGS" \
    CUSTOM_LDFLAGS="$LDFLAGS" \
    $OPTS &&
    
default_make
