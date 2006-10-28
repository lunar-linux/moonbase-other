install_dicts ()
{
	# unpack the dictionaries
	for file in $SOURCE_DIRECTORY/ooo-dicts-lunar/*
	do
		install -m 644 $file /usr/lib/ooo-1.1/share/dict/ooo/
	done &&
	# install the system dictionaries
	install -m 444 $TMP_DICT_LIST \
	    /usr/lib/ooo-1.1/share/dict/ooo/dictionary.lst 
	# strip the cruft? READMES and such?
} 

(
  cd $SOURCE_DIRECTORY 				&&

  if module_installed j2sdk; then
    export OPTS="$OPTS --enable-java --with-jdk-home=/usr/lib/j2sdk1.4.2/"
  fi &&  						

  # set language options in setup.in
  sedit "/^LANGS=\"\$LANGS/d" bin/setup.in      &&
  sedit "/^LANGS=/s/\".*\"/\"$SEL_LANGS\"/" bin/setup.in  &&

  # Fixing pkg depends
  sedit "s%evolution-data-server-1.0%evolution-data-server-1.2%" configure &&
  sedit "s%libebook-1.0%libebook-1.2%" patches/evo2/connectivity-source-drivers-evoab1-5-makefile-mk.diff &&
    
  message "+ Running configure with \$OPTS: $OPTS" &&

  ./configure	--prefix=/usr 			\
		--sysconfdir=/etc 		\
                --with-system-gcc 		\
                --enable-devel    		\
                --disable-dependency-tracking   \
		--with-distro=LUNAR             \
                --with-icons=gnome              \
                --with-ccache-allowed           \
		--with-docdir=/usr/share/OpenOffice.org \
		--with-tag=OOO_1_1_3_fix2       \
                --enable-gtk                    \
		$OPTS 				&&
  default_make   				&&
  install_dicts                                 &&

  cp etc/autoresponse.conf /etc/openoffice 	&&
  cd desktop                               	&&
  mkdir -p /usr/share/applications /usr/share/pixmaps         &&
  cp drawing.desktop presentation.desktop spreadsheet.desktop textdoc.desktop /usr/share/applications/ &&
  cp *png /usr/share/pixmaps               	&&
  cd $SOURCE_DIRECTORY     
  
) > $C_FIFO 2>&1
