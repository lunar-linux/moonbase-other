OPTS+=" --docdir=/usr/share/doc/zsh \
        --htmldir=/usr/share/doc/zsh/html \
        --enable-multibyte \
        --enable-etcdir=/etc/zsh \
        --enable-maildir-support \
        --enable-function-subdirs \
        --enable-fndir=/usr/share/zsh/functions \
        --enable-scriptdir=/usr/share/zsh/scripts \
        --enable-zsh-secure-free"

# Other options to consider
#        --enable-zshenv=/etc/zsh/zshenv \
#        --enable-zlogin=/etc/zsh/zlogin \
#        --enable-zlogout=/etc/zsh/zlogout \
#        --enable-zprofile=/etc/zsh/zprofile \
#        --enable-zshrc=/etc/zsh/zshrc \
#        --with-tcsetpgrp \

default_build &&

if [ -e /usr/bin/zsh.old ]; then
  # remove the backup file of the old zsh
  rm /usr/bin/zsh.old
fi &&

if [ "`get_module_config DOCS`" = "y" ]; then
  # Info and HTML format of the ZSH documentation
  install=zsh-doc.install &&
  make DESTDIR= install.info install.html
fi
