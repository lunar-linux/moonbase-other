export PYTHONDONTWRITEBYTECODE=1

OPTS+=" -Dpython=enabled -Dlegacy=enabled -Dzlib=enabled -Dreadline=enabled"

default_meson_build

# Needed by libreoffice-bin-25.2.4
ln -sf /usr/lib/libxml2.so /usr/lib/libxml2.so.2

#https://www.linuxfromscratch.org/blfs/view/svn/general/libxml2.html
#Prevents unnecessarily rebuilding of other modules
sed "s/--static/--shared/" -i /usr/bin/xml2-config
