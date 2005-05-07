(
sedit "s:RC_DIR=/etc/rc.d:RC_DIR=/etc/init.d:" config.in
sedit "s/PRISM2_PLX=n/PRISM2_PLX=$PRISM2_PLX/" config.in
sedit "s/PRISM2_PCI=n/PRISM2_PCI=$PRISM2_PCI/" config.in
sedit "s/PRISM2_USB=n/PRISM2_USB=$PRISM2_USB/" config.in
sedit "s:/usr/local/man/man1:/usr/share/man/man1:" man/Makefile
make auto_config 	&&
make all		&&
prepare_install 	&&
make install
) > $C_FIFO 2>&1
