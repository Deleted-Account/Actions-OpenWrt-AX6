#!/bin/bash
#
# Copyright (c) 2019-2020 P3TERX <https://p3terx.com>
#
# This is free software, licensed under the MIT License.
# See /LICENSE for more information.
#
# https://github.com/P3TERX/Actions-OpenWrt
# File name: diy-part3.sh
# Description: OpenWrt DIY script part 3 (Before Update feeds)
#

mv AX6/favicon.ico openwrt/package/lean/luci-theme-ifit/files/htdocs/favicon.ico
mv AX6/logo.png openwrt/package/lean/luci-theme-ifit/files/htdocs/logo.png      
mv AX6/bg/main_bg.jpg openwrt/package/lean/luci-theme-ifit/files/htdocs/images/main_bg.jpg
mv AX6/bg/main_bg_5k.jpg openwrt/package/lean/luci-theme-ifit/files/htdocs/images/main_bg_5k.jpg
mv AX6/banner openwrt/package/base-files/files/etc/banner
