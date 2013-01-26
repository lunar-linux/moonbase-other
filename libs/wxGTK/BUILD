( 

  if [[ $UCODE == "y" ]]; then
    OPTS+=" --enable-unicode"
  fi  &&
  
  ./configure   --build=$BUILD     \
                --prefix=/usr      \
                --with-gtk         \
                --enable-shared    \
                --enable-optimise  \
                $OPTS             &&
  default_make                    &&
  devoke_installwatch &&

  for DIR in contrib/src/stc \
             contrib/src/gizmos \
             contrib/src/ogl;
  do
    cd $DIR &&
    make &&
    invoke_installwatch &&
    make install &&
    devoke_installwatch &&
    cd $SOURCE_DIRECTORY
  done

) > $C_FIFO 2>&1
