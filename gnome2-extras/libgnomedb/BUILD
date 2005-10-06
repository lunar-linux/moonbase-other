(

   sedit "s/default :$/default :;/" libgnomedb/utils.c &&
   sedit "s/case GNOME_DB_FORM_TYPE_LIST :$/case GNOME_DB_FORM_TYPE_LIST :;/" libgnomedb/gnome-db-form.c &&
   ./configure  --prefix=${GNOME26_PREFIX:-/usr}  \
                --build=$BUILD                    \
                --sysconfdir=/etc                 \
                --localstatedir=/var              \
                --infodir=${GNOME26_PREFIX:-/usr}/share/info \
                --mandir=${GNOME26_PREFIX:-/usr}/share/man   \
                --disable-gtk-doc                 \
                $OPTS                             &&
    default_make                   

) > $C_FIFO 2>&1
