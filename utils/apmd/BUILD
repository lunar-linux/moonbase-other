(

if [[ `lvu installed xfree86` = "xfree86 is not installed" ]]
then
    message "xfree86 server is not installed, so xapm will not be built"
    cat $SCRIPT_DIRECTORY/apmdNoX.patch | patch -p1
fi

patch -p0 < $SCRIPT_DIRECTORY/apmsleep-2.4.19.patch

sedit "s/CFLAGS=-O -g/#\0/" Makefile
sedit "s/LDLAGS=/#\0/" Makefile
sedit "s/MANDIR=\${PREFIX}\/man/MANDIR=\${PREFIX}\/share\/man/" Makefile

    make      &&
    prepare_install   &&
    make install 

) > $C_FIFO 2>&1
