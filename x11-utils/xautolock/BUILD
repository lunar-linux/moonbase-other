xmkmf -a &&

sedit "s:/usr/man:/usr/share/man:" Makefile &&

default_make &&

make install.man &&

# install a script to lock the screen when the system is put at sleep
mkdir -p /etc/pm/sleep.d &&
install -m755 $SCRIPT_DIRECTORY/lock /etc/pm/sleep.d/lock
