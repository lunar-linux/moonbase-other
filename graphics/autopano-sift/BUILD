(
cd src          &&
make clean all  &&
prepare_install 
echo "creating the application directory" &&
mkdir -p /opt/lunar/autopano-sift/bin &&

echo "installing binaries" &&

bins="libsift.dll autopano-complete.sh generatekeys.exe showone.exe autopano.exe generatekeys-sd.exe showtwo.exe autopanog.exe" 

for i in $bins ; do
  echo "installing $i"
  install -m755 bin/$i /opt/lunar/autopano-sift/bin
done 

echo "done installing binaries" &&
echo "now installing scripts and libs"  &&

other="autopano-complete.old.sh autopano-complete.sh ICSharpCode.SharpZipLib.dll" 

for i in $other ; do
  echo "installing $i"
	install -m644 bin/$i /opt/lunar/autopano-sift/bin
done 

echo "finished scripts and libs" &&

echo "installing the .desktop entry"
install -m644 $SCRIPT_DIRECTORY/autopano-sift.desktop /usr/share/applications/

) > $C_FIFO 2>&1

