setenv bootargs console=ttyS0,115200 root=/dev/mmcblk0p2 rootwait earlyprintk
fatload mmc 0 ${kernel_addr_r} zImage
fatload mmc 0 ${fdt_addr_r} linux-nybble.dtb
bootz ${kernel_addr_r} - ${fdt_addr_r}