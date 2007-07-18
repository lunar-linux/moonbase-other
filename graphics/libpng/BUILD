(

CFLAGS="${CFLAGS//march/mtune}"
CFLAGS="${CFLAGS//=sse/=387}"
CFLAGS="${CFLAGS//=387,387/=387}"
CFLAGS="${CFLAGS//-mmmx/-mno-mmx}"
CFLAGS="${CFLAGS//-m3dnow/-mno-3dnow}"
CFLAGS="${CFLAGS//-msse/-mno-sse}"
CFLAGS="-march=`uname -m` $CFLAGS"
default_build

) > $C_FIFO 2>&1
