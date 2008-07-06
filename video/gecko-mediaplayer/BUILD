(

  XULRUNNER_LIBDIR="`pkg-config --variable=sdkdir libxul`"

  # This is a workaround. Please check whether its still needed!
  export GECKO_XPIDL="${XULRUNNER_LIBDIR}/bin/xpidl"

  sedit "s/\$(libdir)\/mozilla\/plugins/\/opt\/lunar\/plugins/" src/Makefile.in &&

  default_build

) > $C_FIFO 2>&1
