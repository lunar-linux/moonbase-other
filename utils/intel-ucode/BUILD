rm -f intel-ucode{,-with-caveats}/list &&
mkdir -p kernel/x86/microcode &&
iucode_tool -w kernel/x86/microcode/GenuineIntel.bin intel-ucode{,-with-caveats}/
echo kernel/x86/microcode/GenuineIntel.bin | bsdcpio -o -H newc -R 0:0 > intel-ucode.img &&

prepare_install &&

install -D -m0644 intel-ucode.img /boot/intel-ucode.img
