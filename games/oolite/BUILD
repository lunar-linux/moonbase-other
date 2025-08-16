source /usr/share/GNUstep/Makefiles/GNUstep.sh &&

chmod +x tools/mkmanifest.sh &&

make -f Makefile release \
    OBJCFLAGS+=" -Wno-error=incompatible-pointer-types -Wno-format-security" &&

prepare_install &&

mkdir -p /usr/lib/GNUstep/Applications/ &&
cp -rv oolite.app /usr/lib/GNUstep/Applications/oolite.app &&

install -Dm0755 debian/extra/games/oolite /usr/games/oolite &&
install -Dm0644 installers/FreeDesktop/oolite.desktop /usr/share/applications/oolite.desktop &&
install -Dm0644 installers/FreeDesktop/oolite-icon.png /usr/share/pixmaps/oolite-icon.png &&
install -Dm0644 debian/oolite.6 /usr/share/man/man6/oolite.6 &&

gather_docs Doc/AdviceForNewCommanders.pdf Doc/OoliteReadMe.pdf Doc/OoliteRS.pdf Doc/CHANGELOG.TXT
