(

  # I'll probably go to hell for this hack, but...who cares.
  TEMPLINKS=""									&&
  # Check for mozilla first, do nothing if it's installed, since the
  # pkg-config files should be there already...
  if ! module_installed mozilla; then
    # Check for firefox, symlink the files if they dont already exist
    if module_installed firefox; then
      for PC in /usr/lib/pkgconfig/firefox-*.pc; do
        # s/firefox/mozilla/
        SUB="/usr/lib/pkgconfig/mozilla-`echo $PC | cut -d- -f 2`"
        # This should catch any previous symlinks and overwrite them
        # in the event the user hit ctrl+c in a previous lin
        if [ ! -f "$SUB" ]; then
          ln -fs $PC $SUB
          # Record this for removal later...
          TEMPLINKS="$TEMPLINKS $SUB"
        fi
      done
    fi
  fi										&&
  # </magic>

# You _will_ find firefox! I command it!
cat << EOF | patch -p0								&&
--- src/liferea	2004-12-08 16:17:51.000000000 -0600
+++ src/liferea	2004-12-08 16:18:09.000000000 -0600
@@ -42,0 +43 @@
+look_for_mozilla "/usr/lib/firefox*/chrome/comm.jar"
EOF

# added this hack to fix liferea-1.0.14, Makefile fails in /doc. This should be removed later!!!
  sedit "s/SUBDIRS = doc/SUBDIRS = /" Makefile.am Makefile.in                   &&
  default_build									&&

  # Magic clean up.
  for MYLINK in $TEMPLINKS; do
    rm -f $MYLINK
  done

) > $C_FIFO 2>&1
