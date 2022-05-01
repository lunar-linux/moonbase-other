OPTS+=" -Dwerror=false \
        -Db_ndebug=true"

if module_installed bash-completions; then
   OPTS+=" -Dbash-completions=true"
else
   OPTS+=" -Dbash-completions=false"
fi

if module_installed zsh; then
   OPTS+=" -Dzsh-completions=true"
else
   OPTS+=" -Dzsh-completions=false"
fi

if module_installed fish; then
   OPTS+=" -Dfish-completions=true"
else
   OPTS+=" -Dfish-completions=false"
fi

default_meson_build &&

# On systems without logind, you need to suid the sway binary
chmod a+s /usr/bin/sway
