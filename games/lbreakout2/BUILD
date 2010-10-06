(

  default_game_config  &&

  # Untangle Makefile, and use xpm icon
  sed -i -e "s:/usr/share/games/locale:/usr/share/locale:" \
         -e "s:localedir = \$(datadir)/locale:localedir = /usr/share/locale:" \
         -e "s:icondir = \$(datadir)/icons:icondir = /usr/share/icons:" \
         -e "s:desktopdir = \$(datadir)/applications:desktopdir = /usr/share/applications:" Makefile po/Makefile intl/Makefile  &&

  default_make  &&

  # Fix permissions on hiscore file
  chown root:games /var/games/lbreakout2.hscr  &&
  chmod 660        /var/games/lbreakout2.hscr  &&

  mv $SOURCE_CACHE/$SOURCE2  /usr/share/games/lbreakout2/levels  &&
  mv $SOURCE_CACHE/$SOURCE3  /usr/share/games/lbreakout2/levels  &&
  mv $SOURCE_CACHE/$SOURCE4  /usr/share/games/lbreakout2/levels  &&
  mv $SOURCE_CACHE/$SOURCE5  /usr/share/games/lbreakout2/levels  &&
  mv $SOURCE_CACHE/$SOURCE6  /usr/share/games/lbreakout2/levels  &&
  mv $SOURCE_CACHE/$SOURCE7  /usr/share/games/lbreakout2/levels  &&
  mv $SOURCE_CACHE/$SOURCE8  /usr/share/games/lbreakout2/levels  &&
  mv $SOURCE_CACHE/$SOURCE9  /usr/share/games/lbreakout2/levels  &&
  mv $SOURCE_CACHE/$SOURCE10 /usr/share/games/lbreakout2/levels  &&
  mv $SOURCE_CACHE/$SOURCE11 /usr/share/games/lbreakout2/levels  &&
  mv $SOURCE_CACHE/$SOURCE12 /usr/share/games/lbreakout2/levels

) > $C_FIFO 2>&1
