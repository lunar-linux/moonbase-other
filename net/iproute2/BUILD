(
  patch_it $SOURCE_CACHE/$SOURCE3 1
  patch_it $SOURCE_CACHE/$SOURCE4 1
  patch_it $SOURCE_CACHE/$SOURCE5 1
  patch_it $SOURCE_CACHE/$SOURCE6 1
  patch_it $SOURCE_CACHE/$SOURCE7 1
  patch_it $SOURCE_CACHE/$SOURCE8 1
  patch_it $SOURCE_CACHE/$SOURCE9 1
  patch_it $SOURCE_CACHE/$SOURCE10 1
  patch_it $SOURCE_CACHE/$SOURCE11 1
  make &&
  prepare_install &&

  cp -r etc/iproute2 /etc/iproute2 &&
  cp tc/tc /sbin &&
  cd ip &&
  cp ifcfg ip routef routel rtacct rtmon rtpr /sbin &&
  mkdir -p $DOCUMENT_DIRECTORY/$MODULE &&
  cp $SOURCE_CACHE/$SOURCE2 $DOCUMENT_DIRECTORY/$MODULE

) > $C_FIFO 2>&1
