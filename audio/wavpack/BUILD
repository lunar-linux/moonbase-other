OPTS+=" --disable-static" &&
grep -E '\<mmx\>' /proc/cpuinfo &> /dev/null && OPTS+=" --enable-mmx" &&

sedit "2i exec_prefix=\${prefix}" wavpack.pc.in &&

default_build
