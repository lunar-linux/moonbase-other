(
  if [[ $GTK2 == "y" ]]; then
    PGTK="WXPORT=gtk2 "
    CGTK="--enable-gtk2"
  fi
  if [[ $UNICODE == "y" ]]; then
    PUNI="UNICODE=1"
    CUNI="--enable-unicode"
  fi
  if [[ $OPENGL == "n" ]]; then
    PGL="BUILD_GLCANVS=0";  else 
    CGL="--with-opengl"
  fi
POPTS="$PGTK $PUNI $PGL" 
OPTS="$OPTS $CGTK $CUNI $CGL"
#Install wxGTK that comes with wxPython
    ./configure 	--with-gtk \
               		--prefix=/usr \
                	--enable-geometry \
                     	--enable-optimise \
                     	--enable-debug_flag \
			$OPTS  &&
    make &&
    make install &&
    cd $SOURCE_DIRECTORY/wxPython   &&
    python setup.py                 \
        $POPTS                       \
	build install

    
) > $C_FIFO 2>&1
