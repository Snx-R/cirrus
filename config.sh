repo init --depth=1 --no-repo-verify --git-lfs -u https://github.com/ArrowOS-T/android_manifest.git -b arrow-13.1_ext -g default,-mips,-darwin,-notdefault
git clone https://github.com/Sa-Sajjad/manifest.git -b arrow-13 .repo/local_manifests
repo sync -c -j$(nproc --all) --force-sync --no-clone-bundle --no-tags

# cd kernel/xiaomi/lavender
# curl -LSs "https://raw.githubusercontent.com/KernelSU-Next/KernelSU-Next/next/kernel/setup.sh" | bash -s v3.1.0-legacy
# cd -

wget https://archive.ubuntu.com/ubuntu/pool/universe/n/ncurses/libtinfo5_6.3-2_amd64.deb && sudo dpkg -i libtinfo5_6.3-2_amd64.deb
wget https://archive.ubuntu.com/ubuntu/pool/universe/n/ncurses/libncurses5_6.3-2_amd64.deb && sudo dpkg -i libncurses5_6.3-2_amd64.deb
rm -f libncurses5_6.3-2_amd64.deb libtinfo5_6.3-2_amd64.deb

rm -rf system/bpfprogs
repo sync system/bpfprogs

source build/envsetup.sh
lunch arrow_lavender-user
m bacon
Snx-R
