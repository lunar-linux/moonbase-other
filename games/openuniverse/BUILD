(
  
  patch -p0 << EOF
--- src/ou.h	2002-09-03 14:13:04.000000000 +0200
+++ src/ou.h	2002-09-03 14:15:50.000000000 +0200
@@ -21,0 +22 @@
+#include <string.h>
--- src/comet.cpp	2002-09-03 14:19:59.000000000 +0200
+++ src/comet.cpp	2002-09-03 14:20:11.000000000 +0200
@@ -55 +55 @@
-#ifdef GL_EXT_point_parameters
+#ifdef GL_EXT_point_parameters_UNDEFINED
EOF

  ./configure  --prefix=/usr                \
               --bindir=/usr/games          \
	       --datadir=/usr/share/games   &&

  default_make
  
) > $C_FIFO 2>&1
