(

  # before load GNUSTEP variables
  . /etc/profile.d/gnustep.rc &&
  . $GNUSTEP_SYSTEM_ROOT/Library/Makefiles/GNUstep.sh &&

# i'm really not sure why all of this is needed so i'll
# comment it and check later what it was for.
#  devoke_installwatch &&
#  default_config &&
#  make &&
#  invoke_installwatch &&
#  prepare_install &&
#  make install
# end commenting

  default_build
) > $C_FIFO 2>&1
