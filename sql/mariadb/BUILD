OPTS+=" -DSYSCONFDIR=/etc/mysql \
-DMYSQL_DATADIR=/var/lib/mysql \
-DMYSQL_UNIX_ADDR=/run/mysqld/mysqld.sock \
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
-DWITH_ZLIB=system \
-DWITH_READLINE=ON \
-DWITH_EXTRA_CHARSETS=complex \
-DWITH_LIBWRAP=OFF \
-DWITH_INNOBASE_STORAGE_ENGINE=1 \
-DWITH_MYISAMMRG_STORAGE_ENGINE=1 \
-DWITH_MYISAM_STORAGE_ENGINE=1 \
-DWITHOUT_OQGRAPH_STORAGE_ENGINE=1 \
-DWITHOUT_EXAMPLE_STORAGE_ENGINE=1 \
-DWITHOUT_TOKUDB_STORAGE_ENGINE=1  \
-DWITH_EMBEDDED_SERVER=1"

# A few of these flags are necessary when building mariadb with gcc >= 4.4
CFLAGS="-fPIC ${CFLAGS} -fno-strict-aliasing -DBIG_JOINS=1 -fomit-frame-pointer"
CXXFLAGS="-fPIC ${CXXFLAGS} -fno-strict-aliasing -DBIG_JOINS=1 -felide-constructors -fno-rtti"

add_priv_user mysql:mysql &&

default_cmake_build &&

# Default config
if [ ! -e "/etc/mysql/my.cnf" ]; then
  install -Dm644 /usr/share/mysql/my-medium.cnf /etc/mysql/my.cnf
fi &&

# Setting up links for mysqlcheck multi-call binary
for i in analyze repair optimize; do
  ln -sf /usr/bin/mysql{check,$i}
done &&
ln -sf /usr/bin/{mysql,mariadb}_config
