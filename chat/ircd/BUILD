(

  patch -p0 <<EOF
--- configure	2002-08-06 20:15:28.000000000 +0200
+++ configure	2002-08-06 20:16:03.000000000 +0200
@@ -29 +29,2 @@
-      mkdir "\${rev}"
+      mkdir build
+      ln -s build "\${rev}"
EOF

  ./configure $OPTS &&
  cd build &&
  
patch -p0 <<EOF
--- Makefile	2002-08-06 20:23:33.000000000 +0200
+++ Makefile	2002-08-06 20:23:41.000000000 +0200
@@ -27 +27 @@
-prefix = /usr/local
+prefix = /usr
@@ -75 +75 @@
-client_man_dir = \${prefix}/man/man1
+client_man_dir = \${prefix}/share/man/man1
@@ -77 +77 @@
-conf_man_dir = \${prefix}/man/man5
+conf_man_dir = \${prefix}/share/man/man5
@@ -79 +79 @@
-server_man_dir = \${prefix}/man/man8
+server_man_dir = \${prefix}/share/man/man8
@@ -81 +81 @@
-ircd_conf_dir = \${prefix}/etc
+ircd_conf_dir = /etc
@@ -83 +83 @@
-ircd_var_dir = \${prefix}/var/run
+ircd_var_dir = /var/run
@@ -85 +85 @@
-ircd_log_dir = \${prefix}/var/log/ircd
+ircd_log_dir = /var/log/ircd
@@ -266 +265,0 @@
-	\$(INSTALL_DATA) ../doc/example.conf \$(ircd_conf_dir)
EOF

  make all &&
  prepare_install &&
  make install

) > $C_FIFO 2>&1
