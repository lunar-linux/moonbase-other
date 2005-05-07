(

  prepare_install
  mkdir -p /usr/share/games/jumpnbump
  LINES=`echo $(cat $SCRIPT_DIRECTORY/level-list| wc -l)`
  for (( N = 1 ; $N <= $LINES ; N = $N + 1 )) ; do
    if (( $N >= 1 )) ; then
      eval FILE=\$SOURCE${N}
    else
      eval FILE=\$SOURCE
    fi
    NEWFILE=$(echo $FILE | sed 's/.bz2//g')
    echo Unpacking $FILE to /usr/share/games/jumpnbump/$NEWFILE
    bunzip2 -c $SOURCE_CACHE/$FILE > $SOURCE_DIRECTORY/$NEWFILE
    cp $SOURCE_DIRECTORY/$NEWFILE /usr/share/games/jumpnbump/
  done

) > $C_FIFO 2>&1
