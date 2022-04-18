############### Install OpenClash###############
# Author: xddcore
# Date:18/04/2022
# 1034029664@qq.com
#Used in GL.iNet official firmware
opkg update
opkg install luci luci-i18n-base-zh-cn luci-compat luci-lib-ipkg wget 
#OpenClash Need
opkg install coreutils-nohup bash iptables dnsmasq-full curl jsonfilter ca-certificates ipset ip-full iptables-mod-tproxy iptables-mod-extra ruby ruby-yaml

# install libcap-bin, libcap(opkg install version is too early)
#Source: https://downloads.openwrt.org/snapshots/packages/mipsel_24kc/base/
cd /tmp
wget --no-check-certificate https://downloads.openwrt.org/snapshots/packages/mipsel_24kc/base/libcap_2.63-1_mipsel_24kc.ipk -O libcap_2.63-1_mipsel_24kc.ipk
opkg install /tmp/libcap_*.ipk
wget --no-check-certificate https://downloads.openwrt.org/snapshots/packages/mipsel_24kc/base/libcap-bin_2.63-1_mipsel_24kc.ipk -O libcap-bin_2.63-1_mipsel_24kc.ipk
opkg install /tmp/libcap-bin_*.ipk
rm -f /tmp/libcap_*.ipk
rm -f /tmp/libcap-bin_*.ipk

# install luci-app-openclash, will try to get latest version later
#https://github.com/vernesong/OpenClash/releases
wget --no-check-certificate https://github.com/vernesong/OpenClash/releases/download/v0.45.02-beta/luci-app-openclash_0.45.02-beta_all.ipk -O luci-app-openclash_0.45.02-beta_all.ipk
opkg install /tmp/luci-app-openclash_*.ipk
rm -f /tmp/luci-app-openclash_*.ipk

# install openclash Dev core
mkdir -p /etc/openclash/core/
cd /etc/openclash/core/
wget https://github.com/vernesong/OpenClash/releases/download/Clash/clash-linux-mipsle-softfloat.tar.gz -O clash-linux-mipsle-softfloat.tar.gz
tar zxvf clash-linux-mipsle-*.tar.gz 
rm -f clash-linux-mipsle-*.gz

echo Author: xddcore
echo Date:18/04/2022
echo 1034029664@qq.com
echo Finish Install OpenClash,Enjoy it!

