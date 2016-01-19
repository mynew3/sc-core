# sc-core
The core server-files for shadowcrown.

# Compiling on a Mac
Required: up-to-date Mac OS X El Capitan

1. Install brew:
Open up Terminal and paste this: ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
2. Install OpenSSL, ACE, and TBB throguh brew:
brew install openssl
brew link openssl --force
brew install ace
brew install tbb
3. The g3dlite error: open cmangos-root/dep/imculde/g3lite/G3D/GMutex.h
Add this: #include <unistd.h>
4. Open this: cmangos-root/src/framework/Platform/Define.h
Modify as follows:
---------------------------
#  if defined(__APPLE_CC__) && defined(BIG_ENDIAN)
- #    define MANGOS_IMPORT __attribute__ ((longcall))
+ #    define MANGOS_IMPORT
#  elif defined(__x86_64__)
----------------------------
5. Install CMake (https://cmake.org/install)
6. Open CMake, locate the source folder and the build folder (you need to make that yourself)
7. Click configure. Select Makefile somthing as XCode. Select use native compilers.
8. Select the fields to use external TBB and ACE libs. Also locate your install folder (thats where the binaries will go).
9. Click build.
10. Locate your build folder and open up the xcode proj.
11. Click "Play" and let it compile :)

sudo ln -s /usr/local/mysql/lib/libmysqlclient.18.dylib /usr/local/lib/libmysqlclient.18.dylib
