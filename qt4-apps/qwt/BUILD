(

  source /etc/profile.d/qt4.rc &&

  sedit "s:/usr/local/qwt-$${QwtVersion}:$QTDIR/:" qwt.prf &&
  sedit "s:/usr/local/qwt-5.2.1:$QTDIR/:" qwtconfig.pri    &&

  qmake &&
  default_make &&

# Its install misses a header.
  install -m 644 -p src/qwt_plot_svgitem.h /usr/include/

) > $C_FIFO 2>&1
