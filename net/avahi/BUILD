(

   . /etc/profile.d/qt3.rc

   if module_installed qt4; then
    . /etc/profile.d/qt4.rc
   fi  &&

   patch_it $SOURCE_CACHE/$SOURCE1 0  &&
   add_priv_user avahi:avahi -d /dev/null -s /bin/false

#   export ac_cv_func_realloc_0_nonnull=yes
#   export ac_cv_func_malloc_0_nonnull=yes

   OPTS="$OPTS --enable-compat-howl --enable-compat-libdns_sd"

   ./configure  --prefix=/usr              \
                --build=$BUILD             \
                --sysconfdir=/etc          \
                --localstatedir=/var       \
                --with-distro=none         \
                --disable-lynx             \
                --disable-gdbm             \
                --disable-stack-protector  \
                $OPTS                     &&

    default_make

) > $C_FIFO 2>&1
