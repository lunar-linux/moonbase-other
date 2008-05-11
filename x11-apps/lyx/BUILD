(

# The follwoing sedit's fixes a Qt4.4 problem and will be 
# removed on the next lyx bump.
  sedit "s:viewport()->repaint();:viewport()->update();:" src/frontends/qt4/GuiWorkArea.cpp
  sedit "s:lyx_view_.busy(true);::" src/frontends/WorkArea.cpp
  sedit "s:lyx_view_.message(_(\"Formatting document...\"));::" src/frontends/WorkArea.cpp
  sedit "s:lyx_view_.updateLayoutChoice();::g" src/frontends/WorkArea.cpp
  sedit "s:lyx_view_.clearMessage();::g" src/frontends/WorkArea.cpp
  sedit "s:lyx_view_.busy(false);::" src/frontends/WorkArea.cpp

  if in_depends lyx qt4; then
    . /etc/profile.d/qt4.rc
  fi

# This is needed instead of default_build if someone chooses to 
# build lyx without a frontend.
  ./configure --build=$BUILD            \
              --prefix=/usr             \
              --bindir=/bin             \
              --infodir=/usr/share/info \
              --mandir=/usr/share/man   &&

  default_make

) > $C_FIFO 2>&1
