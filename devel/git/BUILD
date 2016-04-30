default_config &&

if [ "`get_module_config DOCS`" = "y" ]; then
  DOCS=" doc"
else
  DOCS=""
fi

if in_depends $MODULE pcre; then
  OPTS="USE_LIBPCRE=1"
fi

make prefix=/usr \
     gitexecdir=/usr/lib/git-core \
     CFLAGS="$CFLAGS" \
     LDFLAGS="$LDFLAGS" \
     NO_CROSS_DIRECTORY_HARDLINKS=1 \
     MAN_BOLD_LITERAL=1 \
     $OPTS \
     all $DOCS &&

make -C contrib/subtree \
     prefix=/usr \
     gitexecdir=/usr/lib/git-core \
     $OPTS \
     all $DOCS &&

prepare_install &&

if [ "`get_module_config DOCS`" = "y" ]; then
  DOCS=" install-doc"
else
  DOCS=""
fi

make prefix=/usr \
     gitexecdir=/usr/lib/git-core \
     CFLAGS="$CFLAGS" \
     LDFLAGS="$LDFLAGS" \
     NO_CROSS_DIRECTORY_HARDLINKS=1 \
     MAN_BOLD_LITERAL=1 \
     $OPTS \
     install $DOCS &&

for i in man?; do
  [ -d /usr/share/man/$i ] || mkdir -p /usr/share/man/$i &&
  install -m 644 $i/* /usr/share/man/$i/
done &&

# bash completion
install -m 644 contrib/completion/git-completion.bash /usr/share/bash-completion/completions/git &&

# fancy git prompt
install -m 644 contrib/completion/git-prompt.sh /etc/profile.d/git-prompt.rc &&

# for compatibility with arch linux common home directory .bashrc file
mkdir -p /usr/share/git &&
install -m 644 contrib/completion/git-prompt.sh /usr/share/git/git-prompt.sh &&

# subtree installation
make -C contrib/subtree \
     prefix=/usr \
     gitexecdir=/usr/lib/git-core \
     DESTDIR=/ \
     install $DOCS &&

if in_depends $MODULE gnome-keyring; then
  # gnome credentials helper
  make -C contrib/credential/gnome-keyring &&
  install -m755 contrib/credential/gnome-keyring/git-credential-gnome-keyring \
    /usr/lib/git-core/git-credential-gnome-keyring
fi &&

if [ "`get_module_config CONTRIB`" = "y" ]; then
  # the contrib stuff
  install -m 755 contrib/gitview/gitview /usr/bin/ &&
  cp -a ./contrib/* /usr/share/git/
fi

if [ "`get_module_config DOCS`" = "y" ]; then
  gather_docs Documentation/*.txt Documentation/howto/*.txt Documentation/technical/*.txt contrib/gitview/gitview.txt
fi

