( 
  INSTDIR=/opt/lunar/gnome/2/share/meld &&
  BIN=/opt/lunar/gnome/2/bin/meld &&
  
if ! [ -e "$INSTDIR" ]; then
     mkdir -p $INSTDIR
fi &&

cd $SOURCE_DIRECTORY &&

rm -fr $INSTDIR &&
mkdir -p $INSTDIR &&

prepare_install &&

cp -R * /opt/lunar/gnome/2/share/meld

cp $SCRIPT_DIRECTORY/meld /opt/lunar/gnome/2/bin

chown -R root.root $INSTDIR
chown -R root.root $BIN
chown -R root.root /opt/lunar/gnome/2/bin/meld
   
) > $C_FIFO 2>&1

