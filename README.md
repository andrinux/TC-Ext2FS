# TC-Ext2FS 
##  Transparent Page-Level Compression in Ext2-FS

# Why this Version of Kernel
- It is Ubuntu 10.04 AMD64 Version Native Kernel-2.6.32.24
    [Link]: https://www.kernel.org/pub/linux/kernel/v2.6/
- Modularize until change of inode structure
- Need rebuilding of kernel. See Google Doc for references.

# Install FS Module
~~~~
insmod ext2.ko
mkfs.ext2 /dev/ram0
mkdir /mnt/ram0
mount /dev/ram0 /mnt/ram0
~~~~

#Ideas
- Based on gzip and lz4 compression algorithm
- Key Method is to add extra information in the inode to show the compression information.
- We have a pretty tight schedule before the submission deadline of UsenixFAST.
- Learn - Use, Don't waste time on unnecessary things.

