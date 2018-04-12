rm -r docs test unpacked
rm -r fonts/HTML-CSS/TeX/png
 for _format in eot otf svg ; do
    find . -type d -name "$_format" -prune -exec rm -rf {} \;
 done &&

prepare_install &&
mkdir -p /usr/share/{fonts,licenses/mathjax} &&
  cp -a . /usr/share/mathjax &&
  mv /usr/share/mathjax/fonts /usr/share/fonts/mathjax &&
  ln -s /usr/share/fonts/mathjax /usr/share/mathjax/fonts &&
  mv LICENSE /usr/share/licenses/mathjax/LICENSE


