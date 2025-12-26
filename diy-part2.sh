#!/bin/bash
# diy-part2.sh - 在 feeds install 之后执行

# 修改默认 IP
sed -i 's/192.168.1.1/192.168.1.1/g' package/base-files/files/bin/config_generate

# 修改主机名
sed -i 's/OpenWrt/JDCloud-Asher/g' package/base-files/files/bin/config_generate

# 修改默认主题为 Argon
sed -i 's/luci-theme-bootstrap/luci-theme-argon/g' feeds/luci/collections/luci/Makefile

echo "====== diy-part2.sh executed ======"
