(

  THEME_DIRECTORY="/usr/share/themes/" &&

  THEMES="MurrinaCandy \
          MurrinaCappuccino \
          MurrinaEalm \
          MurrinaNeoGraphite" &&

  prepare_install &&

  for ENGINE in $THEMES; do
    cp -R $BUILD_DIRECTORY/$ENGINE $THEME_DIRECTORY &&
    rm -r $BUILD_DIRECTORY/$ENGINE
  done

) > $C_FIFO 2>&1
