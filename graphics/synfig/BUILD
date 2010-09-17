(

  sed -i "40i #include <cstdio>" src/synfig/time.cpp &&

# This seems to be a gcc-4.5.1 problem as the make fails on an error 
# such as for a function-style cast, remove the redundant '::connection'
# and this sedit takes care of that.
  sedit "s|::connection::connection|::connection|g" src/synfig/canvas.cpp &&

  default_build

) > $C_FIFO 2>&1
