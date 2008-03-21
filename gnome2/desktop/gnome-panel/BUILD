(

  if !in_depends libxml2 Python; then
    message "${PROBLEM_COLOR} lin --reconfigure libxml2 and install the optional Python dependency ${DEFAULT_COLOR}";
    exit 1;
  fi

   ./configure  --prefix=${GNOME210_PREFIX:-/usr}  \
                --build=$BUILD                    \
                --sysconfdir=/etc                 \
                --localstatedir=/var              \
                --infodir=${GNOME210_PREFIX:-/usr}/share/info \
                --mandir=${GNOME210_PREFIX:-/usr}/share/man   \
                $OPTS                             &&
    default_make

) > $C_FIFO 2>&1
