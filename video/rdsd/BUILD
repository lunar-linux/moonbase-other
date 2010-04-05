(

    cd $SOURCE_DIRECTORY &&
    sedit 's@#include "rdshandler.h"@#include <stdio.h>\n#include <cstdlib>\n#include <cstring>\n#include "rdshandler.h"@' src/rdsd.cpp &&
    sedit 's@#include "rdshandler.h"@#include <algorithm>\n#include <cstdlib>\n#include "rdshandler.h"@' src/rdshandler.cpp &&
    sedit 's@#include "rdssource.h"@#include "rdssource.h"\n#include <cstring>\n@' src/rdssource.cpp &&
    sedit 's@#include "rdsclient.h"@#include "rdsclient.h"\n#include <cstdlib>\n@' src/rdsclient.cpp &&

    default_build

) > $C_FIFO 2>&1
