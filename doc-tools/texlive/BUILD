  # Some options are from http://www.gentoo-portage.com/app-text/texlive-core
  # and http://repos.archlinux.org/wsvn/packages/texlive-bin/trunk/
  # xindy should be in its own module, because its compilation needs latex to be *already* installed.
  # luatex and psutils are individual modules.
  # psutils is disabled here, it is provided by its own module using the same texlive tarball.
  # t1utils is disabled here, it has its own module and ditto for lcdf-typetools.
  # since a lot of am and in files get a sed thought it would be a good idea to run its provided reautoconf.
  # Doing so almost doubles the compile time with it spent traversing the whole tree.
  # ./reautoconf &&

OPTS+="   --build=$BUILD                 \
          --host=$BUILD                  \
          --prefix=/usr                  \
          --datadir=/usr/share           \
          --includedir=/usr/include      \
          --datarootdir=/usr/share       \
          --libdir=/usr/lib              \
          --enable-etex                  \
          --enable-xetex                 \
          --enable-ipc                   \
          --enable-shared                \
          --enable-compiler-warnings=no  \
          --with-x                       \
          --with-gs=gs                   \
          --with-system-zlib             \
          --with-system-mpfr             \
          --with-system-zziplib          \
          --with-system-libpng           \
          --with-system-gd               \
          --with-system-t1lib            \
          --with-system-poppler          \
          --with-system-teckit           \
          --with-teckit-includes=/usr/include/teckit \
          --with-system-freetype2        \
          --with-system-fontconfig       \
          --with-system-icu              \
          --with-system-graphite2        \
          --with-system-harfbuzz         \
          --with-system-cairo            \
          --with-system-mpfr             \
          --with-system-pixman           \
          --with-system-zlib             \
          --disable-dvisvgm              \
          --disable-multiplatform        \
          --disable-native-texlive-build \
          --disable-static               \
          --disable-luatex               \
          --disable-psutils              \
          --disable-t1utils              \
          --disable-lcdf-typetools"     &&

# They warn an in source build is a very bad idea, so
mkdir tex-build &&
cd tex-build    &&
../configure --prefix=/usr $OPTS &&
default_make    &&

ln -sf /usr/share/texmf-dist/scripts/context/lua/mtxrun.lua /usr/bin/mtxrun &&

# This does not get installed and causes the Can't locate TeXLive/TLUtils.pm after the BUILD
mkdir -p /usr/share/tlpkg/TeXLive &&
install -m644 $SOURCE_DIRECTORY/texk/tests/TeXLive/*.pm /usr/share/tlpkg/TeXLive &&

# Idea from http://projects.archlinux.org/svntogit/packages.git/tree/texlive-bin/trunk/
cp -f $SCRIPT_DIRECTORY/texlive-20100722-09-texlive-fonts.conf /etc/fonts/conf.d/09-texlive-fonts.conf

