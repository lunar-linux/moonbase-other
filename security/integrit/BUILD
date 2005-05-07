(

   LDFLAGS=$LDFLAGS" -static"
   export GARBAGE=off
   bzcat $SCRIPT_DIRECTORY/root.conf.bz2 > examples/integrit.conf &&
   default_config                                                 &&
   make        || exit 1
   make utils  || exit 1
   prepare_install                                                &&
   make install                                                   &&
   mkdir -p /usr/share/doc/integrit/examples
   cp -a examples/* /usr/share/doc/integrit/examples
   mkdir -p /var/lib/integrit
   chown root.root /var/lib/integrit
   chmod -R 600 /var/lib/integrit


) > $C_FIFO 2>&1
   [ -s "/etc/integrit.conf" ] || 
   install -g 0 -o 0 -m 600 /usr/share/doc/integrit/examples/integrit.conf /etc
