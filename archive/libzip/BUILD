OPTS="--disable-static" &&

sed -i '9d' lib/Makefile.am &&
sed -i 's:include_HEADERS = zip.h:include_HEADERS = zip.h zipconf.h:' lib/Makefile.am &&

default_build 
