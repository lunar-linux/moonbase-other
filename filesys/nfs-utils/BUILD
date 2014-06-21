  add_priv_user nfs:daemon                               &&

  # please DO NOT remove --disable-tirpc even if ./configure shows
  # no such option - it works, and without that there's a bug and
  # thus rpc.mountd is not starting... <wdp@lunar-linux.org>
  ./configure --prefix=/usr                               \
              --mandir=/usr/share/man                     \
              --disable-tirpc                             \
              --disable-gss                               \
              --without-tcp-wrappers                      \
              $OPTS                                      &&

  default_make                                           &&

  # install all auxiliary service files directly
  for f in nfs-blkmap.service nfs-config.service nfs-idmapd.service \
           nfs-mountd.service nfs-utils.service proc-fs-nfsd.mount  \
	   rpc-gssd.service rpc-statd-notify rpc-statd.service      \
	   rpc-svcgssd.service var-lib-nfs-rpc_pipefs.mount; do
    install -Dm0644 "systemd/$f" "/usr/lib/systemd/system/$f"
  done &&

  devoke_installwatch                                    &&
  chown -R nfs:daemon /var/lib/nfs
