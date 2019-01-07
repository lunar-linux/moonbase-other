OPTS+=" -DSYSCONFDIR=/etc/mysql \
        -DMYSQL_DATADIR=/var/lib/mysql \
        -DMYSQL_UNIX_ADDR=/run/mysqld/mysqld.sock \
        -DBUILD_CONFIG=mysql_release \
        -DINSTALL_BINDIR=bin \
        -DINSTALL_SBINDIR=sbin \
        -DINSTALL_INFODIR=share/info \
        -DINSTALL_MANDIR=share/man \
        -DINSTALL_PLUGINDIR=lib/mysql/plugin \
        -DINSTALL_SHAREDIR=share/mysql \
        -DINSTALL_MYSQLSHAREDIR=share/mysql \
        -DINSTALL_SCRIPTDIR=bin \
        -DINSTALL_INCLUDEDIR=include/mysql \
        -DINSTALL_DOCDIR=share/mysql/docs \
        -DINSTALL_DOCREADMEDIR=share/mysql \
        -DINSTALL_SUPPORTFILESDIR=/usr/share/mysql \
        -DINSTALL_SQLBENCHDIR=share/mysql \
        -DINSTALL_MYSQLTESTDIR=share/mysql/mysql-test \
        -DINSTALL_MYSQLDATADIR=/var/lib/mysql \
        -DENABLED_LOCAL_INFILE=ON \
        -DDEFAULT_CHARSET=utf8 \
        -DDEFAULT_COLLATION=utf8_general_ci \
        -DCMAKE_EXE_LINKER_FLAGS='-ljemalloc' \
        -DWITH_ZLIB=system \
        -DWITH_READLINE=ON \
        -DWITH_EXTRA_CHARSETS=complex \
        -DWITH_LIBWRAP=OFF \
        -DWITH_JEMALLOC=ON \
        -DWITH_PCRE=bundled \
        -DWITH_INNOBASE_STORAGE_ENGINE=ON \
        -DWITH_MYISAMMRG_STORAGE_ENGINE=ON \
        -DWITH_MYISAM_STORAGE_ENGINE=ON \
        -DWITH_PARTITION_STORAGE_ENGINE=ON \
        -DWITHOUT_EXAMPLE_STORAGE_ENGINE=ON \
        -DWITHOUT_TOKUDB_STORAGE_ENGINE=ON \
        -DWITHOUT_PBXT_STORAGE_ENGINE=ON \
        -DPLUGIN_AUTH_GSSAPI=NO \
        -DAUTH_GSSAPI_PLUGIN_TYPE=OFF \
        -DAWS_SDK_EXTERNAL_PROJECT=OFF \
        -DWITH_EMBEDDED_SERVER=ON"

if module_installed systemd; then
  OPTS+=" --DWITH_SYSTEMD=yes"
fi &&

# A few of these flags are necessary when building mariadb with gcc >= 4.4
CFLAGS="-fPIC ${CFLAGS} -fno-strict-aliasing -DBIG_JOINS=1 -fomit-frame-pointer -fno-delete-null-pointer-checks"
CXXFLAGS="-fPIC ${CXXFLAGS} -fno-strict-aliasing -DBIG_JOINS=1 -felide-constructors -fno-rtti -fno-delete-null-pointer-checks"

add_priv_user mysql:mysql &&

default_cmake_build &&

# Default config
if [ ! -e "/etc/mysql/my.cnf" ]; then
  install -Dm644 $SCRIPT_DIRECTORY/my-medium.cnf /etc/mysql/my.cnf
fi &&

# Setting up links for mysqlcheck multi-call binary
for i in analyze repair optimize; do
  ln -sf /usr/bin/mysql{check,$i}
done
