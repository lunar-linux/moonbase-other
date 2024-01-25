#export RUST_BACKTRACE=full
#export LDFLAGS+=' -lgit2'
#export CARGO_PROFILE_RELEASE_BUILD_OVERRIDE_DEBUG=true 

cargo build --release \
            --frozen \
            --no-default-features \
            --features binaries,asm,threading,signal_support \
            --manifest-path Cargo.toml &&

cargo cbuild --release \
             --frozen \
             --prefix=/usr \
             --no-default-features \
             --features binaries,asm,threading,signal_support \
             --manifest-path Cargo.toml &&

prepare_install &&

cargo install --frozen \
              --no-default-features \
              --features binaries,asm,threading,signal_support \
              --offline \
              --no-track \
              --path . \
              --root /usr &&

cargo cinstall --release \
               --frozen \
               --no-default-features \
               --features binaries,asm,threading,signal_support \
               --prefix /usr \
               --destdir /usr
