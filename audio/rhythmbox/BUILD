
(
   ./configure  --build=$BUILD                                  \
                --sysconfdir=/etc                               \
                --prefix=/opt/lunar/gnome/2.4                   \
                --localstatedir=/var                            \
                --infodir=/opt/lunar/gnome/2.4/share/info       \
                --mandir=/opt/lunar/gnome/2.4/share/man         &&
   
   ( for i in `find -name "Makefile"`; do
	    sedit 's/-Werror//g' $i
    done) &&

   default_make

) > $C_FIFO 2>&1

