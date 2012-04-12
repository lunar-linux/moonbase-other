(

# With --with-glib set to yes or auto it will cause dvdauthor make to fail. So for now
# just detect if dvdauthor is installed and set --with-glib=no.
  if module_installed dvdauthor ; then
    OPTS+="--with-glib=no"
  fi &&

  sedit "s:# *include <glib/[^>]*>:#include <glib.h>:" charset/* lib/* &&


  default_build

) > $C_FIFO 2>&1
