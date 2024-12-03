prepare_install &&

mkdir -p /usr/share/fonts/Noto-Sans &&
install -m755 fonts/NotoSans/full/{otf,ttf,variable}/* -t /usr/share/fonts/Noto-Sans/ &&

mkdir -p /usr/share/fonts/NotoSansArabic &&
install -m644 fonts/NotoSansArabic/full/{otf,ttf,variable}/* -t /usr/share/fonts/NotoSansArabic &&

mkdir -p /usr/share/fonts/NotoMusic/ &&
install -m644 fonts/NotoMusic/full/{otf,ttf}/* -t /usr/share/fonts/NotoMusic &&

mkdir -p /usr/share/fonts/NotoSanMath &&
install -dm755 fonts/NotoSansMath/full/{otf,ttf}/* -t /usr/share/fonts/NotoSansMath/

mkdir -p /etc/fonts/conf.{avail,conf.d} &&
install $SCRIPT_DIRECTORY/*.conf /etc/fonts/conf.avail/
