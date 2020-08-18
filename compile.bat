arm-none-eabi-gcc -O2 -mabi=aapcs -marm -march=armv7-a -mfpu=vfpv3-d16 -mfloat-abi=hard -D__DYNAMIC_REENT__ -I libtess2/Include/ -c ultiboCgeneric.c 
arm-none-eabi-ar rcs libultiboCgeneric.a ultiboCgeneric.o
@echo off
del kernel7.img
del *.o
del *.ppu
c:\Ultibo\Core\fpc\3.1.1\bin\i386-win32\fpc -B -Tultibo -Parm -CpARMV7A -WpRPI3B @c:\Ultibo\Core\fpc\3.1.1\bin\i386-win32\RPI3.CFG -O2 -dPLATFORM_PI3 ultiboCinterface.lpr
echo Done.
echo copying kernel to image Dir
copy kernel7.img ultiboCgenericImage
echo copying kernel to SD
copy kernel7.img G:\
del kernel7.img