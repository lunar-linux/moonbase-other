(

    # fixes an issue with incorrect usage of dbus in error conditions
    # mainly affects hald-addon-storage when polling cd drives
    sedit 's:(dbus_error_is_set (error):(error != NULL \&\& dbus_error_is_set (error):g' libhal/libhal.c  &&

    # these sedits fix some build time errors
    sedit 's:use_macbookpro:with_macbookpro:g' configure  &&

    if module_installed kernel-headers-2.6 ; then
      sedit "s:SG_FLAG_LUN_:SG_FLAG_UNUSED_LUN_:" hald/linux/probing/linux_dvd_rw_utils.c
    fi  &&

    # PolicyKit will be released with hal 0.5.9, and until such time, the HAL
    # devs said (via their mailing list) to either use PolicyKit from git or
    # just --disable-policy-kit until 0.5.9 comes out or PolicyKit is released.
    # I'm following the --disable option for now (as are other distros I found)
    OPTS="$OPTS  --disable-docbook-docs   --with-pid-file=var/run/hald.pid  \
                 --disable-policy-kit  --with-backend=linux  --without-macbookpro"

    default_build  &&

    mkdir -p /usr/share/applications &&
    cp $SOURCE_CACHE/$SOURCE2 /usr/share/applications/ 

) > $C_FIFO 2>&1
