(
unset CPP CPPFLAGS &&
default_build 
if ! grep -q "$MODULE/$VERSION" /etc/ld.so.conf; then
  echo "/lib/evms/2.5.5/" >> /etc/ld.so.conf
fi &&
ldconfig
) > $C_FIFO 2>&1
