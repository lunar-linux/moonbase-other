OPTS+=" --with-x --disable-static"

default_build &&

# GNOME Panel is no longer available in the official repositories
rm -r /usr/bin/{gdm-control,gnome-panel-control,openbox-gnome-session} \
      /usr/share/gnome{,-session} \
      /usr/share/man/man1/openbox-gnome-session.1 \
      /usr/share/xsessions/openbox-gnome.desktop

if ! module_installed kde-base; then
  # remove the kde session profile too
  rm -f /usr/bin/openbox-kde-session \
        /usr/share/man/man1/openbox-kde-session.1 \
        /usr/share/xsessions/openbox-kde.desktop
fi
