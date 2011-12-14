(

  cd ros &&

  export CFLAGS+=" -fpermissive" &&
  export CXXFLAGS+=" -fpermissive" &&

  if in_depends $MODULE ftgl ; then
    sedit "s:FTFont.h:FTGL/ftgl.h:" inc/OpenGl_FontMgr.hxx src/OpenGl/OpenGl_FontMgr.hxx &&
    sedit "s:FTGLTextureFont.h:FTGL/FTGLTextureFont.h:" src/OpenGl/OpenGl_FontMgr.cxx &&
    sedit "s:FTLibrary.h:FTGL/FTLibrary.h:" src/OpenGl/OpenGl_FontMgr.cxx &&
    sedit "s:FTFace.h:FTGL/FTFace.h:" src/OpenGl/OpenGl_FontMgr.cxx &&
    sedit "s:FTFont.h:FTGL/FTFont.h:" inc/OpenGl_TextRender.hxx 
  fi &&

  if in_depends $MODULE qt4 ; then
     . /etc/profile.d/qt4.rc &&
     sedit "s:\$qt/include:/usr/include/qt4:g" configure   &&
     sedit "s:\$qt/include/:/usr/include/qt4/:g" configure &&
     sedit "s:\$qt/lib:/usr/lib/qt4:g" configure
  fi &&

  sedit "s:FTGL.h:ftgl.h:g" configure &&
  
  ./build_configure &&

  ./configure $flags --prefix=/usr         \
                     --disable-debug       \
                     --enable-production   \
                     $OPTS                &&

  default_make

) > $C_FIFO 2>&1
