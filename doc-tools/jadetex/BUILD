(

 cd $SOURCE_DIRECTORY                                      &&
 TEXHOME=`kpsewhich -expand-var '$TEXMFMAIN'`              &&
 TXCNF=$TEXHOME/web2c/texmf.cnf                            &&
 
 if ! [ -e "$TEXHOME/web2c/texmf.cnf.orig" ]; then
      cp $TXCNF .
      cp $TXCNF $TEXHOME/web2c/texmf.cnf.orig
      cp $SCRIPT_DIRECTORY/texmf.patch .
      patch -p1 < texmf.patch
      mv texmf.cnf $TXCNF
 fi                                                        &&

 default_make
  
) > $C_FIFO 2>&1
