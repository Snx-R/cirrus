# add repo, dt, vt, kt etc.
repo init --depth=1 --no-repo-verify -u https://Sa-Sajjad:$ght@github.com/Nusantara-SiXtY-N9/android_manifest_nusa.git -b 10
# sync script
repo sync -j$(nproc --all) --no-clone-bundle --no-tags --optimized-fetch --prune

rm -rf hardware/qcom-caf/sm8150/display; git clone https://github.com/LineageOS/android_hardware_qcom_display -b lineage-17.1-caf-sm8150 hardware/qcom-caf/sm8150/display
rm -rf hardware/qcom-caf/sm8150/media; git clone https://github.com/LineageOS/android_hardware_qcom_media -b lineage-17.1-caf-sm8150 hardware/qcom-caf/sm8150/media
rm -rf hardware/qcom-caf/sm8150/audio; git clone https://github.com/LineageOS/android_hardware_qcom_audio -b lineage-17.1-caf-sm8150 hardware/qcom-caf/sm8150/audio

git clone https://github.com/Sa-Sajjad/android_device_xiaomi_violet device/xiaomi/violet
git clone https://github.com/ResurrectionRemix-Devices/android_vendor_xiaomi_violet vendor/xiaomi/violet
git clone https://github.com/ResurrectionRemix-Devices/android_kernel_xiaomi_violet kernel/xiaomi/violet

source build/envsetup.sh
export TZ=Asia/Dhaka
lunch nad_violet-user
make installclean
mka nad
export RELEASE=no
Snx-R
