sed -i 's/ATTRIBUTE_UNUSED/__attribute__((unused))/g' src/xml_pyx.c &&

LIBXSLT_PREFIX=/usr LIBXML_PREFIX=/usr ./configure --prefix=/usr --enable-build-docs &&

autoreconf -fiv &&

default_make &&

# Need this symlink
ln -sf /usr/bin/xml /usr/bin/xmlstarlet
