go build \
    -gcflags "all=-trimpath=$PWD" \
    -asmflags "all=-trimpath=$PWD" \
    -o $MODULE . &&

#    -ldflags "-extldflags $LDFLAGS" \

prepare_install &&

install -Dm755 $MODULE /usr/bin/
