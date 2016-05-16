OPTS+=" --libexecdir=/usr/lib/openbox" &&

OPTS+=" --with-x --disable-static" &&

default_build &&

# GNOME Panel is no longer available in the official repositories
rm -r /usr/bin/{gdm-control,gnome-panel-control,openbox-gnome-session} \
      /usr/share/gnome{,-session} \
      /usr/share/man/man1/openbox-gnome-session.1 \
      /usr/share/xsessions/openbox-gnome.desktop
