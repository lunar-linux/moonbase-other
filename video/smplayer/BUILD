(

  . /etc/profile.d/qt4.rc  &&
  . /etc/profile.d/kde4.rc &&

# These two lines gets around a make failure relating to some translation
# character issues. This is temporary and needs to be looked at on the next
# version bump. They are aware of this.
  lupdate -noobsolete src/smplayer.pro &&
  cp src/translations/smplayer_bg.ts src/translations/smplayer_gl.ts &&
# Done

  make PREFIX=$MODULE_PREFIX &&
  prepare_install     &&
  make PREFIX=$MODULE_PREFIX install

) > $C_FIFO 2>&1

