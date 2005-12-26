(

  OUR_OLD_READLINE_VVV=$(lvu installed readline | perl -pe 's/([0-9]).+/$1/') &&
  set_module_config OUR_OLD_READLINE_VVV "$OUR_OLD_READLINE_VVV" &&
  # ************************ WARNING *************************
  # DO NOT MESS WITH THE CONFIGURE STUFF here unless you
  # really know what you're doing! We chose the lib location
  # specifically so we could link readline to bash which is
  # needed at init time! If you move it you could break your 
  # system!

  ./configure --libdir=/lib              \
              --prefix=/usr              \
              --mandir=/usr/share/man    \
              --infodir=/usr/share/info  &&
  default_make                           &&
  if [ ! -e /etc/inputrc ] ; then 
    install $SCRIPT_DIRECTORY/inputrc /etc/
  fi                                     &&
  # temp hack to help in change over to readline-5.0 from readline-4.x
  # can be removed when everyone is over to readline 5.0
  devoke_installwatch                                  &&
  ln -sf /lib/libreadline.so.5 /lib/libreadline.so.4 &&
  ln -sf /lib/libhistory.so.5  /lib/libhistory.so.4  &&
  invoke_installwatch                                  

) > $C_FIFO 2>&1
