(

  patch -p0 << EOF
--- programs/winetest/winetest.c	2002-06-27 17:14:08.000000000 +0200
+++ programs/winetest/winetest.c	2002-06-27 17:15:23.000000000 +0200
@@ -155,6 +155,7 @@
 static void xs_init(void)
 {
     extern void boot_wine(CV *cv);
+    extern my_perl;
     newXS("wine::bootstrap", boot_wine,__FILE__);
 }
EOF

  CF=$CFLAGS &&
  unset CFLAGS CXXFLAGS &&

  ./configure --build=i686-pc-linux-gnu --prefix=/usr --sysconfdir=/etc --localstatedir=/var --infodir=/usr/share/info --mandir=/usr/share/man &&
  
  find . -type f -name 'Makefile' -print | while read i ; do
    echo "Patching $i"
    sedit "s:^CFLAGS    = -g -O2 -Wall -mpreferred-stack-boundary=2 \$(EXTRACFLAGS):CFLAGS    = -g -Wall $CF \$(EXTRACFLAGS):" $i 
  done

  make depend               &&
  make                      &&
  prepare_install           &&
  make install

) > $C_FIFO 2>&1
