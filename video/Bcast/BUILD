(

  sedit  "s:PREFIX = /usr/local:PREFIX = /usr:" configure  &&

  ./configure              &&

  sedit  's:sprintf(global_plugin_dir, "/usr/local/bcast/plugins"):sprintf(global_plugin_dir, "/usr/lib/bcast/plugins"):'  bcast/main.C  &&
  sedit  's:sprintf(global_plugin_dir, ""):sprintf(global_plugin_dir, "/usr/lib//bcast/plugins"):' bcast/preferences.C  &&

  make                     &&
  prepare_install          &&

  mkdir -p /usr/lib/bcast/plugins             &&
  cp bcast/bcast2000 /usr/bin                 &&
  cp bcbase/libbcbase.so /usr/lib             &&
  cp guicast/libguicast.so /usr/lib           &&
  strip plugins/*.plugin                      &&
  cp plugins/*.plugin /usr/lib/bcast/plugins  &&
  cp record_script /usr/bin

) > $C_FIFO 2>&1
