(

	sedit "s:PREFIX = .*:PREFIX=/usr:" settings.pro
	#if use alsa
	sedit "s:#CONFIG += using_alsa:CONFIG += using_alsa:" settings.pro
	sedit "s:#ALSA_LIBS = -lasound:ALSA_LIBS = -lasound:" settings.pro
	#fi
	sedit "s:QMAKE_CXXFLAGS_RELEASE = -O3 -march=pentiumpro -fomit-frame-pointer:QMAKE_CXXFLAGS_RELEASE = $CXXFLAGS:" settings.pro
	sedit "s:DEFINES += MMX:DEFINES += MMX SSE"
	./configure		\
	--prefix=/usr		&&
	qmake mythtv.pro	&&
	make qmake		&&
	# To enable parallel builds the librarys must be built in this order
	make -C libs/libavcodec		&&
	make -C libs/libavformat	&&
	make -C libs/libmyth		&&
	make -C libs/libmythtv		&&
	make			&&
	prepare_install		&&
	make install		&&
	#copy other installable files to their locations
	cp setup/setup /usr/share/mythtv/ &&
	cp $SCRIPT_DIRECTORY/mythfilldatabasecron /usr/bin/	&&
	chmod 755 /usr/bin/mythfilldatabasecron			&&
	(test -d /var/lib/mysql/mythconverg || mysql -p < database/mc.sql)

) > $C_FIFO 2>&1

