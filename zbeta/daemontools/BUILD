(
    patch_it $SOURCE2 1                 &&
    echo /usr > conf-home               &&
    package/compile                     &&

    prepare_install                     &&
    if [[ ! -d /usr/bin ]]
    then
        mkdir -p /usr/bin
    fi                                  &&
    cp -f command/* /usr/bin            &&
    mkdir -p /service /command /etc/service &&
    for fn in command/*
    do
        ln -s ../usr/bin/${fn#command/} /$fn
    done

cat > /etc/service/README <<-EOF
     Create your services in this directory and link to them from /service
     with ln -s ../etc/service/your_service /service/your_service

     Read http://cr.yp.to/daemontools.html to understand more about how to
     create services.
EOF

) > $C_FIFO 2>&1
