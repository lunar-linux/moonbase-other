
# https://gitlab.freedesktop.org/search?group_id=&project_id=1351&repository_ref=&scope=merge_requests&search=neon
if in_depends $MODULE neon ; then
  sedit 's:30.99:32.00:' ext/neon/meson.build
fi &&

if module_installed qt5; then
  . /etc/profile.d/qt5.rc
fi &&

OPTS+=" -Dexamples=disabled \
        -Dtests=disabled" &&

default_meson_build
