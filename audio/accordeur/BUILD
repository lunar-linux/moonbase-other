(
  #fix build
  sedit "s:name=\"TBHelp\".*$:name=\"TBHelp\">:" fhelp.ui &&

  #yeah, it really has to look like that...
  sedit 's:VERSION=\\\"$$RELEASE\\\":VERSION=\\\\\\\"$$RELEASE\\\\\\\":' accordeur.pro &&

  #cleanup desktop file
  sedit "s:Audio:Audio\;AudioVideo:" accordeur.desktop &&

  qmake accordeur.pro &&

  default_build &&

  install -Dm0755 accordeur /usr/bin/accordeur &&
  install -Dm0644 accordeur.desktop /usr/share/applications/accordeur.desktop  &&
  install -Dm0644 instruments.txt /usr/share/accordeur/instruments.txt &&
  install -d /usr/share/doc/accordeur/ &&
  install -m0644 -t /usr/share/doc/accordeur/ doc/* &&
  install -Dm0644 accordeur.png /usr/share/icons/hicolor/32x32/apps/accordeur.png

) > $C_FIFO 2>&1
