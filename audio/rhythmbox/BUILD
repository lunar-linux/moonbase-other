
default_build() 
{
   ./configure  --build=$BUILD                                  \
                --sysconfdir=/etc                               \
                --prefix=/opt/lunar/gnome/2                     \
                --localstatedir=/var                            \
                --infodir=/opt/lunar/gnome/2/share/info         \
                --mandir=/opt/lunar/gnome/2/share/man           &&
   
   #activate_voyeur &&   
   
   ( for i in `find -name "Makefile"`; do
	    sedit 's/-Werror//g' $i
    done) &&
   default_make
} > $C_FIFO 2>&1

default_build
