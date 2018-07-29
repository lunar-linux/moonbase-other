 CXXFLAGS+=' -DU_USING_ICU_NAMESPACE=1' &&

 export JOBS=${MAKES} &&

  PYTHON=python
  scons configure \
    PREFIX="/usr" \
    INPUT_PLUGINS=all \
    XMLPARSER=libxml2 \
    FREETYPE_INCLUDES=/usr/include/freetype2 \
    FREETYPE_LIBS=/usr/lib \
    CUSTOM_CXXFLAGS="$CXXFLAGS" \
    CUSTOM_LDFLAGS="$LDFLAGS" &&
    
default_make
