(

  DITDIR=/usr/share/sgml/docbook/xsl-stylesheets-$VERSION
  prepare_install  &&  
  mkdir -p $DITDIR &&
  cp -R * $DITDIR  &&
  cp $SCRIPT_DIRECTORY/rebuild-docbook-catalog /usr/sbin
  
) > $C_FIFO 2>&1
