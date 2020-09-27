GO111MODULES=on go build -ldflags='-w -s' ./cmd/${MODULE} &&

prepare_install &&

install -Dm755 "${MODULE}" /usr/bin/
