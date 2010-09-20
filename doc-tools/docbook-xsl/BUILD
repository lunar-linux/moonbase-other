(

  TARGET=/usr/share/sgml/docbook/xsl-stylesheets-$VERSION

  prepare_install &&
  if ! [ -d "$TARGET" ]; then
       mkdir -p $TARGET
  fi &&

  rm -rf $SOURCE_DIRECTORY/old.libraries &&

  cp -a $SOURCE_DIRECTORY/* $TARGET/

  # Add default, version independent location (fixes kdelibs4)
  mkdir -p /usr/share/xml/docbook/stylesheet &&
  ln -sf $TARGET /usr/share/xml/docbook/stylesheet/docbook-xsl

) > $C_FIFO 2>&1
