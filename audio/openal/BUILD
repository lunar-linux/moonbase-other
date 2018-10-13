default_cmake_build &&

mkdir -p /etc/openal &&

if [ ! -e /etc/openal/alsoft.conf ]; then
  install -m 644 $SOURCE_DIRECTORY/alsoftrc.sample /etc/openal/alsoft.conf
fi
