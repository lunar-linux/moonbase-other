(

# This sedit is actually a gcc-4.1 patch from them but since it is a one liner
# it is a simpler thing to do. It should be reevaluated on the next bump.
  sedit "s|TiXmlDeclaration::TiXmlDeclaration|TiXmlDeclaration|" src/lib/xml/tinyxml.h

  patch_it $SOURCE_CACHE/$SOURCE2 0 &&

  . /etc/profile.d/qt3.rc

  default_build

) > $C_FIFO 2>&1
