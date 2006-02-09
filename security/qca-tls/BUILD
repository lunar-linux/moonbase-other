(

    # Fix for openssl 0.9.8
    sedit "457 s/unsigned/const unsigned/; 801 s/unsigned/const unsigned/" qca-tls.cpp &&

    ./configure &&
    default_make

) > $C_FIFO 2>&1
