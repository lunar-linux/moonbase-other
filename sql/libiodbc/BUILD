./autogen.sh &&

# It stomps on unixODBC, disabling libodbc prevents libodbc.so symbolic link to avoid a conflict with unixODBC
OPTS+=" --disable-static --disable-libodbc --disable-gui" &&

mkdir -p /etc/$MODULE &&

default_build &&

cp -r etc/*.sample /etc/$MODULE/
