(
  # Use /usr/share as root
  sedit 's:^\(TEXMFROOT = \)\$SELFAUTOPARENT:\1 /usr/share:' texk/kpathsea/texmf.cnf &&
  sedit 's:^\(TEXMFLOCAL = \).*$:\1 \$TEXMFROOT/texmf-local:' texk/kpathsea/texmf.cnf &&

  # Fonts dir
  sedit 's:^\(OSFONTDIR =\).*:\1 /usr/share/fonts:' texk/kpathsea/texmf.cnf  &&

  # Use /usr/share/texmf and /usr/share/texmf-dist
  find -name Makefile\* -print0 | xargs -0 sed -i -e "s:\${prefix}/texmf:\${datadir}/texmf:"  &&
  find -name configure -print0 | xargs -0 sed -i -e "s:\${prefix}/texmf:\${datadir}/texmf:"  &&
  find -name \*.info -print0 | xargs -0 sed -i -e "s:/usr/local:/usr:"  &&
  find -name \*.texi -print0 | xargs -0 sed -i -e "s:/usr/local:/usr:"  &&
  find -name \*.synctex -print0 | xargs -0 sed -i -e "s:/usr/local:/usr:"  &&
  sed -i -e "s:\$(DESTDIR)\$(texconfigdir):/usr/share/texmf/texconfig:g" -e "s:\$(DESTDIR)\$(texconfdir):/usr/share:g" texk/tetex/Makefile.*  &&

  # Direct symlinks from /usr/bin/ into /usr/*share*/texmf... rather than /usr/texmf...
  find -name Makefile\* -print0 | xargs -0 sed -i -e "s:\$(REL):/usr/share:"  &&
  sedit "s:\${prefix}/\$(tex:/usr/share/\$(tex:" texk/tex4htk/Makefile*  &&

  # Prevent the ridiculous behaviour of deleting, then trying to replace, /usr/bin/man
  sedit "s:rm -f man:true:" texk/texlive/linked_scripts/Makefile*  &&
  sedit "s:ln -s /usr/share/texmf/doc/man man:true:" texk/texlive/linked_scripts/Makefile*  &&

  # Fix symlinks in /usr/share/man/man1/
  sed -i -e "s:link\.1:link\.1\.gz:g" -e "s:file\.1:file\.1\.gz:g" {texk/kpathsea/man,texk/tetex,texk/web2c/man}/Makefile.{am,in}  &&
  sed -i -e "s:dvilj2p.1 dvilj4.1 dvilj4l.1 dvilj6.1:dvilj2p.1.gz dvilj4.1.gz dvilj4l.1.gz dvilj6.1.gz:1" -e "s:LN_S) dvilj\.1:LN_S) dvilj.1.gz:" texk/dviljk/Makefile.{am,in}  &&

  # Fix 64-bit XeTeX - http://bugs.gentoo.org/show_bug.cgi?id=356701
  sedit "/^#define __XETEXEXT_H/a#include <w2c\/c-auto.h>" texk/web2c/xetexdir/XeTeX_ext.h  &&

  # Hide warnings about being unable to find its own config files
  export KPATHSEA_WARNING=0  &&

  # Some options are from http://www.gentoo-portage.com/app-text/texlive-core
  # and http://repos.archlinux.org/wsvn/packages/texlive-bin/trunk/
  # xindy should be in its own module, because its compilation needs latex to be *already* installed.
  # luatex and psutils are individual modules.
  OPTS+=" --datadir=/usr/share --disable-multiplatform --disable-native-texlive-build --with-gs=gs --disable-xindy --enable-etex --disable-luatex --disable-psutils --enable-xetex --enable-ipc --enable-shared --disable-static --with-system-zlib --with-system-zziplib --with-system-libpng --with-system-gd --with-system-t1lib --with-system-teckit --with-teckit-includes=/usr/include/teckit --with-system-freetype2 --disable-t1utils --disable-lcdf-typetools" &&

  default_build  &&

  # Idea from http://projects.archlinux.org/svntogit/packages.git/tree/texlive-bin/trunk/
  install -m644 $SOURCE_CACHE/$SOURCE2 /etc/fonts/conf.d/09-texlive-fonts.conf

) > $C_FIFO 2>&1
