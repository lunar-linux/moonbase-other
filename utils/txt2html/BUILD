(

prepare_install                                                                    &&
rm -f /usr/bin/txt2html                                                            &&
sedit "s/usr\/local\/lib/usr\/lib/i" $SOURCE_DIRECTORY/txt2html.pl                 &&
cp $SOURCE_DIRECTORY/txt2html.pl /usr/bin/txt2html                                 &&
chmod 0755 /usr/bin/txt2html                                                       &&

if [ -e "/usr/local/lib/txt2html.dict" ]; then
   rm -f /usr/local/lib/txt2html.dict                                           
fi                                                                              &&

if [ -e "/usr/lib/txt2html.dict" ]; then
   rm -f /usr/lib/txt2html.dict
fi                                                                              &&

cp $SOURCE_DIRECTORY/txt2html.dict /usr/lib/txt2html.dict                       &&

mkdir -p /usr/share/doc/txt2html                                                &&

cp -f $SOURCE_DIRECTORY/* /usr/share/doc/txt2html/                              &&
chown root.root /usr/share/doc/txt2html/*                                       &&
chmod 0644      /usr/share/doc/txt2html/*            

) > $C_FIFO 2>&1
