(
    python_major=`installed_version Python | cut -d. -f1-2`
    python_dir="/usr/lib/python${python_major}/site-packages/pymsnt"

    # Fix pid
    sedit 's;PyMSNt.pid;/var/run/pymsnt.pid;' config-example.xml &&
    # Stupid tarballs
    find $SOURCE_DIRECTORY/ -type d -name .svn | xargs rm -rf &&
    prepare_install &&

    if [ ! -d $python_dir ]; then
        mkdir -p $python_dir
    fi &&
    if [ ! -d /etc/jabber ]; then
        mkdir /etc/jabber
    fi &&
    if [ ! -f /etc/jabber/pymsnt.xml ]; then
        install -m600 config-example.xml /etc/jabber/pymsnt.xml
    fi &&

    cp -r {src,data} ${python_dir} &&
    find $python_dir -type d | xargs chmod 755 &&
    find $python_dir -type f | xargs chmod 644 &&
    install -m755 PyMSNt.py ${python_dir}/pymsnt.py &&
    
    # A bit hackish to byte compile everything
cat <<EOF>> /tmp/$$-compileall.py
import compileall
import re
compileall.compile_dir('$python_dir', rx=re.compile('/[.]svn'), force=True)
EOF
    
    python /tmp/$$-compileall.py &&
    rm -f /tmp/$$-compileall.py

) > $C_FIFO 2>&1
