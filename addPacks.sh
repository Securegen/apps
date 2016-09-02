#!/bin/bash -e

if [ -z ${cmHome+x} ]; then read -p "Enter the path to the build dir: " -e cmHome; fi

cmPackages=$cmHome/packages/apps
cmCommonFull=$cmHome/vendor/cm/config/common_full.mk

cp -R */ $cmPackages

if grep -Fxq "#Packages included by Securegen" $cmCommonFull
then
    echo "Packs already added."
else
    cat secGenPacks.txt >> $cmCommonFull
fi
