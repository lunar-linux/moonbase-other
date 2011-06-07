(

  OO_INSTALL_DIR="${SOURCE_DIRECTORY}/RPMS"
  OO_DESK_DIR="${SOURCE_DIRECTORY}/desktop-integration/usr"
  OO_DIR="/opt/lunar/libreoffice"

  cd $OO_INSTALL_DIR  &&

  if [ "$USE_DESKTOPINTEGRATION" = "y" ] ; then

    mv ${OO_INSTALL_DIR}/desktop-integration ${SOURCE_DIRECTORY} &&
    cd ${SOURCE_DIRECTORY}/desktop-integration/ &&

    INT_FILE=libreoffice3.3-freedesktop-menus-3.3-202.noarch &&
 
    rpm2cpio $INT_FILE.rpm > $INT_FILE.cpio &&
    cpio -idm < $INT_FILE.cpio &&

    sedit "s|/etc/libreoffice|$OO_DIR|g" ${OO_DESK_DIR}/bin/libreoffice &&
    sedit "s|/etc/libreoffice|$OO_DIR|g" ${OO_DESK_DIR}/bin/libreoffice-printeradmin || exit 1
  fi  &&

  cd $OO_INSTALL_DIR &&
  rm -rf desktop-integration &&

  # not sure what this rpm is for, but its not there in 32bit OO, so I removed it
  rm -rf userland &&

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
  message "${MESSAGE_COLOR}Installing LibreOffice ${VERSION}...${DEFAULT_COLOR}"  &&
  mkdir -p $MODULE_PREFIX/libreoffice  &&
  chown -R root:root "${OO_INSTALL_DIR}/opt" &&
  # symlinks are not copied correctly
  rm "${OO_INSTALL_DIR}/opt/libreoffice/basis-link" &&
  rm "${OO_INSTALL_DIR}/opt/libreoffice/ure/bin/uno" &&
  rm "${OO_INSTALL_DIR}/opt/libreoffice/ure/bin/regcomp" &&
  rm "${OO_INSTALL_DIR}/opt/libreoffice/basis3.3/program/libicuuc.so.40" &&
  rm "${OO_INSTALL_DIR}/opt/libreoffice/basis3.3/program/libicui18n.so.40" &&
  #cp -a "${OO_INSTALL_DIR}/opt/libreoffice" /opt/lunar/libreoffice/  &&
  cp -R "${OO_INSTALL_DIR}/opt/libreoffice" /opt/lunar/libreoffice/  &&
  chown -R root /opt/lunar/libreoffice &&
  chgrp -R root /opt/lunar/libreoffice &&
  
  # create the symlinks correctly
  cd /opt/lunar/libreoffice &&
  ln -sf libreoffice/basis3.3 basis-link &&
  cd /opt/lunar/libreoffice/ure/bin &&
  ln -sf startup.sh uno &&
  ln -sf startup.sh regcomp &&
  cd /opt/lunar/libreoffice/basis3.3/program &&
  ln -sf /opt/lunar/libreoffice/basis3.3/program/libicuuc.so.40.1 /opt/lunar/libreoffice/basis3.3/program/libicuuc.so.40 &&
  ln -sf /opt/lunar/libreoffice/basis3.3/program/libicui18n.so.40.1 /opt/lunar/libreoffice/basis3.3/program/libicui18n.so.40 &&
  ln -sf /opt/lunar/libreoffice/libreoffice/basis3.3/program/libicuuc.so.40.1 /opt/lunar/libreoffice/libreoffice/basis3.3/program/libicuuc.so.40 &&
  ln -sf /opt/lunar/libreoffice/libreoffice/basis3.3/program/libicui18n.so.40.1 /opt/lunar/libreoffice/libreoffice/basis3.3/program/libicui18n.so.40 &&

  #Added this force symlink creation at sofar's request
  cd /usr/bin &&
  ln -sf ${OO_DIR}/program/soffice soffice &&
  ln -sf ${OO_DIR}/program/scalc   scalc   &&
  ln -sf ${OO_DIR}/program/swriter swriter &&
  ln -sf ${OO_DIR}/program/swriter simpress &&

  if [ "$USE_DESKTOPINTEGRATION" = "y" ] ; then
    sedit 's:/opt/:/opt/lunar/libreoffice/:g' \
          ${OO_DESK_DIR}/bin/libreoffice &&
    install -m755 ${OO_DESK_DIR}/bin/libreoffice \
                  ${OO_DESK_DIR}/bin/libreoffice-printeradmin /usr/bin/ &&

    # Install icons for the .desktop files
    mkdir -p -m0755 /usr/share/icons/{gnome,hicolor} &&
    cd ${OO_DESK_DIR}/share/icons &&
    cp -r gnome/*x* /usr/share/icons/gnome &&
    cp -r hicolor/*x* /usr/share/icons/hicolor &&
    gtk-update-icon-cache --force /usr/share/icons/hicolor &&

    install -m644 "${OO_DESK_DIR}/share/mime/packages/libreoffice.xml" /usr/share/mime/packages/ &&
    update-mime-database /usr/share/mime/ &> /dev/null &&

    DESKTOP_FILES="base calc draw impress math printeradmin writer" &&

    for FILE in ${DESKTOP_FILES} ; do
      ln -s ${OO_DIR}/share/xdg/${FILE}.desktop \
        /usr/share/applications/${FILE}.desktop || exit 1
    done
  fi || exit 1

) > $C_FIFO 2>&1
