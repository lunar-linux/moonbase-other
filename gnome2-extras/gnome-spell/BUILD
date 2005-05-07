(

#  This sedit is a temp hack until the gnome-spell devs fix it to use aspell-0.60.2
   sedit 's/AC_CHECK_LIB/#AC_CHECK_LIB/' configure.in &&
   autoconf &&
   
   ./configure  --prefix=${GNOME28_PREFIX:-/usr}  \
                --build=$BUILD                    \
                --sysconfdir=/etc                 \
                --localstatedir=/var              \
                --infodir=${GNOME28_PREFIX:-/usr}/share/info \
                --mandir=${GNOME28_PREFIX:-/usr}/share/man   \
                $OPTS                             &&

    for f in $(find -name Makefile) ; do
      sedit 's/-DGTK_DISABLE_DEPRECATED=1//g' $f 
    done					  &&
#   This sedit is a temp hack until the gnome-spell devs fix it to use aspell-0.60.2    
    sedit 's/CCLD = $(CC)/CCLD= g++/' gnome-spell/Makefile &&

    default_make                   

) > $C_FIFO 2>&1
