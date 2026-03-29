qemu-system-x86_64 \
        -m 2G \
        -smp 2 \
        -kernel ./linux-6.9/arch/x86/boot/bzImage \
	-initrd ./initramfs.cpio.gz \
        -enable-kvm \
        -nographic \
        -pidfile vm.pid \
	-append "console=ttyS0 root=/dev/sda earlyprintk=serial net.ifnames=0 nokaslr" \
        2>&1 | tee ./logs/vm.log
