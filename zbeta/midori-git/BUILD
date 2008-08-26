(

#    default_cvs_config &&
#    ./configure --prefix=/usr &&
#     default_cvs_build
 ./waf configure --prefix=/usr &&
 ./waf build &&
 prepare_install &&
 ./waf install


) > $C_FIFO 2>&1

