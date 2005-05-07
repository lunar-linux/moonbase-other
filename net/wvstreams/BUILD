(
  # This is a hack to get wvstreams-3.74.0 to compile at all!
  sedit 's/libwvutils.so: /libwvutils.so: -ldb /' vars.mk &&
  default_build

) > $C_FIFO 2>&1

