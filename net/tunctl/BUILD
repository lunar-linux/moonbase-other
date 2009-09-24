(
   if ! in_depends $MODULE docbook-profile ; then
     sedit s@"all : \$(BIN) \$(MAN)"@"all : \$(BIN)"@g Makefile &&
     sedit s@"install -d \$(DESTDIR)\$(MAN_DIR)"@@g Makefile &&
     sedit s@"install \$(MAN) \$(DESTDIR)\$(MAN_DIR)"@@g Makefile
   fi &&
   default_build
) > $C_FIFO 2>&1
