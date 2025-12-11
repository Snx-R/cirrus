# add repo, dt, vt, kt etc.
repo init -u ssh://git@github.com/keepQASSA/manifest -b Q --git-lfs
# replace with your manifest
git clone https://github.com/Sa-Sajjad/manifest.git -b qassa .repo/local_manifests
# sync script
repo sync -c -j$(nproc --all) --force-sync --no-clone-bundle --no-tags
source build/envsetup.sh
export TZ=Asia/Dhaka
lunch qassa_lavender-user
mka qassa
export RELEASE=no
Snx-R