(

LIBDIR=/usr/lib
INCLUDEDIR=/usr/include

cp -f *.so $LIBDIR             &&
cp -f *.h $INCLUDEDIR          &&

for NAME in encore decore ; do
    LIBNAME=${LIBDIR}/libdivx${NAME}.so
    chown 0 $LIBNAME
    chmod 755 $LIBNAME
    rm -f $LIBNAME.0
    ln -s $LIBNAME $LIBNAME.0
    chown 0 $LIBNAME.0
    chmod 755 $LIBNAME.0
done

) > $C_FIFO  2>&1
