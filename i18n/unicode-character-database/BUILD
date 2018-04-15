prepare_install &&

for _f in UCD Unihan; do
   install -Dm644 $SOURCE_CACHE/$_f.zip /usr/share/unicode/$_f.zip &&
   bsdtar -C /usr/share/unicode -x --no-same-owner --no-same-permissions -f /usr/share/unicode/$_f.zip
done &&

rm -f /usr/share/unicode/U*.zip &&

ln -fs /usr/share/unicode /usr/share/$MODULE
