[ -s /etc/httpsd/httpd.conf ] && 
   cp /etc/httpsd/httpd.conf /etc/httpsd/httpd.conf.`date +%Y%m%d`

[ -s /etc/httpd/httpd.conf ] && 
   cp /etc/httpd/httpd.conf /etc/httpd/httpd.conf.`date +%Y%m%d`

(
  if [ "$IMAP" == "y" ]; then
     cd $SOURCE_DIRECTORY
     tar zxf $SOURCE_CACHE/$SOURCE2
     cd imap-${IMAP_VERSION}
     make slx
     cd ..
     OPTS="$OPTS --with-imap=imap-${IMAP_VERSION}"
  fi

  if module_installed apache2 ; then
     OPTS="$OPTS --with-apxs2=/usr/sbin/apxs"
     patch -p0 <<EOF
--- sapi/apache2filter/php_functions.c	2002-07-12 12:56:43.000000000 +0200
+++ sapi/apache2filter/php_functions.c	2002-07-12 12:58:42.000000000 +0200
@@ -93 +93 @@
-#if !MODULE_MAGIC_AT_LEAST(20020506,0)
+#if !AP_MODULE_MAGIC_AT_LEAST(20020506,0)
--- sapi/apache2filter/sapi_apache2.c	2002-08-26 19:56:53.000000000 +0200
+++ sapi/apache2filter/sapi_apache2.c	2002-08-26 19:58:43.000000000 +0200
@@ -534,2 +534,2 @@
-	ap_register_output_filter("PHP", php_output_filter, AP_FTYPE_RESOURCE);
-	ap_register_input_filter("PHP", php_input_filter, AP_FTYPE_RESOURCE);
+	ap_register_output_filter("PHP", php_output_filter, NULL, AP_FTYPE_RESOURCE);
+	ap_register_input_filter("PHP", php_input_filter, NULL, AP_FTYPE_RESOURCE);
EOF
  fi

set -x  

  ./configure  --prefix=/usr                 \
               --sysconfdir=/etc             \
               --with-config-file-path=/etc  \
               $OPTS                         && 
set +x &&               
  make                                       &&
  prepare_install                            &&
  make    install 



) > $C_FIFO 2>&1 &&

(

  [  -e /etc/php.ini  ] ||  cp  php.ini-dist  /etc/php.ini

  case  $REGGLOBALS  in
    y|Y)
      sedit  "s/register_globals = Off/register_globals = On/"  /etc/php.ini
      ;;
      *) true
      ;;
  esac

)
