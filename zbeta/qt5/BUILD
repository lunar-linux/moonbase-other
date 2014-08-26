
  if [[ $LICENSE_TYPE == "y" ]] ; then
    LICENSE_TYPE="-opensource"
     else
    LICENSE_TYPE="-commercial"
  fi &&

  sedit "s/-O2/$CFLAGS/" qtbase/mkspecs/common/gcc-base.conf &&
  sed -i "/^QMAKE_LFLAGS\s/s|+=|+= ${LDFLAGS}|g" qtbase/mkspecs/common/gcc-base.conf &&

#  Cannot find our /usr/bin/ls
  sedit "s:/bin/ls:/usr/bin/ls:g" qtbase/src/corelib/global/global.pri &&

# Making accessibility a hard option, disabling this will break QStyle and may break other internal parts of Qt and
# create a source incompatible version which is unsupported. Why bother making it a switch if that is the case.
# Using no-gtkstyle, enabled currently tanks the make.
  OPTS+=" -release -accessibility -gui -no-gtkstyle -reduce-relocations" &&

  ./configure  -confirm-license "${LICENSE_TYPE}"                            \
               -prefix "${MODULE_PREFIX}"                                    \
               -sysconfdir "/etc/xdg"                                        \
               -bindir "${MODULE_PREFIX}/lib/$MODULE/bin"                    \
               -libdir "${MODULE_PREFIX}/lib/$MODULE"                        \
               -archdatadir "${MODULE_PREFIX}/lib/$MODULE"                   \
               -plugindir "${MODULE_PREFIX}/lib/$MODULE/plugins"             \
               -headerdir "${MODULE_PREFIX}/include/$MODULE"                 \
               -datadir "${MODULE_PREFIX}/share/$MODULE"                     \
               -docdir "${MODULE_PREFIX}/share/doc/$MODULE"                  \
               -examplesdir "${MODULE_PREFIX}/share/doc/$MODULE"/examples    \
               -translationdir "${MODULE_PREFIX}/share/$MODULE"/translations \
               $OPTS                                                         &&

  default_make &&

  install -v -Dm644 qttools/src/assistant/assistant/images/assistant-128.png /usr/share/pixmaps/assistant-qt5.png &&
  install -v -Dm644 qttools/src/designer/src/designer/images/designer.png /usr/share/pixmaps/designer-qt5.png  &&
  install -v -Dm644 qttools/src/linguist/linguist/images/icons/linguist-128-32.png /usr/share/pixmaps/linguist-qt5.png  &&
  install -v -Dm644 qttools/src/qdbus/qdbusviewer/images/qdbusviewer-128.png /usr/share/pixmaps/qdbusviewer-qt5.png &&
 
# It wants to point moc_location and uic_location to ${prefix}/src/qt-everywhere-opensource-src-5.3.1/bin
# and after much fiddling cannot get it to point them to /usr/bin. So lets just sedit these rascals.
  for i in `ls /usr/lib/$MODULE/pkgconfig/Qt5*.pc` ; do sed -i "s:/usr/src/qt-everywhere-opensource-src-$VERSION:/usr:" $i ; done &&
# Like for moc and uic, the same needs doing for the *.prl files.
  find /usr/lib/$MODULE -type f -name '*Qt5*.prl' -exec sed -i -e '/^QMAKE_PRL_BUILD_DIR/d;s/\(QMAKE_PRL_LIBS =\).*/\1/' {} \; &&
  find /usr/lib/$MODULE -type f -name '*.prl' -exec sed -i -e '/^QMAKE_PRL_BUILD_DIR/d;s/\(QMAKE_PRL_LIBS =\).*/\1/' {} \; &&

# Remove references to the build directory from installed files 
  sed -e "s:$PWD/qtbase:/usr/lib/qt5:g" -i /usr/lib/qt5/mkspecs/modules/qt_lib_bootstrap_private.pri &&
  find /usr/lib/$MODULE/lib{qgsttools_p,Qt5*}.prl -exec sed -i -r '/^QMAKE_PRL_BUILD_DIR/d;s/(QMAKE_PRL_LIBS =).*/\1/' {} \; &&
  find /usr/lib/$MODULE/lib{qgsttools_p,Qt5*}.prl -exec sed -i -r '/^QMAKE_PRL_BUILD_DIR/d;s/(QMAKE_PRL_LIBS =).*/\1/' {} \; &&


  cat > ${MODULE}-designer.desktop << EOF  &&
[Desktop Entry]
Type=Application
Name=Qt5 Designer
Comment=Design GUIs for Qt5 applications
Exec=${MODULE_PREFIX}/bin/designer
Icon=${MODULE_PREFIX}/share/pixmaps/designer-qt5.png
Categories=Qt;Development;
Terminal=false
EOF
  install -D -m644 ${MODULE}-designer.desktop ${MODULE_PREFIX}/share/applications/${MODULE}-designer.desktop 

  cat > ${MODULE}-assistant.desktop << EOF  &&
[Desktop Entry]
Type=Application
Name=Qt5 Assistant
Comment=Shows Qt5 documentation and examples
Exec=${MODULE_PREFIX}/bin/assistant
Icon=${MODULE_PREFIX}/share/pixmaps/assistant-qt5.png
Categories=Qt;Development;Documentation;
Terminal=false
EOF
  install -D -m644 ${MODULE}-assistant.desktop ${MODULE_PREFIX}/share/applications/${MODULE}-assistant.desktop

  cat > ${MODULE}-qtconfig.desktop << EOF  &&
[Desktop Entry]
Name=Qt5 QDbusViewer 
GenericName=D-Bus Debugger
Comment=Debug D-Bus applications
Exec=${MODULE_PREFIX}/bin/qdbusviewer
Icon=${MODULE_PREFIX}/share/pixmaps/qdbusviewer-qt5.png
Terminal=false
Encoding=UTF-8
Type=Application
Categories=Qt;Development;Debugger;
EOF
  install -D -m644 ${MODULE}-qtconfig.desktop ${MODULE_PREFIX}/share/applications/${MODULE}-qtconfig.desktop &&

  cat > ${MODULE}-linguist.desktop << EOF  &&
[Desktop Entry]
Name=Qt5 Linquist
Comment=Add translations to Qt5 applications
Exec=${MODULE_PREFIX}/bin/linguist
Icon=${MODULE_PREFIX}/share/pixmaps/linguist-qt5.png
Terminal=false
Type=Application
Categories=Qt;Settings;
EOF
  install -D -m644 ${MODULE}-linguist.desktop ${MODULE_PREFIX}/share/applications/${MODULE}-linguist.desktop &&

  echo "export QT5DIR=\"${MODULE_PREFIX}\"" > $SOURCE_DIRECTORY/$MODULE.rc &&
  echo export QT5_PLUGIN_PATH=\"'${QT5DIR}'/lib/${MODULE}/plugins\" >> $SOURCE_DIRECTORY/$MODULE.rc &&
  echo export XDG_DATA_DIRS=\"'${XDG_DATA_DIRS:-/usr/share}':/usr/share/$MODULE\" >> $SOURCE_DIRECTORY/$MODULE.rc &&
  echo export PKG_CONFIG_PATH=\"'${QT5DIR}'/lib/${MODULE}/pkgconfig:'${PKG_CONFIG_PATH}'\" >> $SOURCE_DIRECTORY/$MODULE.rc &&

  install -m644 $SOURCE_DIRECTORY/$MODULE.rc /etc/profile.d/
