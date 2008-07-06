(

  cd $SOURCE_DIRECTORY &&
  rpmunpack openoffice.org-pl-2.4.1-9310.i586.rpm &&
  rpmunpack openoffice.org-pl-help-2.4.1-9310.i586.rpm &&
  rpmunpack openoffice.org-pl-res-2.4.1-9310.i586.rpm &&
  rm -f *.rpm &&
  gunzip *.gz &&
  cpio -idv < openoffice.org-pl-2.4.1-9310.cpio &&
  cpio -idv < openoffice.org-pl-help-2.4.1-9310.cpio &&
  cpio -idv < openoffice.org-pl-res-2.4.1-9310.cpio &&
  cd $SOURCE_DIRECTORY/opt/openoffice.org2.4 &&
  prepare_install &&
  cp -a . /opt/lunar/openoffice-src

) > $C_FIFO 2>&1
