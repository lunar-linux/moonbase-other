(

  if in_depends $MODULE qt4 ; then
    . /etc/profile.d/qt4.rc &&
    default_config &&
    ./drake 
   else
    default_config &&
    ./drake 
  fi &&

  prepare_install &&
  ./drake install 

) > $C_FIFO 2>&1
