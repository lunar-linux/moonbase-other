(

NEWMSG="A new config file (mouse.new) has been installed in /etc/config.d. SA please check for new options."                 &&
BASEMSG="A mouse configuration file has been installed in /etc/config.d. SA please configure!"                               &&

#cat $SCRIPT_DIRECTORY/gpm.patch                       | patch -p1      &&
cat $SCRIPT_DIRECTORY/gpm-nops.patch                  | patch -p1      &&
cat $SCRIPT_DIRECTORY/gpm-1.19.3-docfix.patch         | patch -p1      &&
cat $SCRIPT_DIRECTORY/gpm-1.19.3-root.patch           | patch -p1      &&
cat $SCRIPT_DIRECTORY/gpm-root.patch                  | patch -p1      &&
cat $SCRIPT_DIRECTORY/gpm-1.19.1-secenhance.patch     | patch -p1      &&
cat $SCRIPT_DIRECTORY/gpm-1.19.2-limits.patch         | patch -p1      &&
cat $SCRIPT_DIRECTORY/gpm-1.19.3-serialconsole.patch  | patch -p1      &&
cat $SCRIPT_DIRECTORY/gpm-1.19.3-devfs.patch          | patch -p1      &&
cat $SCRIPT_DIRECTORY/gpm-1.19.3-noworldwrite.patch   | patch -p1      &&

# ************************ WARNING *************************
# DO NOT MESS WITH THE CONFIGURE STUFF here unless you 
# really know what you're doing! We chose the lib location 
# specifically so we could link this to ncurses and then
# link ncurses to bash which is needed at init time! If you 
# move it you could break your system!

  ./configure  --build=$BUILD                          \
               --prefix=/usr                           \
               --bindir=/usr/bin                       \
               --sbindir=/usr/sbin                     \
               --datadir=/usr/share                    \
               --sysconfdir=/etc                       \
               --libdir=/lib                           \
               --includedir=/usr/include               \
               --infodir=/usr/share/info               \
               --mandir=/usr/share/man                 &&
               
  sedit  "s/src doc contrib/src contrib/"  Makefile    &&

# binary section
  default_make                                         &&
  ldconfig                                             &&

if [ -d "/etc/config.d" ]; then
   if [ -e /etc/config.d/mouse ]; then
   	cp $SCRIPT_DIRECTORY/mouse /etc/config.d/mouse.new
	echo $NEWMSG
   else
   	cp $SCRIPT_DIRECTORY/mouse /etc/config.d/mouse
	echo $BASEMSG
   fi
else
   mkdir -p /etc/config.d
   cp $SCRIPT_DIRECTORY/mouse /etc/config.d
   echo $BASEMSG
fi                                  &&

chmod 0644 /etc/config.d/mouse      &&

cp $SCRIPT_DIRECTORY/lmouse /usr/sbin/lmouse &&
chmod +x /usr/sbin/lmouse           &&

if [ -e /etc/rcS.d/???rpm ]; then
   rm -f /etc/rcS.d/???rpm
fi                                  &&

if ! [ -d "/var/lock/subsys" ]; then
   mkdir -p /var/lock/subsys
fi

) > $C_FIFO 2>&1
