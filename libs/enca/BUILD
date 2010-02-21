(

# It borks if these are present.
  if [ -f /usr/share/man/man1/enconv.1 ] ; then
       rm /usr/share/man/man1/enconv.1 
  fi &&

  if [ -f /usr/bin/enconv ] ; then
       rm /usr/bin/enconv
  fi &&

  default_build

) > $C_FIFO 2>&1
