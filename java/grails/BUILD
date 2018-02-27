setconf /opt/lunar/grails/bin/grails APP_HOME /opt/lunar/grails &&

# Remove some crap before installing
find . -name "*.bat" -exec rm {} \; &&
rm -rf doc INSTALL LICENSE README &&

prepare_install &&

cp -r . /opt/lunar/$MODULE &&

install -d /usr/share/pixmaps &&
install -Dm 644 media/icons/*.png -t /usr/share/pixmaps &&

gather_docs samples
