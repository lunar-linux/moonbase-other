source /etc/profile.d/qt5.rc &&

export XML_CATALOG_FILES=/etc/xml/catalog

if in_depends $MODULE OpenJDK8U-jdk; then
   # Location of javac
   source /etc/profile.d/sun-jdk.rc &&
   export VBOX_JAVA_HOME=$JAVA_HOME
fi &&

# Build VirtualBox
# Disable hardening, so normal users can run it and vmmrw to 
# remove 32 bit simulation support
OPTS+=" --disable-hardening --disable-kmods --disable-docs --disable-vmmraw"

./configure $OPTS &&
source ./env.sh &&

if ! module_installed Linux-PAM; then
   sedit "s/VBOX_WITH_PAM/VBOX_WITHOUT_PAM/" Config.kmk
fi &&

kmk &&

# Build source package for kernel module
pushd out/linux.*/release/bin/ &&
message "Building ${MODULE_COLOR}virtualbox-module-${VERSION_COLOR}${VERSION}${DEFAULT_COLOR}." &&
message "This may take a while..." &&
popd &&

# Prepare for installation
prepare_install &&

# Create install directory
mkdir -p $MODULE_PREFIX &&

# Install contents of the build directory
cp -R out/linux.*/release/bin/* $MODULE_PREFIX/ &&

# Install wrapper and useful symlinks
install -m755 out/linux.*/release/bin/VBox.sh /usr/bin/VBox &&
for i in VBoxAudioTest VBoxAutostart VBoxHeadless VBoxManage \
 VBoxSDL VirtualBox vboxwebsrv VBoxBalloonCtrl; do
   ln -sf VBox /usr/bin/$i &&
   ln -sf VBox /usr/bin/${i,,}
done &&

# Install the config file to let VirtualBox know it is installed
echo "INSTALL_DIR=$MODULE_PREFIX" > vbox.cfg &&
install -Dm 644 {,/etc/vbox/}vbox.cfg &&

# File path for PDF, and make name more recognizable
sed -i -e "s:/opt/VirtualBox/:/usr/share/doc/VirtualBox/:" \
       -e "s:Oracle VM VirtualBox:VirtualBox Oracle VM:1" \
       /usr/lib/virtualbox/virtualbox.desktop &&
# Install .desktop entry and icon
install -Dm 644 /usr/{lib/virtualbox,share/applications}/virtualbox.desktop &&
for x in `ls /usr/lib/virtualbox/icons/`; do
   if [[ -f /usr/lib/virtualbox/icons/$x/virtualbox.png ]]; then
      install -Dm 644 /usr/lib/virtualbox/icons/$x/virtualbox.png \
                      /usr/share/icons/hicolor/$x/apps/virtualbox.png
   fi
done

if in_depends $MODULE texlive; then
   install -Dm 644 /usr/{lib/virtualbox,share/doc/VirtualBox}/UserManual.pdf
fi &&

install -Dm644 {$SCRIPT_DIRECTORY/udev.d,/etc/udev/rules.d}/60-vboxdrv.rules &&
install -Dm644 {$SCRIPT_DIRECTORY/udev.d,/etc/udev/rules.d}/60-vboxguest.rules &&

# Create the vboxusers group
groupadd -f vboxusers
