( 
  INSTDIR=/usr/share/meld &&
  BIN=/usr/bin/meld &&

if ! [ -e "$INSTDIR" ]; then
     mkdir -p $INSTDIR
fi &&

cd $SOURCE_DIRECTORY &&

rm -fr $INSTDIR &&
mkdir -p $INSTDIR &&

prepare_install &&

cp -R * /usr/share/meld &&

cp $SCRIPT_DIRECTORY/meld /usr/bin &&

chown -R root.root $INSTDIR &&
chown -R root.root $BIN &&
chown -R root.root $INSTDIR/meld

) > $C_FIFO 2>&1
