#!/bin/bash

# Add packages
git clone https://github.com/ophub/luci-app-amlogic --depth=1 clone/amlogic
git clone https://github.com/xiaorouji/openwrt-passwall --depth=1 clone/passwall
git clone https://github.com/vernesong/OpenClash --depth=1 clone/openclash
git clone https://pkgs.org/download/luci-i18n-ttyd-zh-cn --depth=1 clone/luci-i18n-ttyd-zh-cn
# Update packages
rm -rf feeds/luci/applications/luci-app-passwall
cp -rf clone/amlogic/luci-app-amlogic clone/passwall/luci-app-passwall feeds/luci/applications/
cp -rf clone/openclash/luci-app-openclash feeds/luci/applications/
cp -rf clone/luci/applications/luci-i18n-ttyd-zh-cn feeds/luci/applications/
# Clean packages
rm -rf clone
