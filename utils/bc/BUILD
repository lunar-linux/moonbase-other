(
    cat <<BCEOF | ed -s bc/scan.l &&
/_PROTOTYPE(char\ \*readline,\ (char\ \*));/d
w
q
BCEOF

  sedit "s:-I8:-I -8:" configure &&

  default_build
) > $C_FIFO 2>&1
