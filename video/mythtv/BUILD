(

	sed -i "s/PREFIX = .*/PREFIX=\/usr/" settings.pro
	./configure		\
	--prefix=/usr		&&
	qmake mythtv.pro	&&
	make qmake		&&
	make -C libs		&&
	make			&&
	make install		&&
	#copy other installable files to their locations
	cp setup/setup /usr/share/mythtv/ &&
	cp $SCRIPT_DIRECTORY/mythfilldatabasecron /usr/bin/	&&
	chmod 755 /usr/bin/mythfilldatabasecron			&&
	(test -d /var/lib/mysql/mythconverg || mysql -p < database/mc.sql)

) > $C_FIFO 2>&1

