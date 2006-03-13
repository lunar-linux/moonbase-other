(

  if [[ "$OLD_FILE_SELECT" == "y" ]]; then
    sedit "s:#define USE_FILE_CHOOSER:#undef USE_FILE_CHOOSER:g" scite/gtk/SciTEGTK.cxx
  fi &&

  ( cd scintilla/gtk && make GTK2=1 )  &&
  ( cd scite/gtk     && make GTK2=1 )  &&
  prepare_install                      &&
  ( cd scite/gtk     && strip ../bin/SciTE && make GTK2=1 install )

) > $C_FIFO 2>&1
