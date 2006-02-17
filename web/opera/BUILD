(
  # Remove operamotifwrappers that will fail ldd check on lunar fix
  # Operas installer is smart enough to notice they are gone
  rm -f $SOURCE_DIRECTORY/plugins/operamotifwrapper-1 &&
  rm -f $SOURCE_DIRECTORY/plugins/operamotifwrapper-2 &&

  prepare_install &&
  echo "n" | ./install.sh -s &&

  cp -f man/opera.1 /usr/share/man/man1 &&

  if [ ! -f /etc/opera6rc ]; then
    install -m 644 config/opera6rc /etc
  fi
  if [ ! -f /etc/opera6rc.fixed ]; then
    install -m 644 config/opera6rc.fixed /etc
  fi
) > $C_FIFO 2>&1
