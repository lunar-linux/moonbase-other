(

  if in_depends $MODULE kdebase4 && [ "$DOLPHIN" == "y" ] ; then 
    . /etc/profile.d/qt4.rc
    . /etc/profile.d/kde4.rc
  fi &&

  if in_depends $MODULE kdebase4 && [ "$KONQPLUG" == "y" ] ; then
    . /etc/profile.d/qt4.rc
    . /etc/profile.d/kde4.rc
  fi &&

  if in_depends $MODULE kdebase4 && [ "$AMAROK4" == "y" ] ; then
    . /etc/profile.d/qt4.rc
    . /etc/profile.d/kde4.rc
  fi &&

  default_build &&

  if [ "$DOLPHIN" == "y" ] ; then
    install plugins/dolphin/pacpl.desktop $MODULE_PREFIX/share/kde4/services/ServiceMenus/
  fi &&

  if [ "$KONQPLUG" == "y" ] ; then
    install plugins/konqueror/pacpl.desktop $MODULE_PREFIX/share/kde4/services/ServiceMenus/
  fi &&

  if [ "$AMAROK4" == "y" ] ; then
    install plugins/amarok/pacx $MODULE_PREFIX/share/apps/amarok/scripts/
  fi 

) > $C_FIFO 2>&1
