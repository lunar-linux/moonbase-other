(

  sedit "s:Icon=TeXmacs:Icon=/usr/share/TeXmacs/misc/images/TeXmacs.svg:" TeXmacs/misc/mime/texmacs.desktop &&
  sed -i '$ i Categories=Qt;KDE;Office;' TeXmacs/misc/mime/texmacs.desktop &&

  if in_depends $MODULE qt4 ; then
    . /etc/profile.d/qt4.rc
  fi &&

  default_build &&

  mv /usr/share/TeXmacs/misc/mime/texmacs.desktop /usr/share/applications/

) > $C_FIFO 2>&1

