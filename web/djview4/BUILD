(

  . /etc/profile.d/qt4.rc &&

  # This should always be just a link
  rm -rf /usr/lib/netscape/plugins  &&

  OPTS="--enable-npdjvu --enable-nsdejavu" &&

# Add a missing header required by gcc-4.5.x
  sed -i "24i #include <stdint.h>" npdjvu/npdjvu.cpp &&

  default_build &&

  # Install the plugins in the right directories
  mkdir -p /opt/lunar/plugins  &&
  for plugin in `ls /usr/lib/netscape/plugins`; do
       `install -m755 /usr/lib/netscape/plugins/$plugin /opt/lunar/plugins`; done  &&

  rm -rf /usr/lib/netscape/plugins &&
  ln -snf /opt/lunar/plugins /usr/lib/netscape/plugins

) > $C_FIFO 2>&1
