export XML_CATALOG_FILES=/etc/xml/catalog &&

OPTS+=" --libexecdir lib \
	--sbindir bin \
	--buildtype plain \
	--auto-features enabled \
	-D b_lto=true -D b_pie=true \
	-D docs=man -D docs-build=true \
        -D udevrulesdir=lib/udev/rules.d"

default_meson_build
