(
  prepare_install &&
  echo "n" | ./install.sh -s &&

  if [ ! -f /etc/opera6rc ]; then
    install -m 644 config/opera6rc /etc
  fi
  if [ ! -f /etc/opera6rc.fixed ]; then
    install -m 644 config/opera6rc.fixed /etc
  fi
) > $C_FIFO 2>&1
