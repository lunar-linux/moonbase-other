(

  sedit "s:0.12.1:0.12.2:g" okular/core/version.h okular/VERSION &&
  sedit "s:RELEASE 1:RELEASE 2:g"  okular/core/version.h &&
  sedit "s:0.4:0.4.1:g" okular/generators/poppler/generator_pdf.cpp &&
  sedit "s:QImage srcImage = src->toImage();:QImage srcImage = src->toImage().convertToFormat(format);:g" okular/ui/pagepainter.cpp &&

  source /etc/profile.d/qt4.rc   &&
  source /etc/profile.d/kde4.rc  &&

  default_cmake_build
  
) > $C_FIFO 2>&1
