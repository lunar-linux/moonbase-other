(
  #setup the bonding component from $SOURCE1
  cp $SOURCE_CACHE/$SOURCE1 $SOURCE_DIRECTORY           &&
  cp $SOURCE_CACHE/$SOURCE10 $SOURCE_DIRECTORY          &&
  cd $SOURCE_DIRECTORY                                  &&

  #run the patches
  patch_it $SOURCE_CACHE/$SOURCE2 1
  patch_it $SOURCE_CACHE/$SOURCE3 1
  patch_it $SOURCE_CACHE/$SOURCE4 1
  patch_it $SOURCE_CACHE/$SOURCE5 1
  patch_it $SOURCE_CACHE/$SOURCE6 1
  patch_it $SOURCE_CACHE/$SOURCE7 1
  patch_it $SOURCE_CACHE/$SOURCE8 1
  patch_it $SOURCE_CACHE/$SOURCE9 1

make                                                       &&
gcc -Wall -Wstrict-prototypes -O3 ifenslave.c -o ifenslave &&
make -C doc man                                            &&
prepare_install                                            &&

install -c clockdiff             /sbin                  &&
install -c arping                /sbin                  &&
install -c ping                  /bin                   &&
install -c ifenslave             /sbin                  &&
install -c ping6                 /bin                   &&
install -c rdisc                 /sbin                  &&
install -c tracepath             /bin                   &&
install -c tracepath6            /bin                   &&
install -c traceroute6           /bin                   &&

#install the docs
install -c doc/clockdiff.8 /usr/share/man/man8          &&
install -c doc/arping.8    /usr/share/man/man8          &&
install -c doc/pg3.8       /usr/share/man/man8          &&
install -c doc/ping.8      /usr/share/man/man8          &&
install -c doc/rdisc.8     /usr/share/man/man8          &&
install -c doc/rarpd.8     /usr/share/man/man8          &&
install -c doc/tftpd.8     /usr/share/man/man8          &&
install -c doc/tracepath.8 /usr/share/man/man8          &&
install -c doc/traceroute6.8 /usr/share/man/man8        &&
mkdir -p /usr/share/doc/iputils                         &&
install -c README.bonding  /usr/share/doc/iputils       


) > $C_FIFO 2>&1
