# backup old files
cp /etc/protocols /etc/protocols.bak &&
cp /etc/services  /etc/services.bak  &&

prepare_install &&

install -Dm644 $SOURCE_CACHE/protocol-numbers.xml /usr/share/iana-etc/protocol-numbers.iana &&
install -Dm644 $SOURCE_CACHE/service-names-port-numbers.xml /usr/share/iana-etc/port-numbers.iana &&

gawk '
BEGIN {
  print "# Full data: /usr/share/iana-etc/protocol-numbers.iana\n"
  FS="[<>]"
}

{
  if (/<record/) { v=n=0 }
  if (/<value/) v=$3
  if (/<name/ && !($3~/ /)) n=$3
  if (/<\/record/ && (v || n=="HOPOPT") && n) printf "%-12s %3i %s\n", tolower(n),v,n
}
' $SOURCE_CACHE/protocol-numbers.xml > /etc/protocols &&

gawk '
BEGIN {
  print "# Full data: /usr/share/iana-etc/port-numbers.iana\n"
  FS="[<>]"
}

{
  if (/<record/) { n=u=p=c=0 }
  if (/<name/ && !/\(/) n=$3
  if (/<number/) u=$3
  if (/<protocol/) p=$3
  if (/Unassigned/ || /Reserved/ || /historic/) c=1
  if (/<\/record/ && n && u && p && !c) printf "%-15s %5i/%s\n", n,u,p
}' $SOURCE_CACHE/service-names-port-numbers.xml > /etc/services
