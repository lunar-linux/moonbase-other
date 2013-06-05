
# See; http://sources.gentoo.org/cgi-bin/viewvc.cgi/gentoo-x86/app-doc/doxygen/files/doxygen-1.8.4-libreoffice.patch
  sedit "s:FileNamespaces:FileConstantGroups:" src/layout.cpp &&

  if module_installed qt4; then
    . /etc/profile.d/qt4.rc  &&
      OPTS+=" --with-doxywizard"
  fi  &&

  OPTS+=" --prefix /usr"  &&

  ./configure $OPTS  &&
  default_make
