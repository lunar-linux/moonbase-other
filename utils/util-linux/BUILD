patch -p0 <$SCRIPT_DIRECTORY/util-linux-2.11r.patch

sedit  "s/HAVE_SLN=no/HAVE_SLN=yes/"   MCONFIG
sedit  "s/# ADD_RAW=yes/ADD_RAW=yes/"  MCONFIG
sedit  "s/\$(OPT)//"                   MCONFIG

(

 ./configure  --build=$BUILD                  \
              --prefix=/usr                   &&
  make                                        &&
  if    module_installed      util-linux-crypto
  then  lrm      --nosustain  util-linux-crypto
  fi                                          &&
  prepare_install                             &&
  make    install                             &&
  
  install -g0 -o0 -m755 $SCRIPT_DIRECTORY/make-issue \
    /sbin/make-issue

) > $C_FIFO 2>&1
