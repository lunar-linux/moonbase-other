(
  #setup the bonding component from $SOURCE1
  cp $SOURCE_CACHE/$SOURCE1 $SOURCE_DIRECTORY           &&
  cd $SOURCE_DIRECTORY                                  &&
  tar xzvf $SOURCE1                                     &&
  rm -f bonding-0.2/ifenslave                           &&
  mv -f bonding-0.2/README bonding-0.2/README.ifenslave &&

  #run the patches
  patch_it $SOURCE_CACHE/$SOURCE2 1
  patch_it $SOURCE_CACHE/$SOURCE3 1
  patch_it $SOURCE_CACHE/$SOURCE4 1
  patch_it $SOURCE_CACHE/$SOURCE5 1
  patch_it $SOURCE_CACHE/$SOURCE6 1
  patch_it $SOURCE_CACHE/$SOURCE7 1
  patch_it $SOURCE_CACHE/$SOURCE8 1
  patch_it $SOURCE_CACHE/$SOURCE9 1

make                                                    &&
make ifenslave -C bonding-0.2                           &&
make -C doc man                                         &&
prepare_install                                         &&

install -c clockdiff             /sbin                  &&
install -c arping                /sbin                  &&
install -c ping                  /bin                   &&
install -c bonding-0.2/ifenslave /sbin                  &&
install -c ping6                 /sbin                  &&
install -c rdisc                 /sbin                  &&
install -c tracepath             /sbin                  &&
install -c tracepath6            /sbin                  &&
install -c traceroute6           /sbin                  &&

#install the docs
install -c doc/clockdiff.8 /usr/share/man/man8          &&
install -c doc/arping.8    /usr/share/man/man8          &&
install -c doc/ping.8      /usr/share/man/man8          &&
install -c doc/rdisc.8     /usr/share/man/man8          &&
install -c doc/tracepath.8 /usr/share/man/man8          &&

cd ..

) > $C_FIFO 2>&1
