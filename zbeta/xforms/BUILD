(
  sedit "s:XFormsNonstandardInstallDir /usr/local:XFormsNonstandardInstallDir /usr:" Imakefile &&
  xmkmf -a                  &&
  for FILE in `ls */Makefile`; do
  sedit "s:EXTENSIONLIB =  -lXext:EXTENSIONLIB = -L/usr/X11R6/lib  -lXext:" $FILE
  done                      &&
  make                      &&
  prepare_install           &&
  make install

) > $C_FIFO 2>&1
