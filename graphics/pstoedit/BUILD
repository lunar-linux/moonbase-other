autoreconf -fvi

if module_installed qt6-base; then 
 source /etc/profile.d/qt6.rc
 OPTS+=" --with-gui"
fi &&

default_build
