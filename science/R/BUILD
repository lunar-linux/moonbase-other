(
CFLAGS=`echo $CFLAGS | sed s/-ffast-math//` &&
CXXFLAGS=`echo $CXXFLAGS | sed s/-ffast-math//` &&
default_config &&
make &&
make check &&
#add these lines to make documenataion
#make dvi &&
#make pfd &&
#make info &&
prepare_install &&
make install 
#make install-dvi &&
#make install-info &&
#make install-pdf &&
) > $C_FIFO 2>&1
