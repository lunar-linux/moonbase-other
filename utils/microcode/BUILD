# Borrow the code from Arch Linux
gcc -Wall $CFLAGS -o intel-microcode2ucode intel-microcode2ucode.c &&

./intel-microcode2ucode ./microcode.dat &&

prepare_install &&

mkdir -p kernel/x86/microcode &&
mv microcode.bin kernel/x86/microcode/GenuineIntel.bin
echo kernel/x86/microcode/GenuineIntel.bin | bsdcpio -o -H newc -R 0:0 > /boot/intel-ucode.img
