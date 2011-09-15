(

# Fixing a renaming of some variables.
  sed -i 's|RX_FLAG_TSFT|RX_FLAG_MACTIME_MPDU|g' base.c rtl8192{ce,se,de}/trx.c &&

  make &&
  prepare_install &&
  make install

) > $C_FIFO 2>&1
