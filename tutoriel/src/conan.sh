#------------------------------------------------
### reference conan
#------------------------------------------------
### Créer un projet CMake simple à l'aide de Conan
#------------------------------------------------
# https://docs.conan.io/2/tutorial/consuming_packages/build_simple_cmake_project.html
#------------------------------------------------
...
# on clone le projet
...
git clone https://github.com/conan-io/examples2.git
...
# on se deplace a la racine du projet
...
cd examples2/tutorial/consuming_packages/simple_cmake_project
...
# on cree le programme principal
# on utilise la bibliotheque zlib
...
-> src/main.c
...
<< _EOF_
#include <stdlib.h>
#include <stdio.h>
#include <string.h>

#include <zlib.h>

int main(void)
{
    char buffer_in[256] = {"Conan is a MIT-licensed, Open Source package manager for C and C++ development, "
                           "allowing development teams to easily and efficiently manage their packages and "
                           "dependencies across platforms and build systems."};
    char buffer_out[256] = {0};

    z_stream defstream;
    defstream.zalloc = Z_NULL;
    defstream.zfree = Z_NULL;
    defstream.opaque = Z_NULL;
    defstream.avail_in = (uInt)strlen(buffer_in);
    defstream.next_in = (Bytef *)buffer_in;
    defstream.avail_out = (uInt)sizeof(buffer_out);
    defstream.next_out = (Bytef *)buffer_out;

    deflateInit(&defstream, Z_BEST_COMPRESSION);
    deflate(&defstream, Z_FINISH);
    deflateEnd(&defstream);

    printf("Uncompressed size is: %lu\n", strlen(buffer_in));
    printf("Compressed size is: %lu\n", defstream.total_out);

    printf("ZLIB VERSION: %s\n", zlibVersion());

    return EXIT_SUCCESS;
}
_EOF_
...
# on cree les regles de construction cmake
# on utilise la dependance zlib
...
-> CMakeLists.txt
...
<< _EOF_
cmake_minimum_required(VERSION 3.15)
project(compressor C)

find_package(ZLIB REQUIRED)

add_executable(${PROJECT_NAME}
    src/main.c
)

target_link_libraries(${PROJECT_NAME}
    ZLIB::ZLIB
)
_EOF_
...
# on cree un fichier de configuration conan
# on declare la dependance {zlib}
# on declare l'outil de compilation {cmake}
# on declare la chaine d'outils {cmake}
...
-> conanfile.txt
...
<< _EOF_
[requires]
zlib/1.3.1

[generators]
CMakeDeps
CMakeToolchain
_EOF_
...
# on cree un profil conan
...
conan profile detect --force
...
Found apple-clang 14.0
apple-clang>=13, using the major as version
Detected profile:
[settings]
arch=x86_64
build_type=Release
compiler=apple-clang
compiler.cppstd=gnu17
compiler.libcxx=libc++
compiler.version=14
os=Macos
...
# on determine l'emplacement du profil conan
...
conan profile path default
...
-> /Users/user/.conan2/profiles/default
...
# on modifie la norme c++
...
-> /Users/user/.conan2/profiles/default
...
compiler.cppstd=gnu17
...
# on installe les dependance du projet
...
conan install . --output-folder=build --build=missing
...
-------- Computing dependency graph ----------
zlib/1.3.1: Not found in local cache, looking in remotes...
zlib/1.3.1: Checking remote: conancenter
zlib/1.3.1: Trying with 'conancenter'...
Downloading conanmanifest.txt
Downloading conanfile.py
Downloading conan_export.tgz
Decompressing conan_export.tgz
zlib/1.3.1: Downloaded recipe revision f1fadf0d3b196dc0332750354ad8ab7b
Graph root
    conanfile.txt: /home/conan/examples2/tutorial/consuming_packages/simple_cmake_project/conanfile.txt
Requirements
    zlib/1.3.1#f1fadf0d3b196dc0332750354ad8ab7b - Downloaded (conancenter)

-------- Computing necessary packages ----------
Requirements
    zlib/1.3.1#f1fadf0d3b196dc0332750354ad8ab7b:cdc9a35e010a17fc90bb845108cf86cfcbce64bf#dd7bf2a1ab4eb5d1943598c09b616121 - Download (conancenter)

-------- Installing packages ----------
Installing (downloading, building) binaries...
zlib/1.3.1: Retrieving package cdc9a35e010a17fc90bb845108cf86cfcbce64bf from remote 'conancenter'
Downloading conanmanifest.txt
Downloading conaninfo.txt
Downloading conan_package.tgz
Decompressing conan_package.tgz
zlib/1.3.1: Package installed cdc9a35e010a17fc90bb845108cf86cfcbce64bf
zlib/1.3.1: Downloaded package revision dd7bf2a1ab4eb5d1943598c09b616121

-------- Finalizing install (deploy, generators) ----------
conanfile.txt: Generator 'CMakeToolchain' calling 'generate()'
conanfile.txt: Generator 'CMakeDeps' calling 'generate()'
conanfile.txt: Generating aggregated env files
...
# on construit notre projet sous windows
...
cd build
cmake .. -G "Visual Studio 15 2017" -DCMAKE_TOOLCHAIN_FILE="conan_toolchain.cmake"
cmake --build . --config Release
...
[100%] Built target compressor
...
# on execute le projet sous windows
...
Release\compressor.exe
...
Uncompressed size is: 233
Compressed size is: 147
ZLIB VERSION: 1.3.1
...
# on construit le projet sous linux
...
cd build
cmake .. -DCMAKE_TOOLCHAIN_FILE="conan_toolchain.cmake" -DCMAKE_BUILD_TYPE="Release"
cmake --build .
...
[100%] Built target compressor
...
./compressor
...
Uncompressed size is: 233
Compressed size is: 147
ZLIB VERSION: 1.3.1
...
#------------------------------------------------
### Utilisation des outils de construction sous forme de paquets Conan
#------------------------------------------------
# https://docs.conan.io/2/tutorial/consuming_packages/use_tools_as_conan_packages.html
#------------------------------------------------
...
# on clone le projet
# on se deplace dans le projet
...
git clone https://github.com/conan-io/examples2.git
cd examples2/tutorial/consuming_packages/tool_requires
...
# on analyse l'arborescence du projet
...
.
├── conanfile.txt
├── CMakeLists.txt
└── src
    └── main.c
...
# on configure conan
# on configure la version de cmake
#
...
-> conanfile.txt
...
[requires]
zlib/1.3.1

[tool_requires]
cmake/3.27.9

[generators]
CMakeDeps
CMakeToolchain
...
# on configure cmake
# on affiche la version de cmake
...
-> CMakeLists.txt
...
cmake_minimum_required(VERSION 3.15)
project(compressor C)

find_package(ZLIB REQUIRED)

message("Building with CMake version: ${CMAKE_VERSION}")

add_executable(${PROJECT_NAME} src/main.c)
target_link_libraries(${PROJECT_NAME} ZLIB::ZLIB)
...
# on installe les dependances du projet
...
conan install . --output-folder=build --build=missing
...
-------- Computing dependency graph ----------
cmake/3.27.9: Not found in local cache, looking in remotes...
cmake/3.27.9: Checking remote: conancenter
cmake/3.27.9: Trying with 'conancenter'...
Downloading conanmanifest.txt
Downloading conanfile.py
cmake/3.27.9: Downloaded recipe revision 3e3d8f3a848b2a60afafbe7a0955085a
Graph root
    conanfile.txt: /Users/user/Documents/developer/conan/examples2/tutorial/consuming_packages/tool_requires/conanfile.txt
Requirements
    zlib/1.3.1#f1fadf0d3b196dc0332750354ad8ab7b - Cache
Build requirements
    cmake/3.27.9#3e3d8f3a848b2a60afafbe7a0955085a - Downloaded (conancenter)

-------- Computing necessary packages ----------
Requirements
    zlib/1.3.1#f1fadf0d3b196dc0332750354ad8ab7b:2a823fda5c9d8b4f682cb27c30caf4124c5726c8#48bc7191ec1ee467f1e951033d7d41b2 - Cache
Build requirements
    cmake/3.27.9#3e3d8f3a848b2a60afafbe7a0955085a:f2f48d9745706caf77ea883a5855538256e7f2d4#6c519070f013da19afd56b52c465b596 - Download (conancenter)

-------- Installing packages ----------
Installing (downloading, building) binaries...
cmake/3.27.9: Retrieving package f2f48d9745706caf77ea883a5855538256e7f2d4 from remote 'conancenter'
Downloading conanmanifest.txt
Downloading conaninfo.txt
Downloading conan_package.tgz
Decompressing conan_package.tgz
cmake/3.27.9: Package installed f2f48d9745706caf77ea883a5855538256e7f2d4
cmake/3.27.9: Downloaded package revision 6c519070f013da19afd56b52c465b596
zlib/1.3.1: Already installed!

-------- Finalizing install (deploy, generators) ----------
conanfile.txt: Generator 'CMakeToolchain' calling 'generate()'
conanfile.txt: Generator 'CMakeDeps' calling 'generate()'
conanfile.txt: Generating aggregated env files
...
# on active l'environnement virtuel conan sous windows
...
cd build
conanbuild.bat # si cmd
...
conanbuild.ps1 # si Powershell
...
# on active l'environnement virtuel conan sous linux
...
cd build
source conanbuild.sh
...
Capturing current environment in deactivate_conanbuildenv-release-x86_64.sh
Configuring environment variables
...
# on verifie la version de cmake
...
cmake --version
...
cmake version 3.27.9
...
# on construit le projet sous windows
...
cmake .. -G "Visual Studio 15 2017" -DCMAKE_TOOLCHAIN_FILE="conan_toolchain.cmake"
cmake --build . --config Release
...
Building with CMake version: 3.27.9
...
[100%] Built target compressor
...
# on execute le projet sous windows
...
Release\compressor.exe
...
Uncompressed size is: 233
Compressed size is: 147
ZLIB VERSION: 1.3.1
...
# on
...
...
# on
...
...
# on
...
...
# on
...
...
# on
...
...
#------------------------------------------------
### end
#------------------------------------------------
