export XML_CATALOG_FILES=/etc/xml/catalog &&

OPTS+=" -Dsysconfdir=/etc \
        --auto-features=enabled \
        -Db_lto=true -Db_pie=true \
        -Ddocs=man -Ddocs-build=false \
        -Dudevrulesdir=lib/udev/rules.d"

default_meson_build
