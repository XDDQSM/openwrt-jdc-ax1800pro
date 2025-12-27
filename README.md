# 京东云亚瑟 (JDC AX1800 Pro) 定制 OpenWrt 固件

> ⚠️ ⚠️ **基于原生NSS分支，支持 IPQ6018 主频满血 1.8GHz 运行** ⚠️ ⚠️

[![Build OpenWrt](https://github.com/pengcong226/openwrt-jdc-ax1800pro/actions/workflows/build-openwrt.yml/badge.svg)](https://github.com/pengcong226/openwrt-jdc-ax1800pro/actions)

---

## ⚡️刷机警告

> ‼️ **从 Hwrt/京东云官方固件切换本固件，禁止使用 `sysupgrade` 命令！**
> 
> 分区布局与数据结构可能完全不同，直接升级很可能变砖！

### 正确方法：U-Boot 刷入

1. **进入 U-Boot**: 断电后按住路由器背后 Reset 按钮，插电
2. **计算机连接**: 网线接入 LAN 口，给本机分配静态 IP `192.168.1.2`
3. **浏览器访问**: `http://192.168.1.1` 进入 U-Boot Web 界面
4. **上传固件**: 选择 `*-factory.bin` 文件刷入
5. 等待约 3 分钟，路由器自动重启

---

## ✅ 包含功能

| 类别 | 组件 | 说明 |
|------|------|------|
| Proxy | **OpenClash** | 深度路由代理 (内置 clash core) |
| Store | **iStoreOS** | 沉浸式插件商店，手机界面更友好 |
| DDNS/NAT | **Lucky** | 动态域名解析, 内网穿透, 自动证书 |
| 多网聚合 | **mwan3** | 策略基础负载均衡 (5G + 光纤) |
| 5G 驱动 | **qmi-wwan, usb-modeswitch, quectel-CM** | 支持移远/广和通等模块 |

---

## 📥 下载固件

点击页面顶部的 **✓ Build OpenWrt** 徽章，进入历史构建列表：

1. 选择最新一次 **绿色对勾 ✓** 的 workflow run
2. 滚动到页面底部 **Artifacts** 区域
3. 点击 `openwrt-ipq60xx-firmware` 下载压缩包
4. 解压后选择 `*-factory.bin`（U-Boot 刷入）或 `*-sysupgrade.bin`（同系统升级）

---

## 📋 编译信息

- **目标平台**: Qualcomm IPQ60xx (Cortex-A53 @ 1.8GHz)
- **内核版本**: 5.4.x (NSS 满血分支)
- **编译环境**: Ubuntu 22.04, GCC 13, musl libc

---

## 🙏 致谢

- [OpenWrt](https://openwrt.org/)
- IPQ60xx NSS 社区开发者
- 各位插件作者

---

> ⚠️ 本固件仅供学习交流，刷机有风险，后果自负。
