./autogen.sh &&

# Else it stomps on unixODBC
OPTS+=" --includedir=/usr/include/$MODULE --libdir=/usr/lib/$MODULE  \
        --with-iodbc-inidir=/etc/$MODULE --with-iodbc-filedsnpath=/etc/$MODULE \
        --enable-odbc3 --enable-pthreads" &&

mkdir -p /etc/$MODULE &&

default_build &&

cp -r etc/*.sample /etc/$MODULE/
