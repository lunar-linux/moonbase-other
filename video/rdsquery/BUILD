(

    cd $SOURCE_DIRECTORY &&
    sedit 's@#include <iostream>@#include <cstdio>\n#include <iostream>@' src/rdsquery.cpp &&
    sedit 's@#include "rdsqoptions.h"@#include <cstdio>\n#include "rdsqoptions.h"@' src/rdsqoptions.cpp &&
    default_build

) > $C_FIFO 2>&1
