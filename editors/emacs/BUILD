#combreloc linker options fscks up things here
LDFLAGS=`echo $LDFLAGS | sed "s/-z combreloc//" | sed "s%-Wl,-O1%%"`

OPTS+=" --localstatedir=/var \
        --with-modules" &&

ac_cv_lib_gif_EGifPutExtensionLast=yes ; default_build
