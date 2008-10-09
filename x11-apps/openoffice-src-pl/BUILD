(

  cd $SOURCE_DIRECTORY &&
  rpmunpack openoffice.org-pl-${VERSION}-9310.i586.rpm &&
  rpmunpack openoffice.org-pl-help-${VERSION}-9310.i586.rpm &&
  rpmunpack openoffice.org-pl-res-${VERSION}-9310.i586.rpm &&
  rm -f *.rpm &&
  gunzip *.gz &&
  cpio -idv < openoffice.org-pl-${VERSION}-9310.cpio &&
  cpio -idv < openoffice.org-pl-help-${VERSION}-9310.cpio &&
  cpio -idv < openoffice.org-pl-res-${VERSION}-9310.cpio &&
  cd $SOURCE_DIRECTORY/opt/openoffice.org2.4 &&
  prepare_install &&
  cp -a . /opt/lunar/openoffice-src

) > $C_FIFO 2>&1
