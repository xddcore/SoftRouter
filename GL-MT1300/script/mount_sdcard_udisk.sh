############### Mount SDCard Udisk###############
# Author: xddcore
# Date:18/04/2021
# 1034029664@qq.com
#Used in GL.iNet official firmware
opkg update
opkg install block-mount kmod-usb-storage kmod-fs-ext4 e2fsprogs
#显示设备节点(U盘:/dev/sda1,sd卡:/dev/mmcblk0p1)
df

#格式化
mkfs.ext4 /dev/mmcblk0p1 << EOF
#此处 df一下，看看有没有被挂载到/mnt。有的话。下一行不用执行了。
mount /dev/sda1 /mnt 

mkdir /tmp/root
mount -o bind / /tmp/root
cp /tmp/root/* /mnt -a
umount /tmp/root
umount /mnt


block detect > /etc/config/fstab
uci set fstab.@mount[0].target='/overlay'
uci set fstab.@mount[0].enabled='1'
uci commit fstab
reboot

