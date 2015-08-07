#
# Makefile for the linux ext2-filesystem routines.
#
 
obj-m += ext2.o
 
ext2-objs := balloc.o dir.o file.o ialloc.o inode.o \
      ioctl.o namei.o super.o symlink.o
KERNELDIR:=/home/xuebin/Downloads/linux-2.6.32.24/ 
PWD:=$(shell pwd)
ext2-$(CONFIG_EXT2_FS_XATTR)     += xattr.o xattr_user.o xattr_trusted.o
ext2-$(CONFIG_EXT2_FS_POSIX_ACL) += acl.o
ext2-$(CONFIG_EXT2_FS_SECURITY)  += xattr_security.o
ext2-$(CONFIG_EXT2_FS_XIP)   += xip.o
 
default:
	make -C $(KERNELDIR) M=$(PWD) modules
clean:
	rm -rf *.o *.mod.c *.ko *.symvers
