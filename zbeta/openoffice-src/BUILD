(
  cd $SOURCE_DIRECTORY &&

  ./configure	--prefix=/usr \
		--sysconfdir=/etc \
                --with-system-gcc \
                --enable-devel    \
                --enable-bonobo   \
                --disable-dependency-tracking \
 		$OPTS &&

  default_make   &&

  cp etc/autoresponse.conf /etc/openoffice &&
  cd desktop                               &&
  cp drawing.desktop presentation.desktop spreadsheet.desktop textdoc.desktop /usr/share/applications/ &&
  cp *png /usr/share/pixmaps               &&
  cd $SOURCE_DIRECTORY     
  
) > $C_FIFO 2>&1
