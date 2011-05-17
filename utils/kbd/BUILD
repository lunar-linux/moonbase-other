(

  patch_it $SOURCE2 1  &&

  # rename keymap files with the same names
  # this is needed because when only name of keymap is specified
  # loadkeys loads the first keymap it can find, which is bad
  # this should be removed when upstream adopts the change
  mv data/keymaps/i386/qwertz/cz{,-qwertz}.map
  mv data/keymaps/i386/olpc/es{,-olpc}.map
  mv data/keymaps/i386/olpc/pt{,-olpc}.map
  mv data/keymaps/i386/dvorak/no{,-dvorak}.map
  mv data/keymaps/i386/fgGIod/trf{,-fgGIod}.map

  ./configure --prefix=/usr              \
              --datadir=/usr/share/kbd   \
              --mandir=/usr/share/man    \
              $OPTS                     &&

  make KEYCODES_PROGS=yes RESIZECONS_PROGS=yes

  prepare_install  &&

  make KEYCODES_PROGS=yes RESIZECONS_PROGS=yes DESTDIR=${pkgdir} install  &&

  # this is needed because some init scripts might call /bin/loadkeys
  # remove this when next versions of kbd
  # and init scripts with only /usr/bin/loadkeys usage will be released
  mkdir -p /usr/bin  &&
  ln -sf /usr/bin/loadkeys ${pkgdir}/bin/loadkeys

) > $C_FIFO 2>&1
