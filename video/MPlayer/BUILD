# using CFLAGS other than MPlayer's auto-detected will break
#bad_flags compiler &&

#live555 is disabled by default and will be removed

#Instead of using that bad_flags above, which still caused a build failure,
#allow it to decided entirely what it wants to use by removing $OPTS.
#MPlayer has always been very picky about these things.
./configure --prefix=/usr                \
            --mandir=/usr/share/man      \
            --codecsdir=/usr/lib/win32   \
            --confdir=/etc/mplayer       \
            --datadir=/usr/share/mplayer \
            --enable-dynamic-plugins     \
            --enable-menu                \
            --enable-runtime-cpudetection \
            --enable-gui                 &&

sedit 's/-mtune=native//' config.mak &&

default_make &&

gather_docs etc/* &&

install -d /etc/mplayer &&
install -d /usr/share/mplayer &&
install -m644 etc/codecs.conf /usr/share/mplayer/ &&
install -m644 etc/example.conf /etc/mplayer/mplayer.conf &&
install -m644 etc/input.conf /etc/mplayer/ &&

cp -a skins/* /usr/share/mplayer/skins/ &&
ln -sf Blue /usr/share/mplayer/skins/default &&

cp -a fonts /usr/share/mplayer/ &&
rm -rf /usr/share/mplayer/font  &&
ln -sf fonts/font-arial-iso-8859-1/font-arial-18-iso-8859-1 /usr/share/mplayer/font
