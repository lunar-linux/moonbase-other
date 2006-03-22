(

  INSTDIR="/usr/share/timidity/eawpatches"
  sedit "s;^dir.*;dir /usr/share/timidity/eawpatches;" linuxconfig/timidity.cfg &&

  prepare_install &&
  [ -d $INSTDIR ] || mkdir -p $INSTDIR &&
  install -m 0644  *.pat ${INSTDIR}/ &&
  install -m 0644 *.cfg ${INSTDIR}/ &&
  for i in ethnic mazpat gsdrum08 gsdrum25 gsdrum40 \
           gus power sfx wime; do
    cp -r $i ${INSTDIR}/
  done &&
  install -m 0644 linuxconfig/timidity.cfg ${INSTDIR}/ &&
  ln -s ${INSTDIR}/timidity.cfg /usr/share/timidity/current

) > $C_FIFO 2>&1
