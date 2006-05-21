(

  # rename them so they don't have the space
  mv "eXperience - ice"   eXperience-ice    &&
  mv "eXperience - olive" eXperience-olive  &&

  # remove some garbage files
  find . -name '*~' | xargs rm -f  &&

  prepare_install &&
  for theme in eXperience*; do
    install -d /usr/share/themes/$theme
    cp -R $theme/* /usr/share/themes/$theme/
  done

) > $C_FIFO 2>&1
