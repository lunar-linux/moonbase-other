(
  # the Makefile's path for the man page is hardcoded... it does 
  # not accept the configure option. We fix this here:
  sedit "s/usr\/man\/man1/usr\/share\/man\/man1/" Makefile.in &&

  (
  patch -p0 <<EOF
--- netwatch.c	2001-02-26 04:27:07.000000000 +0100
+++ netwatch.c	2002-07-08 00:50:59.000000000 +0200
@@ -72,2 +72,3 @@
 */
+#include <time.h>
 #include <sys/wait.h>
EOF
  ) &&

  default_build
 
) > $C_FIFO 2>&1
