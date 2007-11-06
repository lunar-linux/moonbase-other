(

  . /etc/profile.d/qt3.rc
  . /etc/profile.d/kde3.rc

  if module_installed xine-lib ; then
     export WITH_XINE_SUPPORT=1
  fi &&

  if module_installed MPlayer ; then
     export WITH_MPLAYER_SUPPORT=1
  fi &&

#  if module_installed vlc ; then
#     export WITH_VLC_SUPPORT=1
#  fi &&

  ./configure --build-qplayer --build-qslideshow  \
              $OPTS                              &&

  cd qdvdauthor  && qmake qdvdauthor.pro && make           &&
  cd qslideshow  && qmake qslideshow.pro && make && cd ../ &&
  cd qplayer     && qmake qplayer.pro    && make && cd ../ &&

  prepare_install &&
  make install

) > $C_FIFO 2>&1
