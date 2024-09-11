export PYTHONDONTWRITEBYTECODE=1 &&

OPTS+=" --prefix=/usr --enable-thread --disable-docs" &&

CFLAGS+=" -fpermissive" CXXFLAGS+=" -fpermissive" ./configure $OPTS PYTHON=python2 &&

default_make &&

#Install some missing headers
mkdir -p /usr/include/pygtk-2.0
install gtk/{pygtk-private,pygtk,pygtkcellrenderer,pygtktreemodel}.h /usr/include/pygtk-2.0
