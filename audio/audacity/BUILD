mkdir  -p  /usr/share/doc/audacity

(

# Fix for bug #370 - just commenting out for now...
#  if `grep -q UNICODE=n /etc/lunar/local/depends/wxGTK`; then
    ./configure  --prefix=/usr         \
                 --sysconfdir=/etc     \
                 --localstatedir=/var  \
                 $OPTS                 &&
    make                               &&
    prepare_install                    &&
    make    install
#  else
#    message "Audacity will not compile with wxGTK compiled with unicode support."
#    message "Please recompile wxGTK with out unicode support."
#    false
#  fi

) > $C_FIFO 2>&1
