(
   export AMAKE=/usr/share/automake
   export PLUGINDIR=$SOURCE_DIRECTORY/plugins
   #God I hate when devs hard link autotool crap to their projects 
   ln -sf $AMAKE/config.guess &&
   ln -sf $AMAKE/config.sub config.sub  &&
   ln -sf $AMAKE/depcomp depcomp &&
   ln -sf $AMAKE/install-sh install-sh &&
   ln -sf $AMAKE/missing missing  &&
   ln -sf $AMAKE/mkinstalldirs mkinstalldirs &&
 
   ./configure  --prefix=${GNOME210_PREFIX:-/usr}  \
                --build=$BUILD                    \
                --sysconfdir=/etc                 \
                --localstatedir=/var              \
                --infodir=${GNOME210_PREFIX:-/usr}/share/info \
                --mandir=${GNOME210_PREFIX:-/usr}/share/man   \
                $OPTS                             &&
    default_make                                  &&

    cd $PLUGINDIR/backup_plugin                              &&
    ./configure  --prefix=${GNOME210_PREFIX:-/usr}  \
                --build=$BUILD                    \
                --sysconfdir=/etc                 \
                --localstatedir=/var              \
                --infodir=${GNOME210_PREFIX:-/usr}/share/info \
                --mandir=${GNOME210_PREFIX:-/usr}/share/man   \
                $OPTS                             &&
    default_make                                  &&

if module_installed evolution; then  
     cd $PLUGINDIR/evolution2_sync                 
     ln -sf $AMAKE/INSTALL INSTALL             
     ./configure  --prefix=${GNOME210_PREFIX:-/usr}  \
                --build=$BUILD                    \
                --sysconfdir=/etc                 \
                --localstatedir=/var              \
                --infodir=${GNOME210_PREFIX:-/usr}/share/info \
                --mandir=${GNOME210_PREFIX:-/usr}/share/man   \
                $OPTS                             
    default_make                                  
fi    

if module_installed bluez-libs; then
      cd $PLUGINDIR/irmc_sync                     
      ln -sf $AMAKE/INSTALL INSTALL             
     ./configure  --prefix=${GNOME210_PREFIX:-/usr}  \
                --build=$BUILD                    \
                --sysconfdir=/etc                 \
                --localstatedir=/var              \
                --infodir=${GNOME210_PREFIX:-/usr}/share/info \
                --mandir=${GNOME210_PREFIX:-/usr}/share/man   \
                $OPTS                             
    default_make                                  
fi   

if module_installed openldap; then
      cd $PLUGINDIR/ldap_plugin                   
     ./configure --prefix=${GNOME210_PREFIX:-/usr}  \
                --build=$BUILD                     \
                --sysconfdir=/etc                 \
                --localstatedir=/var              \
                --infodir=${GNOME210_PREFIX:-/usr}/share/info \
                --mandir=${GNOME210_PREFIX:-/usr}/share/man   \
                $OPTS                             
    default_make                                 
fi   

    cd $PLUGINDIR/palm_sync                       &&
    ./configure  --prefix=${GNOME210_PREFIX:-/usr} \
                --build=$BUILD                    \
                --sysconfdir=/etc                 \
                --localstatedir=/var              \
                --infodir=${GNOME210_PREFIX:-/usr}/share/info \
                --mandir=${GNOME210_PREFIX:-/usr}/share/man   \
                $OPTS                             &&         
    default_make                                  && 

    cd $PLUGINDIR/syncml_plugin                    &&
    ./configure  --prefix=${GNOME210_PREFIX:-/usr} \
                --build=$BUILD                    \
                --sysconfdir=/etc                 \
                --localstatedir=/var              \
                --infodir=${GNOME210_PREFIX:-/usr}/share/info \
                --mandir=${GNOME210_PREFIX:-/usr}/share/man   \
                $OPTS                             &&
    default_make                                  &&

if module_installed expat; then
    cd $PLUGINDIR/opie_sync                     
    ln -sf $AMAKE/INSTALL INSTALL              
    ./configure  --prefix=${GNOME210_PREFIX:-/usr} \
                --build=$BUILD                    \
                --sysconfdir=/etc                 \
                --localstatedir=/var              \
                --infodir=${GNOME210_PREFIX:-/usr}/share/info \
                --mandir=${GNOME210_PREFIX:-/usr}/share/man   \
                $OPTS                             
    default_make                                  
fi 


 
) > $C_FIFO 2>&1

