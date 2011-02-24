(

  . /etc/profile.d/x11r7.rc  &&

  # To fix compilation error:
  # missing destination file operand after `./icons/xterm-color_32x32.xpm'
  # And to put icons in /usr/share/icons/
  sedit "s:@icondir@:/usr/share/icons:1" Makefile.in  &&

  OPTS+=" --with-app-defaults=/usr/lib/X11/app-defaults"  &&

  default_build  &&

  # cosmetic but needed adjustments:
  if ! grep -q 'XTerm*loginShell:' /usr/lib/X11/app-defaults/XTerm ; then
    echo 'XTerm*loginShell: true' >> /usr/lib/X11/app-defaults/XTerm  &&
    echo 'XTerm*loginShell: true' >> /usr/lib/X11/app-defaults/XTerm-color
  fi  &&

  install -Dm 644 {,/usr/share/applications/}xterm.desktop

) > $C_FIFO 2>&1
