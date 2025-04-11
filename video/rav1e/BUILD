#export RUST_BACKTRACE=full
#export LDFLAGS+=' -lgit2'
#export CARGO_PROFILE_RELEASE_BUILD_OVERRIDE_DEBUG=true 

cargo build --release \
            --no-default-features \
            --features binaries,asm,threading,signal_support \
            --manifest-path Cargo.toml &&

cargo cbuild --release \
             --prefix=/usr \
             --no-default-features \
             --features binaries,asm,threading,signal_support \
             --manifest-path Cargo.toml &&

prepare_install &&

cargo install --no-default-features \
              --features binaries,asm,threading,signal_support \
              --no-track \
              --path . \
              --root /usr &&

cargo cinstall --release \
               --no-default-features \
               --features binaries,asm,threading,signal_support \
               --prefix /usr
