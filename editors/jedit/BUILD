(
  
  sedit "s:local/share/xml/docbook/4.2:share/sgml/docbook/docbook-xml-4.3:" build.properties &&
  sedit "s:local/share/xsl/docbook:share/sgml/docbook/xsl-stylesheets-1.69.1:" build.properties &&
  sedit "s:local/j2sdk:lib/j2sdk:" build.properties &&

  prepare_install            &&
  ant dist javadoc docs-html &&
  mkdir -p /usr/share/jedit/ &&
  cd doc &&
  chmod -Rf 644 *.xsl *.html *.txt *.png */*.xml */*.html &&
  cd .. &&
  chmod -Rf 644 jars/*/* macros/*/* modes/* &&
  cp -a jedit.jar jars doc modes properties startup macros /usr/share/jedit/ &&
  chmod 755 /usr/share/jedit/startup/*.bsh &&
  mkdir -p /usr/share/icons/hicolor/128x128/apps/ &&
  cp -p doc/jedit.png /usr/share/icons/hicolor/128x128/apps/ &&
  echo "#!/bin/bash" > /usr/bin/jedit &&
  echo "java -jar /usr/share/jedit/jedit.jar \"\${@}\"" >> /usr/bin/jedit &&
  chmod 755 /usr/bin/jedit

) > $C_FIFO 2>&1
