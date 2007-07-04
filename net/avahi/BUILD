(
   add_priv_user avahi:avahi -d /dev/null -s /bin/false

#   export ac_cv_func_realloc_0_nonnull=yes
#   export ac_cv_func_malloc_0_nonnull=yes

   ./configure  --prefix=/usr             \
                --build=$BUILD            \
                --sysconfdir=/etc         \
                --localstatedir=/var      \
                --with-distro=none        \
                --disable-lynx            \
                --disable-mono            \
                --disable-gdbm            \
                --disable-stack-protector \
                $OPTS                    &&

    default_make

) > $C_FIFO 2>&1
