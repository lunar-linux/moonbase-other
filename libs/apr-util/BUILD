(

  OPTS+=" --with-apr=`which apr-$(installed_version apr | cut -d. -f1)-config` --with-iconv=/usr --disable-static" &&

  default_build

) > $C_FIFO 2>&1
