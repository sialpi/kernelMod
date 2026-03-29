cd linux-6.9/
make defconfig
make kvm_guest.config
make -j$(nproc) CC="gcc -std=gnu11"
