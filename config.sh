# add repo, dt, vt, kt etc.
repo init --depth=1 --no-repo-verify -u https://Sa-Sajjad:$ght@github.com/Nusantara-SiXtY-N9/android_manifest_nusa.git -b 10
# replace with your manifest
git clone https://github.com/Sa-Sajjad/manifest.git --depth 1 -b ten-ksu .repo/local_manifests
# sync script
repo sync -j$(nproc --all) --no-clone-bundle --no-tags --optimized-fetch --prune

source build/envsetup.sh
cd vendor/xiaomi/lavender
git switch ten
git reset --hard HEAD~3
cd -
cd device/xiaomi/lavender
bash setup-makesfiles.sh
cd -
cd vendor/xiaomi/lavender
git add .;git commit -sm "lavender: sync with device tree";git push -f
lunch nad_lavender-user
Snx-R
