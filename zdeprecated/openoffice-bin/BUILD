(
  OO_INSTALL_DIR="${SOURCE_DIRECTORY}/RPMS"
  OO_DESK_DIR="${SOURCE_DIRECTORY}/desktop-integration/usr"
  OO_DIR="/opt/lunar/openoffice/openoffice.org3"

  cd $OO_INSTALL_DIR  &&

  if [ "$USE_DESKTOPINTEGRATION" = "y" ] ; then

    mv ${OO_INSTALL_DIR}/desktop-integration ${SOURCE_DIRECTORY} &&
    cd ${SOURCE_DIRECTORY}/desktop-integration/ &&

    INT_FILE=openoffice.org3.3-freedesktop-menus-3.3-9556.noarch &&

    rpm2cpio $INT_FILE.rpm > $INT_FILE.cpio &&
    cpio -idm < $INT_FILE.cpio &&

    sedit "s|/etc/openoffice.org3|$OO_DIR|g" ${OO_DESK_DIR}/bin/openoffice.org3 &&
    sedit "s|/etc/openoffice.org3|$OO_DIR|g" ${OO_DESK_DIR}/bin/openoffice.org3-printeradmin || exit 1
  fi  &&

  cd $OO_INSTALL_DIR &&
  rm -rf desktop-integration &&

  # Let the magic happen. Ugh, I hate rpm
  message "${MESSAGE_COLOR}Unpacking RPMs...${DEFAULT_COLOR}" &&
  for pack in ${OO_INSTALL_DIR}/*; do
    rpm2cpio $pack > `basename $pack .rpm`.cpio || exit 1
  done  &> /dev/null

  # Now, lets get rid of the rpms
  rm -rf ${OO_INSTALL_DIR}/*.rpm &&

  for pack in ${OO_INSTALL_DIR}/*; do
    cpio -idm < $pack &> /dev/null || exit 1
  done &&

  prepare_install  &&
  message "${MESSAGE_COLOR}Installing OpenOffice ${VERSION}...${DEFAULT_COLOR}"  &&
  mkdir -p $MODULE_PREFIX/openoffice  &&
  cp -a "${OO_INSTALL_DIR}/opt/openoffice.org3" /opt/lunar/openoffice/  &&
  cp -a "${OO_INSTALL_DIR}/opt/openoffice.org"  /opt/lunar/openoffice   &&

  #Added this force symlink creation at sofar's request
  cd /usr/bin &&
  ln -sf ${OO_DIR}/program/soffice soffice &&
  ln -sf ${OO_DIR}/program/scalc   scalc   &&
  ln -sf ${OO_DIR}/program/swriter swriter &&

  if [ "$USE_DESKTOPINTEGRATION" = "y" ] ; then
    sedit 's:/opt/:/opt/lunar/openoffice/:g' \
          ${OO_DESK_DIR}/bin/openoffice.org3 &&
    install -m755 ${OO_DESK_DIR}/bin/openoffice.org3 \
                  ${OO_DESK_DIR}/bin/openoffice.org3-printeradmin /usr/bin/ &&

    # Install icons for the .desktop files
    mkdir -p -m0755 /usr/share/icons/{gnome,hicolor} &&
    cd ${OO_DESK_DIR}/share/icons &&
    cp -r gnome/*x* /usr/share/icons/gnome &&
    cp -r hicolor/*x* /usr/share/icons/hicolor &&
    gtk-update-icon-cache --force /usr/share/icons/hicolor &&

    install -m644 "${OO_DESK_DIR}/share/mime/packages/openoffice.org.xml" /usr/share/mime/packages/ &&
    update-mime-database /usr/share/mime/ &> /dev/null &&

    DESKTOP_FILES="base calc draw impress math printeradmin writer" &&

    for FILE in ${DESKTOP_FILES} ; do
      ln -s ${OO_DIR}/share/xdg/${FILE}.desktop \
        /usr/share/applications/${FILE}.desktop || exit 1
    done
  fi || exit 1

) > $C_FIFO 2>&1
