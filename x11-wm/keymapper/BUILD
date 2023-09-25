default_cmake_build &&

# Doesn't exist on the CI, so create it here
if [ ! -d /usr/share/applications ]; then
	mkdir -p /usr/share/applications
fi &&
install -Dm0644 "$SCRIPT_DIRECTORY/$MODULE.desktop" /usr/share/applications/
