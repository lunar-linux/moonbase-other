make &&

prepare_install &&

make INSTALL_DIR=/usr/bin \
     INSTALL_LIB=/usr/lib \
     INSTALL_INC=/usr/include \
     INSTALL_MAN=/usr/share/man \
     install &&

ldconfig &&

# Prevent gather_docs from wrongly identifying C files as docs
rm -f sample_*.c &&
gather_docs HOTPLUG.txt PCMCIA.txt
