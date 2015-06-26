sedit 's:/usr/local:/usr:' src/command-installer.coffee build/Gruntfile.coffee &&

./script/build --install-dir=/usr &&

prepare_install &&

./script/grunt install &&

install -Dm644 resources/atom.png /usr/share/pixmaps/atom.png
