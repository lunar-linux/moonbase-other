(

  TTFD=/usr/share/fonts/truetype
      
  cd $SOURCE_DIRECTORY                      &&
  
  for each in $(ls $SOURCE_CACHE/*.exe $SOURCE_CACHE/*.CAB)
  do
    cabextract -L -q -f $each
    echo "Extracted $each."
  done                                      &&
  
  prepare_install                           &&

  if [ ! -d $TTFD ]; then
     mkdir    -p  $TTFD                     
  fi                                        &&

  cp -f $SOURCE_DIRECTORY/*.ttf     $TTFD   &&

  cd $TTFD                                  &&
  ttmkfdir -o fonts.dir                     &&
  ttmkfdir -o fonts.scale

) > $C_FIFO 2>&1
