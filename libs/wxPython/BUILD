(
  if [[ $GTK2 == "y" ]]; then
    OPTS="$OPTS WXPORT=gtk2 "
  fi
  if [[ $OPENGL == "n" ]]; then
    OPTS="$OPTS BUILD_GLCANVAS=0"
  fi

  cd $SOURCE_DIRECTORY/wxPython   &&
  prepare_install                 &&
  python setup.py                 \
         $OPTS                    \
	 build install

    
) > $C_FIFO 2>&1
