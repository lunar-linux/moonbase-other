(
make &&
prepare_install &&

cp arping clockdiff ipg ping ping6 rdisc /usr/bin
cp rarpd tftpd tracepath tracepath6 traceroute6 /usr/sbin
cd doc
cp *.8 /usr/share/man/man8
cd ..

) > $C_FIFO 2>&1
