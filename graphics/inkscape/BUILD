(
   #fix build with poppler 0.20.0
   sedit "s:getOrigName:getName:" src/extension/internal/pdfinput/svg-builder.cpp &&
   sedit "s:error(:error(errInternal,:" src/extension/internal/pdfinput/pdf-parser.cpp &&

   CXXFLAGS+=" -fpermissive" &&

   ./configure  --prefix=${GNOME26_PREFIX:-/usr}  \
                --build=$BUILD                    \
                --sysconfdir=/etc                 \
                --localstatedir=/var              \
                --infodir=${GNOME26_PREFIX:-/usr}/share/info \
                --mandir=${GNOME26_PREFIX:-/usr}/share/man   \
                $OPTS                             &&

    default_make  &&

    gather_docs HACKING

) > $C_FIFO 2>&1
