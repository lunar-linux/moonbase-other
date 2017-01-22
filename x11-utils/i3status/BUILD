# default_make doesn't include $@ so just rewrite it right until
# /var/lib/lunar/moonbase/functions/build.lunar is fixed about it
#default_make $OPTS
debug_msg "default_make ($@)"
verbose_msg "running \"default_make\""
make ${MAKES:+-j${MAKES}} $OPTS    &&
prepare_install                    &&
make install
