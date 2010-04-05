(

  # Real and working fix for readline 5 to 6 upgrade
  # Especially workaround issue when you would like to lin again readline 6 after lining readline 6 already
  mkdir -p /tmp/old.libraries &&
  cp -f /lib/libreadline.so.* /tmp/old.libraries &&
  cp -f /lib/libhistory.so.* /tmp/old.libraries &&
  LD_LIBRARY_PATH=/tmp/old.libraries:$LD_LIBRARY_PATH &&

  OUR_OLD_READLINE_VVV=$(lvu installed readline | perl -pe 's/([0-9]).+/$1/')  &&
  set_module_config OUR_OLD_READLINE_VVV "$OUR_OLD_READLINE_VVV"  &&
  # ************************ WARNING *************************
  # DO NOT MESS WITH THE CONFIGURE STUFF here unless you
  # really know what you're doing! We chose the lib location
  # specifically so we could link readline to bash which is
  # needed at init time! If you move it you could break your 
  # system!

  ./configure --libdir=/lib               \
              --prefix=/usr               \
              --mandir=/usr/share/man     \
              --infodir=/usr/share/info  &&
  default_make                           &&
  if [ ! -e /etc/inputrc ] ; then
    install $SCRIPT_DIRECTORY/inputrc /etc/
  fi  &&
  # temp hack to help in change over to readline-6.0 from readline-5.x
  # can be removed when everyone is over to readline 6.0
  devoke_installwatch                                 &&
  ln -sf /lib/libreadline.so.6 /lib/libreadline.so.5  &&
  ln -sf /lib/libhistory.so.6  /lib/libhistory.so.5   &&
  invoke_installwatch

) > $C_FIFO 2>&1
