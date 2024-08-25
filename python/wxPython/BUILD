sed -i '\|sip/siplib/bool\.cpp|d' wscript &&

#Rebuild some bundled sip files
python build.py sip &&

SIP=/usr/bin/sip python build.py --nodoc sip build --release &&

prepare_install
python build.py install --destdir=/
