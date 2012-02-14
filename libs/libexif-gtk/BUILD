(

  patch_it $SOURCE2 0 &&
  
  sedit "s:-DGTK_DISABLE_DEPRECATED::g" gtk-extensions/Makefile.am gtk-extensions/Makefile.in libexif-gtk/Makefile.in &&
  sedit "s:GtkType:GType:"gtk-extensions/gtk-menu-option.h &&

  autoconf  &&

  default_build

) > $C_FIFO 2>&1
