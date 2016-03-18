make prefix=/usr \
     gitexecdir=/usr/lib/git-core \
     CFLAGS="$CFLAGS" \
     LDFLAGS="$LDFLAGS" \
     NO_CROSS_DIRECTORY_HARDLINKS=1 \
     MAN_BOLD_LITERAL=1 \
     $OPTS \
     all doc &&

make -C contrib/subtree \
     prefix=/usr \
     gitexecdir=/usr/lib/git-core \
     $OPTS \
     all doc &&

if in_depends $MODULE gnome-keyring; then
  make -C contrib/credential/gnome-keyring
fi &&

prepare_install &&
mkdir -p /usr/share/git &&

make prefix=/usr \
     gitexecdir=/usr/lib/git-core \
     CFLAGS="$CFLAGS" \
     LDFLAGS="$LDFLAGS" \
     NO_CROSS_DIRECTORY_HARDLINKS=1 \
     MAN_BOLD_LITERAL=1 \
     $OPTS \
     install install-doc &&

install -m 755 contrib/gitview/gitview /usr/bin/ &&

# bash completion
install -m 644 contrib/completion/git-completion.bash /usr/share/bash-completion/completions/git &&

# fancy git prompt
# install -m 644 contrib/completion/git-prompt.sh /etc/profile.d/git-prompt.rc &&

# subtree installation
make -C contrib/subtree \
     prefix=/usr \
     gitexecdir=/usr/lib/git-core \
     DESTDIR=/ \
     install install-doc &&

if in_depends $MODULE gnome-keyring; then
  # gnome credentials helper
  install -m755 contrib/credential/gnome-keyring/git-credential-gnome-keyring \
    /usr/lib/git-core/git-credential-gnome-keyring
fi &&

for i in man?; do
  [ -d /usr/share/man/$i ] || mkdir -p /usr/share/man/$i &&
  install -m 644 $i/* /usr/share/man/$i/
done &&

if [ "`get_module_config CONTRIB`" = "y" ]; then
  # the rest of the contrib stuff
  cp -a ./contrib/* /usr/share/git/
fi &&

if [ "`get_module_config DOCS`" = "y" ]; then
  gather_docs Documentation/*.txt Documentation/howto/*.txt Documentation/technical/*.txt contrib/gitview/gitview.txt
fi
