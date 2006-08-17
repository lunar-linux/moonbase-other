(
cd src          &&
prepare_install &&
make clean all  &&
mkdir -p /opt/lunar/autopano-sift/bin &&
bins="libsift.dll autopano-complete.sh generatekeys.exe showone.exe autopano.exe generatekeys-sd.exe showtwo.exe autopanog.exe" &&
for i in $bins ; do
  install -m755 bin/$i /opt/lunar/autopano-sift/bin
done &&
other="autopano-complete.old.sh autopano-complete.sh ICSharpCode.SharpZipLib.dll" &&
for i in $other ; do
	install -m644 bin/$i /opt/lunar/autopano-sift/bin
done 
) > $C_FIFO 2>&1

