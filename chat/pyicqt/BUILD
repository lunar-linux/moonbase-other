(
    python_major=`installed_version Python | cut -d. -f1-2`
    python_dir="/usr/lib/python${python_major}/site-packages/pyicq-t"
 
    # Change pid location
    sedit 's;PyICQt.pid;/var/run/pyicqt.pid;' config_example.xml &&

    prepare_install &&

    if [ ! -d $python_dir ]; then
        mkdir -p $python_dir
    fi &&
    if [ ! -d /etc/jabber ]; then
        mkdir /etc/jabber
    fi &&
    if [ ! -f /etc/jabber/pyicqt.xml ]; then
        install -m600 config_example.xml /etc/jabber/pyicqt.xml
    fi &&
    cp -r {src,data,tools} ${python_dir} &&
    install -m755 PyICQt.py ${python_dir}/pyicqt.py &&
    
    # A bit hackish to byte compile everything
cat <<EOF>> /tmp/$$-compileall.py
import compileall
import re
compileall.compile_dir('$python_dir', rx=re.compile('/[.]svn'), force=True)
EOF
    
    python /tmp/$$-compileall.py &&
    rm -f /tmp/$$-compileall.py

) > $C_FIFO 2>&1
