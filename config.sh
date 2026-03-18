repo init -u https://github.com/ArrowOS-T/android_manifest.git -b arrow-13.1_ext
git clone https://github.com/Sa-Sajjad/manifest.git -b arrow-13 .repo/local_manifests
repo sync -c -j$(nproc --all) --force-sync --no-clone-bundle --no-tags

cd kernel/xiaomi/lavender
curl -LSs "https://raw.githubusercontent.com/KernelSU-Next/KernelSU-Next/next/kernel/setup.sh" | bash -s legacy
cd -

source build/envsetup.sh
lunch arrow_lavender-user
m bacon
Snx-R
