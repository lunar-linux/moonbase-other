OPTS+=" -DUSE_CONSOLEKIT=no"

default_cmake_build &&

if [ ! -e /etc/slim.conf ]; then
   install -Dm0644 $SOURCE_DIRECTORY/slim.conf /etc/slim.conf
fi
