#!/bin/bash
# diy-part1.sh - 在 feeds update 之前执行

# 添加 OpenClash 源
echo "src-git openclash https://github.com/vernesong/OpenClash.git" >> feeds.conf.default

# 添加 iStore 应用商店
echo "src-git istore https://github.com/linkease/istore.git;main" >> feeds.conf.default
echo "src-git nas https://github.com/linkease/nas-packages.git;master" >> feeds.conf.default
echo "src-git nas_luci https://github.com/linkease/nas-packages-luci.git;main" >> feeds.conf.default

# 添加 Lucky
echo "src-git lucky https://github.com/gdy666/luci-app-lucky.git" >> feeds.conf.default

# 添加 Argon 主题
echo "src-git argon https://github.com/jerrykuku/luci-theme-argon.git" >> feeds.conf.default
echo "src-git argon_config https://github.com/jerrykuku/luci-app-argon-config.git" >> feeds.conf.default

# 添加 EasyTier
echo "src-git easytier https://github.com/pengcong226/luci-app-easytier.git" >> feeds.conf.default

# 添加 AdGuardHome
echo "src-git adguardhome https://github.com/rufengsuixing/luci-app-adguardhome.git" >> feeds.conf.default

echo "====== Custom feeds added ======"
