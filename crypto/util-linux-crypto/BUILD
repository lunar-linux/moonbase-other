sedit  "s/HAVE_SLN=no/HAVE_SLN=yes/"   MCONFIG
sedit  "s/# ADD_RAW=yes/ADD_RAW=yes/"  MCONFIG
sedit  "s/\$(OPT)//"                   MCONFIG
(

  patch  -p1  < cryptoapi-2.4.7.0/doc/util-linux-2.11b.patch

 ./configure  --build=$BUILD           \
              --prefix=/usr            &&
  make                                 &&
  if    module_installed      util-linux
  then  lrm      --nosustain  util-linux
  fi                                   &&
  prepare_install                      &&
  make    install

) > $C_FIFO 2>&1  &&

if [ -e /etc/init.d/bootmisc.sh ]; then
   rm -f /etc/init.d/bootmisc.sh
   cp $SCRIPT_DIRECTORY/bootmisc  /etc/init.d
elif ! [ -x /etc/init.d/bootmisc ]; then
  cp $SCRIPT_DIRECTORY/bootmisc /etc/init.d
fi

if ! [ -e /etc/rcS.d/S99bootmisc ]; then
     ln -s /etc/init.d/bootmisc /etc/rcS.d/S99bootmisc
fi
