scons configure PREFIX=/usr \
        FAST=True \
        XMLPARSER=libxml2 \
        INPUT_PLUGINS=all \
        CUSTOM_CXXFLAGS="$CXXFLAGS -ffat-lto-objects" \
        CUSTOM_LDFLAGS="$LDFLAGS" \
        CUSTOM_DEFINES="-DACCEPT_USE_OF_DEPRECATED_PROJ_API_H=1 -DBOOST_PHOENIX_STL_TUPLE_H_" \
        CXXFLAGS="-DU_USING_ICU_NAMESPACE=1" \
        CUSTOM_CFLAGS="$CFLAGS" &&

scons ${MAKES:+-j${MAKES}} &&
prepare_install &&
scons install
