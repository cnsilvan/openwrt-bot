#!/bin/bash
git clone https://github.com/coolsnowwolf/lede.git --depth=1 ./tmp/lede
mkdir -p ./tmp/lede/package/third/
rm -rf ./tmp/lede/package/lean/luci-theme-argon/
rm -rf ./tmp/lede/package/lean/UnblockNeteaseMusicGo/
rm -rf ./tmp/lede/package/lean/UnblockNeteaseMusic/
rm -rf ./tmp/lede/package/lean/luci-app-unblockmusic/
rm -rf ./tmp/lede/package/lean/k3screenctrl/
cd ./tmp/lede/package/third/
git clone https://github.com/lwz322/luci-app-k3screenctrl.git
git clone https://github.com/lwz322/k3screenctrl_build.git
git clone https://github.com/cnsilvan/luci-app-unblockneteasemusic.git
git clone https://github.com/tty228/luci-app-serverchan.git
git clone https://github.com/fw876/helloworld.git
git clone https://github.com/lisaac/luci-app-dockerman.git
git clone https://github.com/frainzy1477/luci-app-clash.git
git clone -b 18.06 https://github.com/jerrykuku/luci-theme-argon.git
pushd luci-app-clash/tools/po2lmo
make && sudo -E make install
popd
po2lmo ./luci-app-clash/po/zh-cn/clash.po ./luci-app-clash/po/zh-cn/clash.zh-cn.lmo
touch ./tmp/lede/body.md
echo '[bot] automatically publish packages compiled with the latest source code' > ./tmp/lede/body.md
echo '[bot] this tag will always be up to date' >> ./tmp/lede/body.md
echo "[bot] latest build time : $(date '+%Y-%m-%d %H:%M:%S')" >> ./tmp/lede/body.md