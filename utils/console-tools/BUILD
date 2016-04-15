unset CC CXX

OPTS+=" --disable-static" &&

default_build &&

# Install man pages.
for (( COUNT=1 ; COUNT < 9 ; COUNT++ )); do
  cp doc/man/*.$COUNT /usr/share/man/man$COUNT 2> /dev/null
  true
done
