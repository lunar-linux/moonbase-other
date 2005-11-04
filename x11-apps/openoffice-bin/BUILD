(
  OO_INSTALL_DIR="${SOURCE_DIRECTORY}/RPMS"
  cd $OO_INSTALL_DIR			&&

  # I don't know what do with those. Hints anybody?
  rm -rf desktop-integration		&&

  # Let the "magic" happen. Ugh, I hate rpm
  message "${MESSAGE_COLOR}Unpacking RPMs...${DEFAULT_COLOR}" &&
  for pack in ${OO_INSTALL_DIR}/*; do
    rpmunpack $pack;
  done &&

  # Now, lets get rid of the rpms
  rm -rf ${OO_INSTALL_DIR}/*.rpm	&&
  gunzip $OO_INSTALL_DIR/*		&&
  
  for pack in ${OO_INSTALL_DIR}/*; do
    cpio -idm < $pack &> /dev/null;
  done &&
  
  prepare_install &&
  message "${MESSAGE_COLOR}Installing OpenOffice ${VERSION}...${DEFAULT_COLOR}" &&
  cp -a "${OO_INSTALL_DIR}/opt/openoffice.org2.0" /opt/lunar/openoffice

) > $C_FIFO 2>&1
