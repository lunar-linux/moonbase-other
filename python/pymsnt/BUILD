prepare_install &&

[ -d /usr/lib/pymsnt ] || install -d -m0755 /usr/lib/pymsnt &&
[ -d /var/spool/pymsnt ] || install -d -m0750 /var/spool/pymsnt &&
[ -d /etc/jabber ] || mkdir -p /etc/jabber &&

[ -f /etc/jabber/pymsnt.xml ] || install -m600 -o root -g root config-example.xml /etc/jabber/pymsnt.xml &&

cp -r {PyMSNt.py,src,data} /usr/lib/pymsnt/ &&

# A bit hackish to byte compile everything
cat <<EOF>> /tmp/$$-compileall.py
import compileall
import re
compileall.compile_dir('/usr/lib/pymsnt', rx=re.compile('/[.]svn'), force=True)
EOF

python2 /tmp/$$-compileall.py &&
rm -f /tmp/$$-compileall.py
