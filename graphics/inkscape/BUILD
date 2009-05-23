(

#  This fixes a gtkctree.h (GtkCList does not name a type) make failure.
   sedit "s:gtk/gtkclist.h:gtk/gtk.h:" src/widgets/sp-xmlview-attr-list.h
#  done

   patch_it $SOURCE_CACHE/$SOURCE2 0 &&
   patch_it $SOURCE_CACHE/$SOURCE3 0 &&

   ./configure  --prefix=${GNOME26_PREFIX:-/usr}  \
                --build=$BUILD                    \
                --sysconfdir=/etc                 \
                --localstatedir=/var              \
                --infodir=${GNOME26_PREFIX:-/usr}/share/info \
                --mandir=${GNOME26_PREFIX:-/usr}/share/man   \
                --with-popt                       \
                $OPTS                             &&

    default_make  &&

    gather_docs HACKING

) > $C_FIFO 2>&1
