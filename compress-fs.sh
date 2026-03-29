cd initramfs
find . -print0 | cpio --null -ov --format=newc > initramfs.cpio
gzip ./initramfs.cpio
mv ./initramfs.cpio.gz ./../
