(

  MYCFLAGS=$CFLAGS
  unset CFLAGS LDFLAGS 
  PREFIX=/opt/lunar/enlightenment
  export PATH=$PREFIX/bin:$PATH

  prepare_install &&

  # HACKS
  cp libs/ecore/src/Ecore.h apps/e/src &&
  cp libs/ecore/src/Ecore.h apps/e/tools &&
  cp libs/ecore/src/Ecore.h apps/med/src &&

  # known bad:
  # libs/eprog, apps/efm (discontinued, enter evidence)

  # apps/iconbar, apps/evidence, apps/elicit is SPLIT ecore dependent, edje is
  # not but can be linked against ecore-split, we will try to link those
  # statically (but not now :^P )
  
  # certified GOOD:
  for DIR in libs/edb libs/eet libs/imlib2 libs/imlib2_loaders libs/evas libs/ecore libs/ebits libs/ebg libs/ewd libs/estyle libs/etox libs/edje libs/ewl apps/efsd apps/e apps/ebindings apps/ebony apps/esmall apps/etcher apps/entice apps/imlib2_tools apps/med apps/entrance ; do
    (
      message "${MESSAGE_COLOR}Building $DIR...${DEFAULT_COLOR}" &&
      cd $DIR                                    &&
      if [ "$DIR" == "libs/evas" ] ; then 
        EXTRASOPT="--enable-software-x11 --enable-image-loader-png --enable-image-loader-jpeg --enable-scale-smooth --enable-scale-sample --enable-image-loader-eet --enable-image-loader-edb --enable-convert-8-rgb-332 --enable-convert-8-rgb-666 --enable-convert-8-rgb-232 --enable-convert-8-rgb-222 --enable-convert-8-rgb-221 --enable-convert-8-rgb-121 --enable-convert-8-rgb-111 --enable-convert-16-rgb-565 --enable-convert-16-rgb-555 --enable-convert-16-rgb-rot-0 --enable-convert-32-rgb-8888 --enable-convert-32-rgbx-8888 --enable-convert-32-bgr-8888 --enable-convert-32-bgrx-8888 --enable-convert-32-rgb-rot-0"
      elif [ "$DIR" == "libs/ecore" ] ; then
        EXTRASOPT="--enable-ecore-x --enable-ecore-evas --enable-ecore-job --enable-ecore-con --enable-ecore-ipc"
      elif [ "$DIR" == "apps/e" ] ; then
        EXTRALDFLAGS="-lecore_common"
      elif [ "$DIR" == "apps/med" ] ; then
        EXTRALDFLAGS="-lecore_common"
      else
        EXTRALDFLAGS=""
        EXTRASOPT=""
      fi                                         &&
      touch COPYING INSTALL NEWS ChangeLog       &&
      am__fastdepCXX_TRUE=# USER=nobody ./autogen.sh --build=$BUILD \
                   --prefix=$PREFIX              \
                   --sysconfdir=/etc             \
                   --localstatedir=/var          \
                   --infodir=$PREFIX/share/info  \
                   --mandir=$PREFIX/share/man    \
		   --includedir=$PREFIX/include  \
		   --libdir=$PREFIX/lib          \
		   --enable-dependency-tracking  \
		   --with-imlib2-prefix=$PREFIX  \
                   $OPTS $EXTRASOPT              &&
      if [ "$DIR" == "libs/ecore" ] ; then
       (
        cd src &&
	gcc -shared -o libecore_common.so *.c
	install libecore_common.so $PREFIX/lib
       )
      fi                                         &&
      make CFLAGS="$MYCFLAGS -DBUILD_C           \
           -I$PREFIX/include -L$PREFIX/lib"      \
	   LDFLAGS="$LDFLAGS $EXTRALDFLAGS"      &&
      make install                               &&
      cd $SOURCE_DIRECTORY                       &&
      rm -rf $DIR                                ||
      exit 1
    )
  done

) > $C_FIFO 2>&1
