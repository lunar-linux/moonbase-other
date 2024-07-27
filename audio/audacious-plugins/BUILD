OPTS+=" -Dadplug=false"

if module_installed qt6-base; then
  source /etc/profile.d/qt6.rc &&
  OPTS+=" -Dqtaudio=true"
else
  OPTS+=" -Dqtaudio=false"
fi

default_meson_build
