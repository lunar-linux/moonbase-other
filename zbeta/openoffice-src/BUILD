(
  cd $SOURCE_DIRECTORY &&

  ./configure	--prefix=/usr \
		--sysconfdir=/etc \
                --with-system-gcc \
                --enable-devel    \
                --enable-bonobo   \
                --enable-java     \
                --with-jdk-home=/usr/lib/j2sdk1.4.1/bin \
                --disable-dependency-tracking \
 		$OPTS &&

  default_make   &&

  cp etc/autoresponse.conf /etc/openoffice &&
  cd desktop                               &&
  cp drawing.desktop presentation.desktop spreadsheet.desktop textdoc.desktop /usr/share/applications/ &&
  cp *png /usr/share/pixmaps               &&
  cd $SOURCE_DIRECTORY     
  
) > $C_FIFO 2>&1
