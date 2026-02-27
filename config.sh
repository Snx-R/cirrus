# add repo, dt, vt, kt etc.
repo init --depth=1 --no-repo-verify -u https://Sa-Sajjad:$ght@github.com/Nusantara-SiXtY-N9/android_manifest_nusa.git -b 10
# replace with your manifest
git clone https://github.com/Sa-Sajjad/manifest.git --depth 1 -b ten-ksu .repo/local_manifests
# sync script
repo sync -j$(nproc --all) --no-clone-bundle --no-tags --optimized-fetch --prune

source build/envsetup.sh
export USE_CCACHE=1
ccache -M 50G
ccache -s
export USE_GAPPS=true
lunch nad_lavender-user
make installclean
mka nad
export RELEASE=no
Snx-R
