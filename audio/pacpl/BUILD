(

  if [ f /usr/share/apps/amarok/scripts/pacx ] ; then
       rm /usr/share/apps/amarok/scripts/pacx &&
       mkdir /usr/share/apps/amarok/scripts/pacx
  fi &&

  if in_depends $MODULE kdebase4 && [ "$DOLPHIN" == "y" ] ; then 
    . /etc/profile.d/qt4.rc  &&
    . /etc/profile.d/kde4.rc 
  fi &&

  if in_depends $MODULE kdebase4 && [ "$KONQPLUG" == "y" ] ; then
    . /etc/profile.d/qt4.rc  &&
    . /etc/profile.d/kde4.rc 
  fi &&

  if in_depends $MODULE kdebase4 && [ "$AMAROK4" == "y" ] ; then
    . /etc/profile.d/qt4.rc  &&
    . /etc/profile.d/kde4.rc 
  fi &&

  default_build 

) > $C_FIFO 2>&1
