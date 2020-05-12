cd cmd/shfmt &&

go build -trimpath -ldflags "-extldflags ${LDFLAGS}" . &&

prepare_install &&

install -Dm755 "shfmt" "/usr/bin/"
