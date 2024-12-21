OPTS+=" --enable-largefile" &&

default_config &&
# Prevent overlinking
sed -i -e 's/ -shared / -Wl,-O1,--as-needed\0/g' libtool

default_make &&
install -m644 mpeg2enc/mpeg2syntaxcodes.h /usr/include/mjpegtools/mpeg2enc/
