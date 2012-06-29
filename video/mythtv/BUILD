(

  sed -i "4i #include <GL/glu.h>" libs/libmythui/mythrender_opengl.cpp &&

  . /etc/profile.d/qt4.rc   &&

  ./configure --prefix=/usr \
              $OPTS         &&

  default_make              &&

  install database/mc.sql /usr/share/mythtv/

) > $C_FIFO 2>&1
