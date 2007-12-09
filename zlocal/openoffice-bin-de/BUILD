(
  OO_INSTALL_DIR="${SOURCE_DIRECTORY}/RPMS"
  OO_DESK_DIR="${SOURCE_DIRECTORY}/desktop-integration/usr"
  OO_DIR="/opt/lunar/openoffice-de"
  cd $OO_INSTALL_DIR			&&

  mv ${OO_INSTALL_DIR}/desktop-integration ${SOURCE_DIRECTORY}/ &&

  cd ${SOURCE_DIRECTORY}/desktop-integration &&

  INT_FILE=openoffice.org-freedesktop-menus-2.3-9238.noarch

  rpm2cpio $INT_FILE.rpm > $INT_FILE.cpio &&
  cpio -idm < $INT_FILE.cpio &&

  sedit "s/\/etc\/openoffice.org2.3/\/opt\/lunar\/openoffice-de/g" ${OO_DESK_DIR}/bin/openoffice.org2.3 &&
  sedit "s/\/etc\/openoffice.org2.3/\/opt\/lunar\/openoffice-de/g" ${OO_DESK_DIR}/bin/openoffice.org2.3-printeradmin &&

  cd $OO_INSTALL_DIR &&

  rm -rf desktop-integration &&

  # Let the "magic" happen. Ugh, I hate rpm
  message "${MESSAGE_COLOR}Unpacking RPMs...${DEFAULT_COLOR}" &&

  for pack in ${OO_INSTALL_DIR}/*; do
    rpm2cpio $pack > `basename $pack .rpm`.cpio
  done  &> /dev/null

  # Now, lets get rid of the rpms
  rm -rf ${OO_INSTALL_DIR}/*.rpm	&&
  
  for pack in ${OO_INSTALL_DIR}/*; do
    cpio -idm < $pack &> /dev/null;
  done &&

  rm -rf /opt/lunar/openoffice-de &&
  
  prepare_install &&

  mkdir -p /opt/lunar &&

  message "${MESSAGE_COLOR}Installing OpenOffice ${VERSION}...${DEFAULT_COLOR}" &&
  cp -a "${OO_INSTALL_DIR}/opt/openoffice.org${MAJOR}" /opt/lunar/openoffice-de &&
  chown -R root:root /opt/lunar/openoffice-de &&

  install -m755 ${OO_DESK_DIR}/bin/openoffice.org2.3 \
                ${OO_DESK_DIR}/bin/openoffice.org2.3-printeradmin /usr/bin/ &&

  # Install icons for the .desktop files
  mkdir -p -m0755 /usr/share/icons/{gnome,hicolor} &&
  cd ${OO_DESK_DIR}/share/icons &&
  cp -r gnome/*x* /usr/share/icons/gnome &&
  cp -r hicolor/*x* /usr/share/icons/hicolor &&
  gtk-update-icon-cache --force /usr/share/icons/hicolor &&

  install -m644 "${OO_DESK_DIR}/share/mime/packages/openoffice.org.xml" /usr/share/mime/packages/ &&
  
  update-mime-database /usr/share/mime/ &> /dev/null &&

  DESKTOP_FILES="base calc draw impress math printeradmin writer" 

  for FILE in ${DESKTOP_FILES} ; do
    ln -sf ${OO_DIR}/share/xdg/${FILE}.desktop /usr/share/applications/${FILE}.desktop
  done

) > $C_FIFO 2>&1
