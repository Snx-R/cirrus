# add repo, dt, vt, kt etc.
repo init --depth=1 --no-repo-verify -u https://Sa-Sajjad:$ght@github.com/Nusantara-SiXtY-N9/android_manifest_nusa.git -b 10

git clone https://github.com/Sa-Sajjad/android_device_xiaomi_violet device/xiaomi/violet
git clone https://github.com/ResurrectionRemix-Devices/android_vendor_xiaomi_violet vendor/xiaomi/violet
git clone https://github.com/ResurrectionRemix-Devices/android_kernel_xiaomi_violet kernel/xiaomi/violet

# sync script
repo sync -j$(nproc --all) --no-clone-bundle --no-tags --optimized-fetch --prune
source build/envsetup.sh
export TZ=Asia/Dhaka
# export ALLOW_MISSING_DEPENDENCIES=true

lunch nad_violet-user
make installclean
# export SELINUX_IGNORE_NEVERALLOWS=true
# make api-stubs-docs || echo no problem
# make system-api-stubs-docs || echo no problem
# make test-api-stubs-docs || echo no problem
mka nad
export RELEASE=no
Snx-R
