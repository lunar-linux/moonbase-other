(

EXPAND=/usr/src/GKrellM-skins/GKrellM-skins/ &&
THEMES=/usr/share/gkrellm/themes &&
LIST=`ls $EXPAND`

if ! [ -e "$THEMES" ]; then
     mkdir -p $THEMES
fi &&

cd $EXPAND &&

for i in $LIST; do
    gunzip -9c $i | tar xvf -
done

rm -f $EXPAND/*.tar.gz
rm -f $EXPAND/*.tgz

rm -Rf $THEMES
mkdir -p $THEMES
mv -u $EXPAND/* $THEMES

chown -R root.root $THEMES

) > $C_FIFO 2>&1
