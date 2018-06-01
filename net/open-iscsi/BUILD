OPTFLAGS=$CFLAGS make user LIB_DIR=/usr/lib &&

prepare_install &&

make sbindir=/sbin LIB_DIR=/usr/lib install_user &&

install -m 0755 -o root -g root usr/iscsistart /sbin/ &&
chmod 600 /etc/iscsi/iscsid.conf
