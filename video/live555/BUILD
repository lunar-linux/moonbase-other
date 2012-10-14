(

  # No need for the use of arch
  sedit 's;^C_FLAGS.*;& -fPIC $(CFLAGS);;s;\(^CPLUSPLUS_FLAGS.*$(COMPILE_OPTS)\).*;\1 -fPIC $(CXXFLAGS);' config.linux &&

  # MPlayer 1.1 needs this interface
  sedit "1 s/$/ -DRTSPCLIENT_SYNCHRONOUS_INTERFACE=1/" config.linux &&

  # Create .so rather then static libraries
  sedit 's;\(^LIBRARY_LINK =\).*;\1 $(CXX) -o;;s;\(^LIBRARY_LINK_OPTS =\).*;\1 $(LINK_OPTS) -shared -Wl,-soname,$@;' config.linux &&
  sedit 's;\(^LIB_SUFFIX =\).*;\1 so;' config.linux &&

  ./genMakefiles linux &&
  make &&
  prepare_install &&

  for d in BasicUsageEnvironment groupsock liveMedia UsageEnvironment; do
    install -d -m 0755 /usr/include/${d}
    install -m 0755 ${d}/*.so /usr/lib/
    install -m 0644 ${d}/include/*.h* /usr/include/${d}/
  done

  for t in `find testProgs -type f -perm 755`; do
    install -m 0755 ${t} /usr/bin/
  done

)
