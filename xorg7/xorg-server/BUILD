(

  . /etc/profile.d/x11r7.rc  &&

  if [ -h /usr/share/X11/xkb/compiled ]; then
    rm -f /usr/share/X11/xkb/compiled
  fi  &&

  OPTS+=" --enable-composite --enable-aiglx --disable-devel-docs \
          --enable-install-libxf86config --enable-unix-transport \
          --with-fontrootdir=/usr/share/fonts/X11  \
          --with-dri-driver-path=${MODULE_PREFIX}/lib/dri "  &&
         #--with-mesa-source=${SOURCE_DIRECTORY}/Mesa-${MESA_VERSION} \

  default_build  &&

  # This should not be needed, check in next release if still needed.
  rm -fr /usr/share/X11/xkb/compiled  &&
  mkdir -p /var/lib/xkb  &&
  ln -sf /var/lib/xkb /usr/share/X11/xkb/compiled

) > $C_FIFO 2>&1
