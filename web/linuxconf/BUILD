(

  export RPM_BUILD_ROOT=
  make &&
  prepare_install
  patch -p0 <<EOF
--- conf.files/install/doinst.sh	2002-07-30 14:32:06.000000000 +0200
+++ conf.files/install/doinst.sh	2002-07-30 14:33:07.000000000 +0200
@@ -421,2 +421,2 @@
-echo You can uninstall linuxconf with the command
-echo "    " /install/uninstall_linuxconf.sh
+# echo You can uninstall linuxconf with the command
+# echo "    " /install/uninstall_linuxconf.sh
--- Makefile	2002-07-30 14:34:12.000000000 +0200
+++ Makefile	2002-07-30 14:35:45.000000000 +0200
@@ -85 +85 @@
-local_postinstall: install.dir
+local_postinstall:
@@ -89 +89 @@
-	@sh /install/doinst.sh
+	@sh conf.files/install/doinst.sh
EOF
  make install <<EOF
y
n
n
y
EOF

) > $C_FIFO 2>&1
