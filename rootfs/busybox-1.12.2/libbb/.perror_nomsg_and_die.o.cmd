cmd_libbb/perror_nomsg_and_die.o := arm-linux-gcc -Wp,-MD,libbb/.perror_nomsg_and_die.o.d   -std=gnu99 -Iinclude -Ilibbb  -include include/autoconf.h -D_GNU_SOURCE -DNDEBUG -D_LARGEFILE_SOURCE -D_LARGEFILE64_SOURCE -D_FILE_OFFSET_BITS=64 -D"BB_VER=KBUILD_STR(1.12.2)" -DBB_BT=AUTOCONF_TIMESTAMP  -Wall -Wshadow -Wwrite-strings -Wundef -Wstrict-prototypes -Wunused -Wunused-parameter -Wmissing-prototypes -Wmissing-declarations -Wdeclaration-after-statement -Wold-style-definition -fno-builtin-strlen -finline-limit=0 -fomit-frame-pointer -ffunction-sections -fdata-sections -fno-guess-branch-probability -funsigned-char -static-libgcc -falign-functions=1 -falign-jumps=1 -falign-labels=1 -falign-loops=1 -Os    -D"KBUILD_STR(s)=\#s" -D"KBUILD_BASENAME=KBUILD_STR(perror_nomsg_and_die)"  -D"KBUILD_MODNAME=KBUILD_STR(perror_nomsg_and_die)" -c -o libbb/perror_nomsg_and_die.o libbb/perror_nomsg_and_die.c

deps_libbb/perror_nomsg_and_die.o := \
  libbb/perror_nomsg_and_die.c \
  include/platform.h \
    $(wildcard include/config/werror.h) \
    $(wildcard include/config///.h) \
    $(wildcard include/config/nommu.h) \
    $(wildcard include/config//nommu.h) \
    $(wildcard include/config//mmu.h) \
  /usr/local/arm/gcc-4.6.4/bin/../arm-arm1176jzfssf-linux-gnueabi/sysroot/usr/include/byteswap.h \
  /usr/local/arm/gcc-4.6.4/bin/../arm-arm1176jzfssf-linux-gnueabi/sysroot/usr/include/features.h \
    $(wildcard include/config/c11.h) \
    $(wildcard include/config/c99.h) \
    $(wildcard include/config/c95.h) \
    $(wildcard include/config/ix.h) \
    $(wildcard include/config/ix2.h) \
    $(wildcard include/config/ix199309.h) \
    $(wildcard include/config/ix199506.h) \
    $(wildcard include/config/en.h) \
    $(wildcard include/config/en/extended.h) \
    $(wildcard include/config/x98.h) \
    $(wildcard include/config/en2k.h) \
    $(wildcard include/config/en2kxsi.h) \
    $(wildcard include/config/en2k8.h) \
    $(wildcard include/config/en2k8xsi.h) \
    $(wildcard include/config/gefile.h) \
    $(wildcard include/config/gefile64.h) \
    $(wildcard include/config/e/offset64.h) \
    $(wildcard include/config/.h) \
    $(wildcard include/config/d.h) \
    $(wildcard include/config/c.h) \
    $(wildcard include/config/ile.h) \
    $(wildcard include/config/ntrant.h) \
    $(wildcard include/config/tify/level.h) \
    $(wildcard include/config/cxx11.h) \
    $(wildcard include/config/i.h) \
    $(wildcard include/config/ix/implicitly.h) \
    $(wildcard include/config/ern/inlines.h) \
  /usr/local/arm/gcc-4.6.4/bin/../arm-arm1176jzfssf-linux-gnueabi/sysroot/usr/include/stdc-predef.h \
  /usr/local/arm/gcc-4.6.4/bin/../arm-arm1176jzfssf-linux-gnueabi/sysroot/usr/include/bits/predefs.h \
  /usr/local/arm/gcc-4.6.4/bin/../arm-arm1176jzfssf-linux-gnueabi/sysroot/usr/include/sys/cdefs.h \
    $(wildcard include/config/espaces.h) \
  /usr/local/arm/gcc-4.6.4/bin/../arm-arm1176jzfssf-linux-gnueabi/sysroot/usr/include/bits/wordsize.h \
  /usr/local/arm/gcc-4.6.4/bin/../arm-arm1176jzfssf-linux-gnueabi/sysroot/usr/include/gnu/stubs.h \
  /usr/local/arm/gcc-4.6.4/bin/../arm-arm1176jzfssf-linux-gnueabi/sysroot/usr/include/gnu/stubs-soft.h \
  /usr/local/arm/gcc-4.6.4/bin/../arm-arm1176jzfssf-linux-gnueabi/sysroot/usr/include/bits/byteswap.h \
  /usr/local/arm/gcc-4.6.4/bin/../arm-arm1176jzfssf-linux-gnueabi/sysroot/usr/include/bits/types.h \
  /usr/local/arm/gcc-4.6.4/bin/../arm-arm1176jzfssf-linux-gnueabi/sysroot/usr/include/bits/typesizes.h \
  /usr/local/arm/gcc-4.6.4/bin/../arm-arm1176jzfssf-linux-gnueabi/sysroot/usr/include/bits/byteswap-16.h \
  /usr/local/arm/gcc-4.6.4/bin/../arm-arm1176jzfssf-linux-gnueabi/sysroot/usr/include/endian.h \
  /usr/local/arm/gcc-4.6.4/bin/../arm-arm1176jzfssf-linux-gnueabi/sysroot/usr/include/bits/endian.h \
  /usr/local/arm/gcc-4.6.4/bin/../arm-arm1176jzfssf-linux-gnueabi/sysroot/usr/include/arpa/inet.h \
  /usr/local/arm/gcc-4.6.4/bin/../arm-arm1176jzfssf-linux-gnueabi/sysroot/usr/include/netinet/in.h \
  /usr/local/arm/gcc-4.6.4/bin/../lib/gcc/arm-arm1176jzfssf-linux-gnueabi/4.6.4/include/stdint.h \
  /usr/local/arm/gcc-4.6.4/bin/../arm-arm1176jzfssf-linux-gnueabi/sysroot/usr/include/stdint.h \
  /usr/local/arm/gcc-4.6.4/bin/../arm-arm1176jzfssf-linux-gnueabi/sysroot/usr/include/bits/wchar.h \
  /usr/local/arm/gcc-4.6.4/bin/../arm-arm1176jzfssf-linux-gnueabi/sysroot/usr/include/sys/socket.h \
  /usr/local/arm/gcc-4.6.4/bin/../arm-arm1176jzfssf-linux-gnueabi/sysroot/usr/include/sys/uio.h \
  /usr/local/arm/gcc-4.6.4/bin/../arm-arm1176jzfssf-linux-gnueabi/sysroot/usr/include/sys/types.h \
  /usr/local/arm/gcc-4.6.4/bin/../arm-arm1176jzfssf-linux-gnueabi/sysroot/usr/include/time.h \
  /usr/local/arm/gcc-4.6.4/bin/../lib/gcc/arm-arm1176jzfssf-linux-gnueabi/4.6.4/include/stddef.h \
  /usr/local/arm/gcc-4.6.4/bin/../arm-arm1176jzfssf-linux-gnueabi/sysroot/usr/include/sys/select.h \
  /usr/local/arm/gcc-4.6.4/bin/../arm-arm1176jzfssf-linux-gnueabi/sysroot/usr/include/bits/select.h \
  /usr/local/arm/gcc-4.6.4/bin/../arm-arm1176jzfssf-linux-gnueabi/sysroot/usr/include/bits/sigset.h \
  /usr/local/arm/gcc-4.6.4/bin/../arm-arm1176jzfssf-linux-gnueabi/sysroot/usr/include/bits/time.h \
  /usr/local/arm/gcc-4.6.4/bin/../arm-arm1176jzfssf-linux-gnueabi/sysroot/usr/include/sys/sysmacros.h \
  /usr/local/arm/gcc-4.6.4/bin/../arm-arm1176jzfssf-linux-gnueabi/sysroot/usr/include/bits/pthreadtypes.h \
  /usr/local/arm/gcc-4.6.4/bin/../arm-arm1176jzfssf-linux-gnueabi/sysroot/usr/include/bits/uio.h \
  /usr/local/arm/gcc-4.6.4/bin/../arm-arm1176jzfssf-linux-gnueabi/sysroot/usr/include/bits/socket.h \
  /usr/local/arm/gcc-4.6.4/bin/../arm-arm1176jzfssf-linux-gnueabi/sysroot/usr/include/bits/socket_type.h \
  /usr/local/arm/gcc-4.6.4/bin/../arm-arm1176jzfssf-linux-gnueabi/sysroot/usr/include/bits/sockaddr.h \
  /usr/local/arm/gcc-4.6.4/bin/../arm-arm1176jzfssf-linux-gnueabi/sysroot/usr/include/asm/socket.h \
  /usr/local/arm/gcc-4.6.4/bin/../arm-arm1176jzfssf-linux-gnueabi/sysroot/usr/include/asm/sockios.h \
  /usr/local/arm/gcc-4.6.4/bin/../arm-arm1176jzfssf-linux-gnueabi/sysroot/usr/include/bits/in.h \
  /usr/local/arm/gcc-4.6.4/bin/../lib/gcc/arm-arm1176jzfssf-linux-gnueabi/4.6.4/include/stdbool.h \
  /usr/local/arm/gcc-4.6.4/bin/../arm-arm1176jzfssf-linux-gnueabi/sysroot/usr/include/sys/mount.h \
  /usr/local/arm/gcc-4.6.4/bin/../arm-arm1176jzfssf-linux-gnueabi/sysroot/usr/include/sys/ioctl.h \
  /usr/local/arm/gcc-4.6.4/bin/../arm-arm1176jzfssf-linux-gnueabi/sysroot/usr/include/bits/ioctls.h \
  /usr/local/arm/gcc-4.6.4/bin/../arm-arm1176jzfssf-linux-gnueabi/sysroot/usr/include/asm/ioctls.h \
  /usr/local/arm/gcc-4.6.4/bin/../arm-arm1176jzfssf-linux-gnueabi/sysroot/usr/include/asm-generic/ioctls.h \
  /usr/local/arm/gcc-4.6.4/bin/../arm-arm1176jzfssf-linux-gnueabi/sysroot/usr/include/linux/ioctl.h \
  /usr/local/arm/gcc-4.6.4/bin/../arm-arm1176jzfssf-linux-gnueabi/sysroot/usr/include/asm/ioctl.h \
  /usr/local/arm/gcc-4.6.4/bin/../arm-arm1176jzfssf-linux-gnueabi/sysroot/usr/include/asm-generic/ioctl.h \
  /usr/local/arm/gcc-4.6.4/bin/../arm-arm1176jzfssf-linux-gnueabi/sysroot/usr/include/bits/ioctl-types.h \
  /usr/local/arm/gcc-4.6.4/bin/../arm-arm1176jzfssf-linux-gnueabi/sysroot/usr/include/sys/ttydefaults.h \

libbb/perror_nomsg_and_die.o: $(deps_libbb/perror_nomsg_and_die.o)

$(deps_libbb/perror_nomsg_and_die.o):
