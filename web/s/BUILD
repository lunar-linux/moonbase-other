go get -v github.com/zquestz/s &&

make &&

prepare_install &&

install -Dm 775 ${MODULE} /usr/bin/ &&

if module_installed bash-completion; then
   install -Dm 644 autocomplete/s-completion.bash /usr/share/bash-completion/completions/s
fi

if module_installed fish; then
   install -Dm644 autocomplete/s.fish /usr/share/fish/vendor-completions.d/
fi
