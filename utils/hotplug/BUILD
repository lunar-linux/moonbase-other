(

  sedit "/for i in etc\/rc.d\/init.d*/d" Makefile
  patch -p0 <<EOF
--- etc/hotplug/net.agent	2001-09-20 02:14:00.000000000 +0200
+++ etc/hotplug/net.agent	2002-08-14 20:29:54.000000000 +0200
@@ -48 +48 @@
-		mesg "how do I bring interfaces up on this distro?"
+		/etc/init.d/network start \$INTERFACE
EOF

  make             &&
  prepare_install  &&
  make install     &&
  sleep 3          &&
  devoke_installwatch &&
  sleep 3 

) > $C_FIFO 2>&1
