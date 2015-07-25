python configure.py --bootstrap &&

# test it
./ninja ninja_test &&
./ninja_test --gtest_filter=-SubprocessTest.SetWithLots &&

prepare_install &&
install -m755 ninja /usr/bin/
