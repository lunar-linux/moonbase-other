(

  ./configure  --prefix=/usr                      \
               --localstatedir=/var               \
               --sysconfdir=/etc                  \
               --libdir=/usr/lib                  \
               --includedir=/usr/include          \
               --infodir=/usr/share/info          \
               --mandir=/usr/share/man            \
               --disable-gtk-doc                  &&

  sedit "s/docdir = \$(prefix)\/doc/docdir = \$(prefix)\/doc\/gnome-libs/" devel-docs/Makefile  &&
  sedit "s/docdir = \$(datadir)\/doc/docdir = \$(datadir)\/doc\/gnome-libs/" tools/gnome-doc/Makefile  &&
  default_make

) > $C_FIFO 2>&1
