(

  patch_it $SOURCE_CACHE/$SOURCE2 0 &&

# For some reason it was having a problem finding the .pfb
# files provided by urw-fonts.
    OPTS+=" --with-ncsb-dir=/usr/share/fonts/urw-fonts --disable-documentation" &&

  default_build

) > $C_FIFO 2>&1
