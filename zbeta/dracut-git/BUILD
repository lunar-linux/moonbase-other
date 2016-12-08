  sedit 's:dash:bash:' Makefile &&

  default_build &&

  # Removing modules we don't support
  rm -rf /usr/lib/dracut/modules.d/{01fips,02fips-aesni,95fcoe,80cms,95dasd,95dasd_mod,95zfcp,95znet} &&

  # We always install this file (which means overwriting)
  install -m 0644 -g root -o root $SCRIPT_DIRECTORY/files/01-lunar.conf /etc/dracut.conf.d/ &&

  # Install the dracut module to handle lunar cd
  cp -R $SCRIPT_DIRECTORY/dracut.d/90lunar-live /usr/lib/dracut/modules.d/ &&

  gather_docs HACKING TODO AUTHORS
