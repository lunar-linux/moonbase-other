OPTS+=" -DCEGUI_SAMPLES_ENABLED=0 \
        -DCEGUI_BUILD_XMLPARSER_LIBXML2=OFF \
        -DCEGUI_BUILD_XMLPARSER_TINYXML=OFF"

# Needs c++11 std
sed -i '1iadd_definitions(-std=c++11)' application_templates/CMakeLists.txt &&
sed -i '1iadd_definitions(-std=c++11)' samples_framework/CMakeLists.txt &&
sed -i '1iadd_definitions(-std=c++11)' cegui/src/RendererModules/OpenGL/CMakeLists.txt &&
sed -i '1iadd_definitions(-std=c++11)' cegui/src/RendererModules/Ogre/CMakeLists.txt &&
sed -i '1iadd_definitions(-std=c++11)' cegui/src/ScriptModules/Python/bindings/CMakeLists.txt &&

default_cmake_build
