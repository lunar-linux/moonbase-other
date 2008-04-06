(

# fix for incomplete Lunar kernel headers
for file in `grep -r asm/io.h * | cut -d: -f1`;
do sedit "s@asm/io.h@sys/io.h@" $file; done &&
for file in `grep -r asm/system.h * | cut -d: -f1`;
do sedit "s@asm/system.h@/usr/src/linux/include/asm/system.h@" $file; done &&

sedit 's/-lpci/-lpci -lz/' smcinit/Makefile &&

install -m755 ${SCRIPT_DIRECTORY}/irda etc/irda.rc &&

default_build

) > $C_FIFO 2>&1
