(
  cd $SOURCE_DIRECTORY 				&&

  if module_installed j2sdk; then
    export OPTS="$OPTS --enable-java --with-jdk-home=/usr/lib/j2sdk1.4.1/"
  fi   						

  if module_installed j2sdk-beta; then
     export OPTS="$OPTS --enable-java --with-jdk-home=/usr/lib/j2sdk1.4.2/"
  fi                                            

  ./configure	--prefix=/usr 			\
		--sysconfdir=/etc 		\
                --with-system-gcc 		\
                --enable-devel    		\
                --disable-dependency-tracking   \
                --with-icons=gnome              \
                --with-ccache-allowed           \
		--with-docdir=/usr/share/OpenOffice.org \
		--with-tag=OOO_1_1_3_fix2       \
                --enable-gtk                    \
 		$OPTS 				&&

  default_make   				&&

  cp etc/autoresponse.conf /etc/openoffice 	&&
  cd desktop                               	&&
  cp drawing.desktop presentation.desktop spreadsheet.desktop textdoc.desktop /usr/share/applications/ &&
  cp *png /usr/share/pixmaps               	&&
  cd $SOURCE_DIRECTORY     
  
) > $C_FIFO 2>&1
