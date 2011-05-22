(

# Another bit of breakage with the bump to perl-5.14.0
  sedit "s:GvCV(sv) =:GvCV(sv) ==:" src/pl/plperl/plperl.c &&

  message " ${PROBLEM_COLOR}Warning! ${DEFAULT_COLOR}This module needs a dump/restore for the databases in the old 8.x <= version format." &&
  sleep 5 &&

  if in_depends $MODULE timezone-data; then
    OPTS+=" --with-system-tzdata=/usr/share/zoneinfo"
  fi &&

  OPTS+=" --enable-thread-safety --enable-nls --enable-integer-datetimes" &&

  default_build &&

# This gives postgresql some additional things like text search,
# some dbase related utils to name a few.
# See /usr/share/doc/postgresql/contrib for more info.
  cd contrib  &&
  make all    &&
  make install
# done

) > $C_FIFO 2>&1
