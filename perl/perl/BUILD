(

  # DO NOT TOUCH THESE SEDITS UNLESS YOU KNOW WHAT YOU'RE DOING!

  # Rename COMPILE to something else in these files since
  # COMPILE gets set by lunar. Perl uses COMPILE when
  # compling win32 test programs.
  sedit 's/COMPILE/PERL_DID_AN_OOPS/' Makefile.SH installperl &&

  if [ "$CUSTOM" == "y" ] ; then
        ./Configure  -Dprefix=/usr   \
                     -Dscriptdir=/usr/bin \
                     -Duseshrplib=true    \
                     $OPTS \
                     -Dman1dir=/usr/share/man/man1 \
                     -Dman3dir=/usr/share/man/man3 -e
  else
        ./Configure  -Dprefix=/usr   \
                     -Dscriptdir=/usr/bin \
                     -Duseshrplib=true        \
                     -Dccdlflags='-rdynamic'  \
                     -Doptimize="${CFLAGS}"   \
                     -Duselargefiles \
                     -Ud_csh         \
                     -Dcf_by='Lunar' \
                     $OPTS \
                     -Dman1dir=/usr/share/man/man1 \
                     -Dusethreads  \
                     -Dman3dir=/usr/share/man/man3 -d -e
  fi  &&

  make  &&

  export LD_LIBRARY_PATH="$LD_LIBRARY_PATH:$SOURCE_DIRECTORY"  &&
  ldconfig  &&

  prepare_install  &&
  make install     &&

  strip --strip-unneeded $(which perl)

) > $C_FIFO 2>&1
