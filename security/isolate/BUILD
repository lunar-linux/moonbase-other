make PREFIX="/usr" VARPREFIX="/var" CONFIGDIR="/etc" isolate isolate.1 &&

prepare_install &&

make PREFIX="/usr" VARPREFIX="/var" CONFIGDIR="/etc" install install-doc &&

# Patch the configuration file so that it uses a standard directory
sedit "s:/var/local/lib/isolate:/var/lib/isolate:" /etc/isolate &&

# The isolate binary has the setuid bit set (to run as root without sudo)
# however we should let only the owner and the group be able to run it:
chmod o-x /usr/bin/isolate &&

chmod 644 /etc/isolate
