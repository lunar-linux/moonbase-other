(

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
default_make                                   &&
ldconfig

) > $C_FIFO 2>&1 &&

(
  [ -e /etc/inputrc ] || cp $SCRIPT_DIRECTORY/inputrc /etc
  true
)
