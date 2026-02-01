#/bin/bash
#make bin_client missionpacks ref_all

mkdir -p ./AppDir/usr/lib
cp ./release/ref_*.so ./AppDir/usr/lib

mkdir -p ./AppDir/usr/bin
cp ./release/quake2 ./AppDir/usr/bin
ln -sf ../lib/ref_soft.so ./AppDir/usr/bin
ln -sf ../lib/ref_gl1.so ./AppDir/usr/bin
ln -sf ../lib/ref_gl3.so ./AppDir/usr/bin
ln -sf ../lib/ref_gl4.so ./AppDir/usr/bin
ln -sf ../lib/ref_gles1.so ./AppDir/usr/bin
ln -sf ../lib/ref_gles3.so ./AppDir/usr/bin
ln -sf ../lib/ref_vk.so ./AppDir/usr/bin

mkdir -p ./AppDir/usr/bin/baseq2
cp ./release/baseq2/game.so ./AppDir/usr/lib/game.baseq2.so
ln -sf ../../lib/game.baseq2.so ./AppDir/usr/bin/baseq2/game.so

mkdir -p ./AppDir/usr/bin/xatrix
cp ./release/xatrix/game.so ./AppDir/usr/lib/game.xatrix.so
ln -sf ../../lib/game.xatrix.so ./AppDir/usr/bin/xatrix/game.so

mkdir -p ./AppDir/usr/bin/rogue
cp ./release/rogue/game.so ./AppDir/usr/lib/game.rogue.so
ln -sf ../../lib/game.rogue.so ./AppDir/usr/bin/rogue/game.so

mkdir -p ./AppDir/usr/bin/ctf
cp ./release/ctf/game.so ./AppDir/usr/lib/game.ctf.so
ln -sf ../../lib/game.ctf.so ./AppDir/usr/bin/ctf/game.so

mkdir -p ./AppDir/usr/share/icons/hicolor/512x512/apps
cp ./stuff/icon/Quake2.png ./AppDir/usr/share/icons/hicolor/512x512/apps

mkdir -p ./AppDir/usr/share/applications/
cp ./stuff/quake2.desktop ./AppDir/usr/share/applications/

#NO_STRIP=true linuxdeploy --appdir=AppDir -oappimage
