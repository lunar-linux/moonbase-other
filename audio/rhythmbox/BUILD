export PKG_CONFIG_PATH=/opt/lunar/gnome/2/lib/pkgconfig:$PKG_CONFIG_PATH

default_build() 
{
   default_config  &&
   #activate_voyeur &&   
   
   ( for i in `find -name "Makefile"`; do
	    sedit 's/-Werror//g' $i
    done) &&
   default_make
} > $C_FIFO 2>&1

default_build
