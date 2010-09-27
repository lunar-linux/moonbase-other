(

  cp icons/ltris48.xpm .  &&

  default_game_config  &&

  # Untangle Makefile, and use xpm icon
  sed -i -e "s:/usr/share/games/locale:/usr/share/locale:" \
         -e "s:localedir = \$(datadir)/locale:localedir = /usr/share/locale:" \
         -e "s:icondir = \$(datadir)/icons:icondir = /usr/share/icons:" \
         -e "s:ltris48.gif:ltris48.xpm:" \
         -e "s:\$(datadir)/icons/ltris48.xpm:ltris48:" \
         -e "s:desktopdir = \$(datadir)/applications:desktopdir = /usr/share/applications:" Makefile po/Makefile intl/Makefile  &&

  default_make  &&

  # Fix permissions on hiscore file
  chown root:games /var/games/ltris.hscr  &&
  chmod 660        /var/games/ltris.hscr

) > $C_FIFO 2>&1
