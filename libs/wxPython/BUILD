(
  if [[ $GTK2 == "y" ]]; then
    OPTS="$OPTS WXPORT=gtk2 "
  fi
  if [[ $UNICODE == "y" ]]; then
    OPTS="$OPTS UNICODE=1"
  fi

    cd $SOURCE_DIRECTORY/wxPython   &&
    python setup.py                 \
        $OPTS                       \
	BUILD_GLCANVAS=0            \
        build install

    
) > $C_FIFO 2>&1
