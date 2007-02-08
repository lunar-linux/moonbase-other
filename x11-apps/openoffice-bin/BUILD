(
  OO_INSTALL_DIR="${SOURCE_DIRECTORY}/RPMS"
  cd $OO_INSTALL_DIR			&&

  if [[ "$USE_DESKTOPINTEGRATION" = "y" ]]; then
    cd $OO_INSTALL_DIR/desktop-integration ; 
    INT_FILE=openoffice.org-freedesktop-menus-2.1-5.noarch ;
    rpm2cpio $INT_FILE.rpm > $INT_FILE.cpio ;
    cpio -idm < $INT_FILE.cpio &> /dev/null ;
    rm $OO_INSTALL_DIR/desktop-integration/usr/bin/soffice ;
    sedit "s/\/etc\/openoffice.org-2.1/\/opt\/lunar\/openoffice\/openoffice.org2.1/g" $OO_INSTALL_DIR/desktop-integration/usr/bin/openoffice.org-2.1 ;
    sedit "s/\/etc\/openoffice.org-2.1/\/opt\/lunar\/openoffice\/openoffice.org2.1/g" $OO_INSTALL_DIR/desktop-integration/usr/bin/openoffice.org-2.1-printeradmin ;
    install -m755 $OO_INSTALL_DIR/desktop-integration/usr/bin/openoffice.org-2.1 /usr/bin/ ;
    install -m755 $OO_INSTALL_DIR/desktop-integration/usr/bin/openoffice.org-2.1-printeradmin /usr/bin/ ;
    desktop_files="base calc draw impress math printeradmin writer" ;
    for i in $desktop_files; do
      ln -s /opt/lunar/openoffice/openoffice.org2.1/share/xdg/$i.desktop /usr/share/applications/$i.desktop
    done ;
#    cp -a "${OO_INSTALL_DIR}/desktop-integration/usr/share/icons" /usr/share ;
    install -m644 "${OO_INSTALL_DIR}/desktop-integration/usr/share/mime/packages/openoffice.org.xml" /usr/share/mime/packages/ ;
    update-mime-database /usr/share/mime/ ;
  fi &&


  cd $OO_INSTALL_DIR                                      &&

  rm -fr desktop-integration &&

  # Let the "magic" happen. Ugh, I hate rpm
  message "${MESSAGE_COLOR}Unpacking RPMs...${DEFAULT_COLOR}" &&
  for pack in ${OO_INSTALL_DIR}/*; do
    rpm2cpio $pack > `basename $pack .rpm`.cpio ;
  done &&

  # Now, lets get rid of the rpms
  rm -rf ${OO_INSTALL_DIR}/*.rpm	&&
  
  for pack in ${OO_INSTALL_DIR}/*; do
    cpio -idm < $pack &> /dev/null;
  done &&
  
  prepare_install &&
  message "${MESSAGE_COLOR}Installing OpenOffice ${VERSION}...${DEFAULT_COLOR}" &&
  cp -a "${OO_INSTALL_DIR}/opt/openoffice.org2.1" /opt/lunar/openoffice

) > $C_FIFO 2>&1
