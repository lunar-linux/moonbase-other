(

PLUGINS="/usr/share/gkrellm/plugins"                                 &&

<<EOF patch -p0                                                      &&
--- Makefile     Fri Feb  1 13:35:41 2002
+++ Makefile     Fri Feb  1 13:35:37 2002
@@ -26,4 +26,4 @@
 # %.o: %.c
 
 install: gkrellmoon.so
-	sudo install -c -s -m 644 gkrellmoon.so \$(INSTALLDIR)
+	install -c -s -m 644 gkrellmoon.so \$(INSTALLDIR)
EOF

if [ ! -d $PLUGINS ]; then
   mkdir -p $PLUGINS
fi                                                                   &&             

make                                                                 &&
prepare_install                                                      &&
make  install

) > $C_FIFO 2>&1

