(
if module_installed tcp_wrappers; then
  sedit "s/undef/define/" builddefs.h
fi

make CFLAGS="$CFLAGS" &&
prepare_install

cp vsftpd /usr/sbin/vsftpd
cp vsftpd.conf.5 /usr/share/man/man5
cp vsftpd.8 /usr/share/man/man8
cp vsftpd.conf /etc

) > $C_FIFO 2>&1

