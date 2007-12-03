(

    add_priv_user pykota:pykota -s /bin/false -d /etc/pykota &&

    python setup.py build &&
    prepare_install &&
    python setup.py install &&

    ln -sf /usr/share/pykota/cupspykota $(cups-config --serverbin)/backend/cupspykota &&

    if [ ! -d /etc/pykota ]; then
        mkdir -p /etc/pykota
    fi &&
    
    gather_docs initscripts
    
) > $C_FIFO 2>&1
