OPTS+=" --with-kmod=no --disable-static" &&

default_build &&

if module_installed bash-completion; then
   # bash completion
   install -Dm 644 utils/ipset_bash_completion/ipset \
       /usr/share/bash-completion/completions/
fi
