(

   sedit "s/default:$/default:;/" libgda/gda-util.c libgda/gda-value.c \
          libsql/lexer.c providers/mysql/gda-mysql-provider.c \
          providers/oracle/gda-oracle-provider.c \
          providers/oracle/utils.c \
          providers/sqlite/gda-sqlite-provider.c &&

   sedit "s/default :$/default :;/" providers/ldap/gda-ldap-provider.c \
          providers/mdb/gda-mdb-provider.c providers/mysql/gda-mysql-provider.c \
          providers/oracle/gda-oracle-provider.c \
          providers/xml/gda-xml-provider.c &&

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
