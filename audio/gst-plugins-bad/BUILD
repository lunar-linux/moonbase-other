# https://gitlab.freedesktop.org/search?group_id=&project_id=1351&repository_ref=&scope=merge_requests&search=neon
#if in_depends $MODULE neon ; then
#  sedit 's:30.99:32.00:' ext/neon/meson.build
#fi &&

if module_installed qt5; then
  . /etc/profile.d/qt5.rc
fi &&

OPTS+=" -D doc=disabled \
        -D examples=disabled \
        -D wpe=disabled \
        -D tests=disabled \
        -D doc=disabled \
        -D flite=disabled \
        -D gsm=disabled \
        -D iqa=disabled \
        -D magicleap=disabled \
        -D msdk=disabled \
        -D openh264=disabled \
        -D openmpt=disabled \
        -D openni2=disabled \
        -D opensles=disabled \
        -D tinyalsa=disabled \
        -D wasapi2=disabled \
        -D wasapi=disabled \
        -D gpl=enabled \
        -D introspection=enabled \
        -D gobject-cast-checks=disabled"

default_meson_build
