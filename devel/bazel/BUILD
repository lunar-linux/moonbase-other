source /etc/profile.d/sun-jdk.rc &&

EMBED_LABEL=$VERSION EXTRA_BAZEL_ARGS="--tool_java_runtime_version=local_jdk" ./compile.sh &&
./output/bazel build scripts:bazel-complete.bash &&

cd output &&
./bazel shutdown &&

prepare_install &&
install -Dm755 $SOURCE_DIRECTORY/scripts/packages/bazel.sh /usr/bin/bazel &&
install -Dm755 $SOURCE_DIRECTORY/output/bazel /usr/bin/bazel-real &&
install -Dm755 $SOURCE_DIRECTORY/bazel-bin/scripts/bazel-complete.bash /usr/share/bash-completion/completions/bazel &&
install -Dm644 $SOURCE_DIRECTORY/scripts/zsh_completion/_bazel /usr/share/zsh/site-functions/_bazel

mkdir -p /usr/share/bazel &&
for d in $SOURCE_DIRECTORY/examples $SOURCE_DIRECTORY/third_party $SOURCE_DIRECTORY/tools; do
    cp -r ${d} /usr/share/bazel/
done
