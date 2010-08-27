(

# Withoug the BLDSHAREED the make fails on a permission denied on pasmodule.o. Additionally
# they hardcode tk/tcl versions. 
  export BLDSHARED='gcc -shared' &&
  VER=`lvu version tk | cut -c 1-3` &&
  sedit "s:8.4:$VER:g" setup.py &&

  ./setup.py configure    &&
  ./setup.py build        &&
  prepare_install         &&
  ./setup.py install --prefix=/usr    

) > $C_FIFO 2>&1
