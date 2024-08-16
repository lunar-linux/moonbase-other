if [ "$WITH_NLS" == "y" ]; then
  OPTS+=" --enable-nls"
else
  OPTS+=" --disable-nls"
fi &&

default_build &&

install -D -m644 $SCRIPT_DIRECTORY/fluxbox.desktop /usr/share/xsessions/fluxbox.desktop &&

if module_installed gdm; then
  install -m755 $SCRIPT_DIRECTORY/Fluxbox /etc/X11/gdm/Sessions/
fi
