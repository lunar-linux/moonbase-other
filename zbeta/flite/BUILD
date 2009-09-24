(

  # Sets ALSA as default, instead of OSS
  patch_it $SOURCE_CACHE/$SOURCE2 1 &&

  sed -i "s/@ \$(MAKE) -C lib --no-print-directory install//" Makefile &&

  # Needed for compilation, with ALSA patch
  OPTS+=" --with-vox=cmu_us_kal16" &&

  default_build

) > $C_FIFO 2>&1
