(
  patch_it $SOURCE2 0 &&
  patch_it $SOURCE3 1 &&

  sedit  "s/HAVE_SLN=no/HAVE_SLN=yes/"   MCONFIG &&
  sedit  "s/\$(OPT)//"                   MCONFIG &&
  sedit  "s,linux/raw.h,sys/raw.h,"      disk-utils/raw.c &&

 ./configure  --build=$BUILD                  \
              --prefix=/usr                   &&
  make                                        &&
  if    module_installed      util-linux-crypto
  then  lrm      --nosustain  util-linux-crypto
  fi                                          &&
  prepare_install                             &&
  make    install                             &&
  
  mkdir -p $DOCUMENT_DIRECTORY/util-linux     &&
  cp -a HISTORY example.files $DOCUMENT_DIRECTORY/util-linux   &&
  install -g0 -o0 -m755 $SCRIPT_DIRECTORY/make-issue \
    /sbin/make-issue

) > $C_FIFO 2>&1
