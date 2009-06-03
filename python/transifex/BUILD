(
  pushd $SOURCE2_DIRECTORY &&
  python setup.py config &&
  popd &&

  pushd $SOURCE3_DIRECTORY &&
  python setup.py config &&
  popd &&

  pushd $SOURCE_DIRECTORY &&

  (echo "from django import forms" | \
    cat - transifex/repowatch/models.py > /tmp/transifex.models.py && \
      mv /tmp/transifex.models.py transifex/repowatch/models.py) &&

  sedit "s/'django_evolution'/#'django_evolution'/g" \
    transifex/settings/50-project.conf &&

  popd &&

  prepare_install &&

  pushd $SOURCE2_DIRECTORY &&
  python setup.py install &&
  popd &&

  pushd $SOURCE3_DIRECTORY &&
  python setup.py install &&
  popd &&

  pushd $SOURCE_DIRECTORY &&
  install -m 755 -d /var/transifex &&
  cp -R transifex/* /var/transifex

) > $C_FIFO 2>&1
