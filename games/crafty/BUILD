(

  make    linux-elf                                    &&
  prepare_install                                      &&
  cp crafty /usr/games                                 &&
  cp $MOONBASE/games/$MODULE/craftyx /usr/games        &&
  chmod +x /usr/games/craftyx                          &&
  mkdir -p $DOCUMENT_DIRECTORY/crafty                  &&
  cp $SOURCE_CACHE/$SOURCE2 $DOCUMENT_DIRECTORY/crafty &&
  cp $SOURCE_CACHE/$SOURCE3 $DOCUMENT_DIRECTORY/crafty

) > $C_FIFO 2>&1
