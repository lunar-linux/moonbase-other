(

  # Tidy up CVS entries
  cp -a data/ data-clean/						&&
  find data-clean/ -depth -type d -name CVS -exec rm -rf '{}' \;	&&

  make									&&
  prepare_install							&&

  mkdir -p /usr/share/games/nil						&&
  mkdir -p /usr/share/games/nil/bin					&&
  cp -a data-clean/ /usr/share/games/nil/data/				&&
  install --mode=0755 src/nil /usr/share/games/nil/bin/			&&
  install --mode=0755 $SCRIPT_DIRECTORY/nil /usr/games/

) > $C_FIFO 2>&1
