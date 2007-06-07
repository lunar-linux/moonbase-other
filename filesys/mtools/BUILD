(

  # tchan added this hack 20070606 because dpkg installs /usr/sbin/install-info which
  # of course is NOT compatible with /usr/bin/install-info (at least for mtools)
  export INSTALL_INFO=/usr/bin/install-info
  patch_it $SOURCE_CACHE/$SOURCE2 1 &&
  default_build &&
  gather_docs NEWPARAMS Release.notes mtools.conf
  
) > $C_FIFO 2>&1
