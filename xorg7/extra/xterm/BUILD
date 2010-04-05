(
  . /etc/profile.d/x11r7.rc  &&

  default_build  &&

  # cosmetic but needed adjustments:
  if ! grep -q 'XTerm*loginShell:' /usr/lib/X11/app-defaults/XTerm ; then
    echo 'XTerm*loginShell: true' >> /usr/lib/X11/app-defaults/XTerm  &&
    echo 'XTerm*loginShell: true' >> /usr/lib/X11/app-defaults/XTerm-color
  fi

) > $C_FIFO 2>&1
