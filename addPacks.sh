#!/bin/bash

if [ -z ${CM_HOME+x} ]; then read -p "Enter the path to the build dir: " -e CM_HOME; fi

CM_PACKAGES=$CM_HOME/packages/apps
CM_COMMON_FULL=$CM_HOME/vendor/cm/config/common_full.mk

cp -R */ $CM_PACKAGES

if grep -Fxq "#Packages included by Securegen" $CM_COMMON_FULL
then
    echo "Packs already added."
else
    cat secGenPacks.txt >> $CM_COMMON_FULL
fi



