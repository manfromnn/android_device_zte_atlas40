CyanogenMod 11 device configuration for ZTE V 790.

How to build:
-------------

Initialize repo:

    repo init -u git://github.com/CyanogenMod/android.git -b cm-11.0
    curl --create-dirs -L -o .repo/local_manifests/local_manifest.xml -O -L https://raw.githubusercontent.com/manfromnn/android_local_manifest/cm-11.0/local_manifest.xml
    repo sync

Compile:

    cd vendor/cm && ./get-prebuilts
    cd ../../device/zte/roamer2 && ./setup-makefiles.sh
    cd ../../..
    . build/envsetup.sh && brunch cm_roamer2-userdebug -j3
