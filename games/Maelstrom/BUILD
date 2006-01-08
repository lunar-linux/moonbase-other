(

  patch_it $SOURCE_CACHE/$SOURCE2 1 &&
  patch_it $SOURCE_CACHE/$SOURCE3 1 &&

  ./configure --prefix=/usr/share  \
              $OPTS               &&
	      
  default_make  &&
  
  mv /usr/share/bin/Maelstrom /usr/games/Maelstrom
  mv /usr/share/bin/Maelstrom-netd /usr/games/Maelstrom-netd
  rm /usr/share/bin

) > $C_FIFO 2>&1
