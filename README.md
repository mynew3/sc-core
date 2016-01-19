# sc-core
The core server-files for shadowcrown.

# Compiling on a Mac
Required: up-to-date Mac OS X El Capitan

1. Install brew:
Open up Terminal and paste this: ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
2. Install OpenSSL, ACE, and TBB through brew:
- brew install openssl
- brew link openssl --force
- brew install ace
- brew install tbb
3. Now we need to fix the g3lite error:
- open “sc-core/dep/inculde/g3lite/G3D/GMutex.h”
- add this: “#include <unistd.h>”
4. Open this: “cmangos-root/src/framework/Platform/Define.h”,
- replace this : “define MANGOS_IMPORT __attribute__ ((longcall))”
- with this : “define MANGOS_IMPORT”
5. Install CMake (https://cmake.org/install)
6. Open CMake, locate the source folder and the build folder (you need to make that yourself, preferably, outside the core folder).
7. Click configure. Select Makefile something as XCode. Select “use native compilers”.
8. set ACE_USE_EXTERNAL and TBB_USE_EXTERNAL to true.
9. set DEBUG to false
10. Set CMAKE_INSTALL_PREFIX to your install folder path (thats where the binaries will go).
11. Add CMAKE_MACOSX_RPATH variable and set it to false.
12. Click “Configure” again.
11. Click “Generate”.
10. Locate your build folder and open up the CMaNGOS.xproj.
11. Set the build target to ALL_BUILD
12. Click the run button.
12. After compilation, type ““sudo ln -s /usr/local/mysql/lib/libmysqlclient.18.dylib /usr/local/lib/libmysqlclient.18.dylib”” into the terminal. This will link the mysqlclient.dylib to the appropriate dir (required for running the binaries).
13. Set the build target to install
14. Click the run button.
15. Go into the install/etc folder.
16. Remove the .dist suffixes from the files.
17. You’re done!

