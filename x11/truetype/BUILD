(

  TTFD=/usr/share/fonts/truetype
      
  prepare_install                           &&

  if [ ! -d $TTFD ] ; then
     mkdir -p $TTFD                     
  fi                                        &&

  cp -f $SOURCE_DIRECTORY/*.ttf $TTFD       &&

  (
    cd $TTFD                                &&
    ttmkfdir -o fonts.dir                   &&
    ttmkfdir -o fonts.scale
  )

) > $C_FIFO 2>&1
