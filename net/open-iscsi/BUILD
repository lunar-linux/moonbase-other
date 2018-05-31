OPTFLAGS=$CFLAGS make user &&

prepare_install &&

make sbindir=/sbin install_user &&

install -m 0755 -o root -g root usr/iscsistart /sbin/ &&
chmod 600 /etc/iscsi/iscsid.conf
