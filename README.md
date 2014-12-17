Device configuration to build [Firefox OS for ZTE V790]
How to build:
-------------

[Initialize B2G build environment:](https://developer.mozilla.org/en-US/docs/Mozilla/Firefox_OS/Preparing_for_your_first_B2G_build)

    git clone https://github.com/mozilla-b2g/B2G.git
    cd B2G
    ./config.sh inari

Add support for V790:

    curl -L -o 0001-add-roamer2-to-config.sh.patch -O -L https://raw.github.com/manfromnn/android_device_zte_atlas40/b2g/patches/0001-add-roamer2-to-config.sh.patch
    git am -3 0001-add-roamer2-to-config.sh.patch
    curl --create-dirs -L -o .repo/local_manifests/manifest_zte_roamer2.xml -O -L https://raw.github.com/manfromnn/android_device_zte_atlas40/b2g/patches/manifest_zte_roamer2.xml
    ./config.sh roamer2

Build:

    ./build.sh
