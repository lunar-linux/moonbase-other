(

    # Fix pid
    sedit 's;PyMSNt.pid;/var/run/pymsnt.pid;' config-example.xml &&

    # Change spool directory
    sedit 's;.*<spooldir>.*;<spooldir>/var/spool/pymsnt</spooldir>;' config-example.xml &&

    # Fix MSN protocol version
    sedit 's;MSNP11 CVR0;MSNP11;' src/legacy/msn/msn.py &&

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
    
    python /tmp/$$-compileall.py &&
    rm -f /tmp/$$-compileall.py

) > $C_FIFO 2>&1
