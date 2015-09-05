if ! [ "`get_module_config DOCS`" = "y" ]; then
  OPTS+=" --disable-doc-build"
fi &&

OPTS+=" --enable-http \
        --disable-static \
        --enable-xml-messages \
        --enable-default-catalog=/etc/sgml/catalog \
        --enable-default-search-path=/usr/share/sgml" &&

default_build &&

ln -sf /usr/bin/osx /usr/bin/sgml2xml &&
ln -sf `which onsgmls` /usr/bin/nsgmls
