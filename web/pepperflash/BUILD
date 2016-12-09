mkdir -p /usr/lib/lunar/plugins &&
prepare_install &&

install -Dm0755 libpepflashplayer.so /usr/lib/lunar/plugins &&

#install opt/google/chrome/PepperFlash/* /usr/lib/lunar/plugins &&
#install opt/google/chrome/libwidevine* /usr/lib/lunar/plugins &&

# So you don't need to fiddle with this yourself.
mkdir -p /etc/chromium &&
FLAPPER="/usr/lib/lunar/plugins/libpepflashplayer.so" &&
echo -n "CHROMIUM_FLAGS=\"\${CHROMIUM_FLAGS} " > pepper-flash &&
echo -n "--ppapi-flash-path=$FLAPPER " >> pepper-flash &&
echo "--ppapi-flash-version=$(module_version pepperflash)\"" >> pepper-flash &&
install pepper-flash /etc/chromium/
