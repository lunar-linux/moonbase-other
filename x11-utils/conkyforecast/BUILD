default_python2_build &&

install -D -m644 README /usr/share/conkyforecast/ &&

# Make sure we call python2 to run conkyforecast
sedit 's|/usr/bin/python|/usr/bin/python2|' /usr/share/conkyforecast/conkyForecast.py &&
sedit 's|/usr/bin/python|/usr/bin/python2|' /usr/bin/conkyForecast
