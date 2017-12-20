# ************************ WARNING *************************
# DO NOT MESS WITH THE CONFIGURE STUFF here unless you
# really know what you're doing! We chose the lib location
# specifically so we could link this to ncurses and then
# link ncurses to bash which is needed at init time! If you
# move it you could break your system!

NEWMSG="A new config file (mouse.new) has been installed in /etc/config.d. SA please check for new options." &&
BASEMSG="A mouse configuration file has been installed in /etc/config.d. SA please configure!" &&

./autogen.sh  &&

# To fix bug report http://bugs.lunar-linux.org/view.php?id=442
if [ `arch` == "x86_64" ]; then
  CFLAGS="-fPIC"
fi &&

OPTS+=" --build=$BUILD" &&
LDFLAGS="-lm" &&

default_build &&

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
fi &&

chmod 0644 /etc/config.d/mouse &&

cp $SCRIPT_DIRECTORY/lmouse /usr/sbin/lmouse &&
chmod +x /usr/sbin/lmouse &&

if [ -e /etc/rcS.d/???rpm ]; then
   rm -f /etc/rcS.d/???rpm
fi &&

if ! [ -d "/var/lock/subsys" ]; then
   mkdir -p /var/lock/subsys
fi &&

install -D -m644 $SCRIPT_DIRECTORY/systemd.d/gpm.service /usr/lib/systemd/system/gpm.service
