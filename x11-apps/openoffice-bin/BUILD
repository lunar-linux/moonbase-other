(

  message ""
  message "To run the OO installer you must have access to your X server."
  message "Please open a new xterm and type xhost +localhost to give root access"
  message ""

  query "Press enter to continue..." ok

  export DISPLAY=localhost:0.0

  prepare_install                                               &&
  devoke_installwatch                                           &&
  $SOURCE_DIRECTORY/setup -v -r:$SCRIPT_DIRECTORY/response      &&
  invoke_installwatch                                           &&

  #
  # Shhhh! don't tell anyone I wrote this:
  #
  # OO registers so we cannot install and move it to somewhere else,
  # so we fool ourselves here. Let's just move the entire tree to
  # a fake install location and now that installwatch is enabled,
  # do a cp -R so installwatch 'sees' the files being installed!

  mv /opt/lunar/openoffice /opt/lunar/.OOo		&& # takes 1 sec
  mkdir /opt/lunar/openoffice                           &&
  cp -R /opt/lunar/.OOo/* /opt/lunar/openoffice/	&& # takes a while...
  rm -rf /opt/lunar/.OOo

) > $C_FIFO 2>&1
