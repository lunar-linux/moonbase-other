(

  ./configure $OPTS

  patch -p0 <<EOF
--- Makefile	2002-08-06 23:42:34.000000000 +0200
+++ Makefile	2002-08-06 23:51:04.000000000 +0200
@@ -26,1 +26,1 @@
-CFLAGS = -g -O2 -DNDEBUG
+CFLAGS = $CFLAGS -DNDEBUG
--- include/config.h	2002-08-06 23:42:34.000000000 +0200
+++ include/config.h	2002-08-06 23:51:04.000000000 +0200
@@ -103,10 +103,10 @@
-#define DPATH   "/usr/local/ircd/"
-#define SPATH   "/usr/local/ircd/ircd"
-#define CPATH   "ircd.conf"
-#define KPATH   "kline.conf"
-#define DLPATH  "kline.conf"
-#define MPATH   "ircd.motd"
-#define LPATH   "ircd.log"
-#define PPATH   "ircd.pid"
-#define HPATH   "opers.txt"
-#define OPATH   "opers.motd"
+#define DPATH   "/usr/bin/"
+#define SPATH   "/usr/sbin/ircd"
+#define CPATH   "/etc/irc/ircd.conf"
+#define KPATH   "/etc/irc/kline.conf"
+#define DLPATH  "/etc/irc/kline.conf"
+#define MPATH   "/etc/irc/ircd.motd"
+#define LPATH   "/var/log/irc/ircd.log"
+#define PPATH   "/var/run/ircd.pid"
+#define HPATH   "/etc/irc/opers.txt"
+#define OPATH   "/etc/irc/opers.motd"
@@ -211,2 +211,2 @@
-#define FNAME_USERLOG "/usr/local/ircd/users"
-#define FNAME_OPERLOG "/usr/local/ircd/opers"
+#define FNAME_USERLOG "/var/log/irc/users"
+#define FNAME_OPERLOG "/var/log/irc/opers"
--- tools/install_ircd	2002-08-07 00:02:19.000000000 +0200
+++ tools/install_ircd	2002-08-07 00:02:52.000000000 +0200
@@ -156,3 +156,3 @@
-dir_make \${DPATH}man8
-echo installing ircd.8 as \${DPATH}man8/ircd.8
-\$INSTALL_SH -c doc/ircd.8 \${DPATH}man8/ircd.8
+dir_make /usr/share/man/man8
+echo installing ircd.8 as /usr/share/man/man8/ircd.8
+\$INSTALL_SH -c doc/ircd.8 /usr/share/man/man8/ircd.8
EOF
  
  make            &&
  prepare_install &&
  make install

) > $C_FIFO 2>&1
