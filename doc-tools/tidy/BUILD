(

    sedit "s/LDIR= \/usr\/local\//LDIR= \/usr\//"      Makefile         &&
    sedit "s/\/usr\/local\/man\//\/usr\/share\/man\//" Makefile         &&
    make                                                                &&
    prepare_install                                                     &&
    make install                                                        &&
    
    DOCDIR="/usr/share/doc/tidy"                                        &&
    if [ ! -d $DOCDIR ]; then
       mkdir -p $DOCDIR
    fi                                                                  &&
    
    cp -r $SOURCE_DIRECTORY/htmldoc  $DOCDIR
    
) > $C_FIFO 2>&1
