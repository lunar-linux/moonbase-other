(

export OUR_OLD_READLINE_VVV=$(lvu installed readline | perl -pe 's/([0-9]).+/$1/') &&
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
# temp hack to help in change over to readline-5.0 from readline-4.x
# can be removed when everyone is over to readline 5.0
devoke_installwatch &&
ln -sf /lib/libreadline.so.5.0 /lib/libreadline.so.4 &&
ln -sf /lib/libhistory.so.5.0  /lib/libhistory.so.4  &&
invoke_installwatch &&
ldconfig

) > $C_FIFO 2>&1 &&

(
  [ -e /etc/inputrc ] || cp $SCRIPT_DIRECTORY/inputrc /etc
  true
)
