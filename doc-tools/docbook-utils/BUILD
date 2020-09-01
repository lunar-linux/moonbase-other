sedit 's:$(docdir):/usr/share/doc:' doc/HTML/Makefile.am &&
# Do not loopback (breaks docbook-utils build)
CENTRALIZED=/etc/sgml/catalog &&
install-catalog -r $CENTRALIZED /etc/sgml/catalog &&

autoreconf &&

OPTS+=" --sysconfdir=/etc --mandir=/usr/share/man"

mkdir -p /usr/share/doc/$MODULE/html &&

default_build &&

# Common alternative names
for doctype in 'html' 'ps' 'dvi' 'man' 'pdf' 'rtf' 'tex' 'texi' 'txt'; do
     ln -fsv "docbook2${doctype}" "/usr/bin/db2${doctype}"
     ln -fsv "jw.1.gz" "/usr/share/man/man1/db2${doctype}"
done

# db2html is not just a symlink, as it has to create the output directory
rm /usr/bin/db2html &&
install -p -m 755 "${SCRIPT_DIRECTORY}/db2html" /usr/bin/
