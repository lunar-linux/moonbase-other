(
  
  BASE_LOCATION="$MODULE_PREFIX/lib/$MODULE"

  cd files        &&
  prepare_install &&

  mkdir -p $BASE_LOCATION/db      &&
  mkdir -p $BASE_LOCATION/scripts &&
  install *.dat $BASE_LOCATION/db/                &&
  install *.pl  $BASE_LOCATION/scripts/           &&
  install check_update.sh $BASE_LOCATION/scripts/ &&

  install -m0755 rkhunter $MODULE_PREFIX/bin &&
  sedit "s:#DBDIR=/usr/local/rkhunter/db:DBDIR=$MODULE_PREFIX/lib/$MODULE/db\nINSTALLDIR=$MODULE_PREFIX:" rkhunter.conf &&
  install -m0644 rkhunter.conf /etc &&

  cp development/rkhunter.8 $MODULE_PREFIX/share/man/man8 &&

  gather_docs WISHLIST

) > $C_FIFO 2>&1
