#!/bin/bash
cd /dev
./MAKEDEV agpgart
./MAKEDEV apm_bios
./MAKEDEV beep
./MAKEDEV capi20
./MAKEDEV cdrom
./MAKEDEV cfs
./MAKEDEV compaq
./MAKEDEV -m 32 console
./MAKEDEV cpu
./MAKEDEV -m 4 cua
./MAKEDEV -m 16 cui
./MAKEDEV dri
./MAKEDEV enskip
./MAKEDEV fb
./MAKEDEV fd0
./MAKEDEV fd1
./MAKEDEV ftape
./MAKEDEV -m 2 ht
./MAKEDEV -m 2 i2c
./MAKEDEV i2o
./MAKEDEV ibcs
./MAKEDEV -m 33 ide
./MAKEDEV initrd
./MAKEDEV -m 32 input
./MAKEDEV -m 16 ip
./MAKEDEV -m 16 ipfilter
./MAKEDEV ir
./MAKEDEV -m 2 iscc
./MAKEDEV -m 16 isdn
./MAKEDEV -m 4 js
./MAKEDEV kpoll
./MAKEDEV -m 32 loop
./MAKEDEV -m 1 log
./MAKEDEV -m 8 lp
./MAKEDEV md
./MAKEDEV mouse
./MAKEDEV -m 32 nb
./MAKEDEV net/tun
./MAKEDEV netlink
./MAKEDEV -m 2 nht
./MAKEDEV -m 4 nosst
./MAKEDEV -m 16 nst
./MAKEDEV -m 4 osst
./MAKEDEV -m 8 par
./MAKEDEV -m 4 pcd
./MAKEDEV pd
./MAKEDEV -m 4 pf
./MAKEDEV -m 4 pg
./MAKEDEV -m 4 ppp
./MAKEDEV pt
./MAKEDEV ptmx
./MAKEDEV pty
./MAKEDEV qng
./MAKEDEV -m 20 ram
./MAKEDEV random
./MAKEDEV raid
./MAKEDEV raw
./MAKEDEV rmt
./MAKEDEV rtc
./MAKEDEV -m 8 scd
./MAKEDEV -m 16 scramdisk
./MAKEDEV sd
./MAKEDEV -m 32 sg
./MAKEDEV smpt
./MAKEDEV sound
./MAKEDEV -m 16 st
./MAKEDEV systty
./MAKEDEV -m 4 staliomem
./MAKEDEV std
./MAKEDEV tlk
./MAKEDEV -m 32 tty
./MAKEDEV urandom
./MAKEDEV -m 32 usb
./MAKEDEV -m 4 v4l
./MAKEDEV vcs
./MAKEDEV video1394
./MAKEDEV vmmon
./MAKEDEV -m 4 vnet
./MAKEDEV vsys
./MAKEDEV -m 4 winradio
./MAKEDEV xda
./MAKEDEV xdb
