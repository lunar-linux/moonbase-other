(

  export CWPROOT
  cd $CWPROOT/src

  patch -p0 <<EOF
--- Makefile.config	2002-07-15 15:08:41.000000000 +0200
+++ Makefile.config	2002-07-15 15:07:51.000000000 +0200
@@ -91 +91 @@
-ENDIANFLAG = -DCWP_BIG_ENDIAN
+#ENDIANFLAG = -DCWP_BIG_ENDIAN
@@ -94 +94 @@
-#ENDIANFLAG = -DCWP_LITTLE_ENDIAN
+ENDIANFLAG = -DCWP_LITTLE_ENDIAN
@@ -119 +119 @@
-OPTC = -O 
+#OPTC = -O 
@@ -122 +122 @@
-#OPTC = -O3 -Wall -ansi -pedantic -D_POSIX_SOURCE
+OPTC = -O3 -Wall
@@ -206 +206 @@
-#include \$(CWPROOT)/src/Rules/gnumake.rules
+include \$(CWPROOT)/src/Rules/gnumake.rules
@@ -234 +234 @@
-#LD_LIBRARY_PATH += \$(CWPROOT)/lib:/usr/local/lesstif/lib
+LD_LIBRARY_PATH += \$(CWPROOT)/lib:/usr/lib
@@ -352 +352 @@
-IX11 = /usr/local/include
+#IX11 = /usr/local/include
@@ -355 +355 @@
-LX11 = /usr/local/lib
+#LX11 = /usr/local/lib
@@ -373 +373 @@
-#IX11 = /usr/X11R6/include
+IX11 = /usr/X11R6/include
@@ -376 +376 @@
-#LX11 = /usr/X11R6/lib
+LX11 = /usr/X11R6/lib
@@ -387 +387 @@
-IMOTIF = /usr/local/include
+#IMOTIF = /usr/local/include
@@ -390 +390 @@
-LMOTIF = /usr/local/lib
+#LMOTIF = /usr/local/lib
@@ -394 +394 @@
-IMOTIF = /usr/local/lesstif/include
+#IMOTIF = /usr/local/lesstif/include
@@ -397 +397 @@
-LMOTIF = /usr/local/lesstif/lib
+#LMOTIF = /usr/local/lesstif/lib
@@ -401 +401 @@
-#IMOTIF = /usr/X11R6/Lesstif/Motif2.0/include
+IMOTIF = /usr/X11R6/include
@@ -404 +404 @@
-#LMOTIF = /usr/X11R6/Lesstif/Motif2.0/lib
+LMOTIF = /usr/X11R6/lib
@@ -416 +416 @@
-IGLUT = /usr/local/include
+#IGLUT = /usr/local/include
@@ -419 +419 @@
-LGLUT = /usr/local/lib
+#LGLUT = /usr/local/lib
@@ -431 +431 @@
-#IGLUT = /usr/X11R6/include
+IGLUT = /usr/X11R6/include
@@ -434 +434 @@
-#LGLUT = /usr/X11R6/lib
+LGLUT = /usr/X11R6/lib
EOF

  make install &&
  ( module_installed xfree86 && make xtinstall ) &&
  # make mglinstall &&
  make utils &&
  ( module_installed xfree86 && make xminstall ) &&
  make sfinstall &&

  # Now this is a dumb install ;-)
  mkdir -p /opt/lunar/su &&
  cp -R $CWPROOT/bin $CWPROOT/lib $CWPROOT/include /opt/lunar/su/

) > $C_FIFO 2>&1
