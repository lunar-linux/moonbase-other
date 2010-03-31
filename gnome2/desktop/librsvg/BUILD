(

   sedit "s:uint16 *stype:uint16:g" moz-plugin/moz-plugin.c &&

# The npapi.h and npupp.h have been moved and renamed to npfunctions.h.
   sedit "s:npupp.h:npfunctions.h:g" moz-plugin/moz-plugin.c &&

# So it will go in /opt/lunar/plugins.
   sedit 's@$(libdir)/mozilla/plugins@/opt/lunar/plugins@g' moz-plugin/Makefile.in &&

   ./configure  --prefix=/usr              \
                --build=$BUILD             \
                --sysconfdir=/etc/$MODULE  \
                --localstatedir=/var       \
                --infodir=/usr/share/info  \
                --mandir=/usr/share/man    \
                --with-croco               \
                --with-svgz                \
                --disable-gtk-doc          \
                $OPTS                     &&

# It insists on looking in stable, so lets force it.
   for i in `ls -al */Makefile` ;  do \
   sedit "s:xulrunner-1.9.2/stable:xulrunner-1.9.2/:g" $i ; done &&

#   sedit "s:xulrunner-1.9.2/stable:xulrunner-1.9.2/:g" moz-plugin/Makefile &&

    default_make

) > $C_FIFO 2>&1
