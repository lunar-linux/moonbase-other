(

  INVALID_DTD="docbook/dtd/xml/4.2/docbookx.dtd" &&
  CORRECT_DTD="http://www.oasis-open.org/docbook/xml/4.2/docbookx.dtd" &&

  OPTS="--disable-documentation" &&

  sedit "s@$INVALID_DTD@$CORRECT_DTD@g" doc/protocol.xml &&

  default_build

) > $C_FIFO 2>&1
