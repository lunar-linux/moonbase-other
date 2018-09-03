if module_installed sun-jdk; then
  . /etc/profile.d/sun-jdk.rc
fi &&

if module_installed sun-jre; then
  . /etc/profile.d/sun-jre.rc
fi &&

if module_installed sun-jdk8; then
  . /etc/profile.d/sun-jdk.rc
fi &&

prepare_install &&

./build.sh -Ddist.dir=/usr/share/ant &&
gather_docs TODO WHATSNEW welcome.html &&

for each in ant antRun runant.pl runant.py complete-ant-cmd.pl; do
  ln -sf /usr/share/ant/bin/${each} /usr/bin/${each}
done
