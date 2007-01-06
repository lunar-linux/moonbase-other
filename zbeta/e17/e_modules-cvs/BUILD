(

  export PATH="$MODULE_PREFIX/bin:$PATH"
  export CPPFLAGS="$CPPFLAGS -I$MODULE_PREFIX/include"
  export LDFLAGS="$LDFLAGS -L$MODULE_PREFIX/lib"

  # the following are known not to properly compile at this time
  MODULES_NOT_TO_BUILD="calendar engage winselector"
  
  for mod in $MODULES_NOT_TO_BUILD ; do
    rm -f "${mod}/autogen.sh"
  done

  # the following are known not to play nice with automake 1.10, so this
  # is my hack at getting them to work.  The e devs are being slow at
  # addressing this known issue.
  MODULES_NEEDING_CONFIGRPATH="alarm emu flame language mail mem mixer moon net photo rain screenshot slideshow snow taskbar tclock uptime weather wlan"

  for mod in $MODULES_NEEDING_CONFIGRPATH ; do
    cp /usr/share/gettext/config.rpath ${mod}/
  done

  default_cvs_build

) > $C_FIFO 2>&1
