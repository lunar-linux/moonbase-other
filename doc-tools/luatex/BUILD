# From http://www.gentoo-portage.com/dev-tex/luatex
export LC_ALL=C  &&

prepare_install  &&
./build.sh  &&

# Install executable
install -m755 build/texk/web2c/luatex /usr/bin/ &&

# The INSTALL suggests a symlink for the last two lines
ln -sf luatex /usr/bin/lualatex &&
ln -sf luatex /usr/bin/texlua   &&
ln -sf luatex /usr/bin/texluac
