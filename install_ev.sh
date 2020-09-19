docker rmi `docker images -q`
sudo rm -rf /usr/share/dotnet /etc/mysql /etc/php /etc/apt/sources.list.d
sudo -E apt-get -y purge azure-cli ghc* zulu* hhvm llvm* firefox google* dotnet* powershell openjdk* mysql* php* android*
sudo -E apt-get update
sudo -E apt-get -y install build-essential asciidoc binutils bzip2 gawk gettext git libncurses5-dev libz-dev patch python3 unzip zlib1g-dev lib32gcc1 libc6-dev-i386 subversion flex uglifyjs gcc-multilib g++-multilib p7zip p7zip-full msmtp libssl-dev texinfo libglib2.0-dev xmlto qemu-utils upx libelf-dev autoconf automake libtool autopoint device-tree-compiler antlr3 gperf swig
sudo -E apt-get -y autoremove --purge
sudo -E apt-get clean
# sudo mkdir -p -m 777 /mnt/openwrt/bin /mnt/openwrt/build_dir/host /mnt/openwrt/build_dir/hostpkg /mnt/openwrt/dl /mnt/openwrt/feeds /mnt/openwrt/staging_dir
# ln -s /mnt/openwrt/bin ./bin
# mkdir -p ./build_dir
# ln -s -f /mnt/openwrt/build_dir/host ./build_dir/host
# ln -s -f /mnt/openwrt/build_dir/hostpkg ./build_dir/hostpkg
# ln -s /mnt/openwrt/dl ./dl
# ln -s /mnt/openwrt/feeds ./feeds
# ln -s /mnt/openwrt/staging_dir ./staging_dir
df -h