(
    cat <<BCEOF | ed -s bc/scan.l &&
/_PROTOTYPE(char\ \*readline,\ (char\ \*));/d
w
q
BCEOF
    ./configure
    default_build
) > $C_FIFO 2>&1
