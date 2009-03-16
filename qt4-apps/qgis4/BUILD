(

# These cp's are a dirty hack to get this thing to compile. They say 1.0.1 when released
# fixes this problem, so revisit on the next bump.
  cp i18n/qgis_ar.ts i18n/qgis_fr.ts &&
  cp i18n/qgis_ar.ts i18n/qgis_lo.ts &&
  cp i18n/qgis_ar.ts i18n/qgis_it.ts &&
  cp i18n/qgis_ar.ts i18n/qgis_lv.ts &&
  cp i18n/qgis_ar.ts i18n/qgis_mn.ts &&
  cp i18n/qgis_ar.ts i18n/qgis_sk.ts &&
  cp i18n/qgis_ar.ts i18n/qgis_pt_BR.ts &&

  source /etc/profile.d/qt4.rc &&

  cmake $SOURCE_DIRECTORY/ -DCMAKE_INSTALL_PREFIX=$MODULE_PREFIX  \
                           -DCMAKE_BUILD_TYPE=RELEASE             &&

  default_make

) > $C_FIFO 2>&1

