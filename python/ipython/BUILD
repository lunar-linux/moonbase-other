prepare_install       &&
python setup.py install &&

if [[ "$MATHJAX" == "y" ]]; then
  tar xf $SOURCE_CACHE/$SOURCE2 &&
  cp -r MathJax-$MATHJAXVERSION /usr/lib/python2.7/site-packages/IPython/frontend/html/notebook/static/mathjax
fi
