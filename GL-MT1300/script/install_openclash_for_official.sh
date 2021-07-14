opkg update
opkg install luci luci-i18n-base-zh-cn luci-compat luci-lib-ipkg wget htop libcap ttyd luci-app-ttyd luci-i18n-ttyd-zh-cn

# install libcap-bin, will try to get latest version later
#https://downloads.openwrt.org/snapshots/packages/mipsel_24kc/base/
cd /tmp
wget --no-check-certificate https://downloads.openwrt.org/snapshots/packages/mipsel_24kc/base/libcap-bin_2.48-1_mipsel_24kc.ipk
opkg install /tmp/libcap-bin_*.ipk

# install luci-app-openclash, will try to get latest version later
#https://github.com/vernesong/OpenClash/releases
wget --no-check-certificate https://github.com/vernesong/OpenClash/releases/download/v0.42.05-beta/luci-app-openclash_0.42.05-beta_all.ipk
opkg install /tmp/luci-app-openclash_*.ipk

# install openclash core, this script will download latest version openclash core.
mkdir -p /etc/openclash/core/
cd /etc/openclash/core/
clash_main_url=$(curl -sL https://api.github.com/repos/vernesong/OpenClash/releases/tags/Clash | grep /clash-linux-mipsle-hardfloat | sed 's/.*url\": \"//g' | sed 's/\"//g')
wget $clash_main_url && tar zxvf clash-linux-*.tar.gz && rm -f clash-linux-*.gz
