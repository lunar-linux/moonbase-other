# setup all the necessary paths
SHARELOC=/usr/share/doc/calcdate &&
PREFIX=/usr &&
BINDIR=$PREFIX/bin &&

# begin build
prepare_install &&
gcc -fpermissive calcdate.c -o calcdate &&
mv calcdate $BINDIR &&
chmod 0755 $BINDIR/$MODULE &&
chown root:root $BINDIR/$MODULE &&

# setup the docs
mkdir -p $SHARELOC &&
cp $SCRIPT_DIRECTORY/calcdate.c $SCRIPT_DIRECTORY/README $SHARELOC
