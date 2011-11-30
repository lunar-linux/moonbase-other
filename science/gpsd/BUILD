(

  if in_depends $MODULE qt4 ; then
    . /etc/profile.d/qt4.rc
  fi &&

# implicit_link=no is required else ntpshm sirf garmin options
# will cause the make to fail with linking errors like this;
# defined in DSO /lib64/libm.so.6 so try adding it to the linker command line
  scons prefix=/usr              \
               implicit_link=no  \
               $OPTS            &&

  prepare_install   &&
  scons install     &&

  if in_depends $MODULE udev; then
    scons udev-install
  fi 

) > $C_FIFO 2>&1
