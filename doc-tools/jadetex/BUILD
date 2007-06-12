(

 cd $SOURCE_DIRECTORY                                      &&

 sedit "s:tex -ini:pdftex -ini:" Makefile
 sedit "s:pdfpdftex -ini:pdftex -ini:" Makefile

 TEXHOME=`kpsewhich -expand-var '$TEXMFMAIN'`              &&
 TXCNF=$TEXHOME/web2c/texmf.cnf                            &&

 if ! [ -e "$TEXHOME/web2c/texmf.cnf.orig" ]; then
      cp $TXCNF .
      cp $TXCNF $TEXHOME/web2c/texmf.cnf.orig
      cp $SCRIPT_DIRECTORY/texmf.patch .
      patch_it $SOURCE_CACHE/$SOURCE2 1
      mv texmf.cnf $TXCNF
 fi                                                        &&

 default_make

) > $C_FIFO 2>&1
