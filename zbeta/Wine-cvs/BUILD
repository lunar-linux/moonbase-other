(
./configure --build=i686-pc-linux-gnu \
		--prefix=/usr \
		--sysconfdir=/etc \
		--localstatedir=/var \
		--infodir=/usr/share/info \
		--mandir=/usr/share/man \
		--enable-opengl &&

  make depend               &&
  make                      &&
  prepare_install           &&
  make install

) > $C_FIFO 2>&1
