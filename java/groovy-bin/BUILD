(

  prepare_install &&
  mkdir -p /opt/lunar/groovy/bin &&

  cp -R lib embeddable conf /opt/lunar/groovy/ &&

  for i in $(find $SOURCE_DIRECTORY/bin -type f ! -name "*.bat"); do
    install -m 755 $i /opt/lunar/groovy/bin/
  done &&

  gather_docs NOTICE.txt LICENSE.txt ASM-LICENSE.txt

) > $C_FIFO 2>&1
