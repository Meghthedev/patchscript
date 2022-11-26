#!/bin/bash

#Script to automatically patch rom source for legacy devices

echo run this in the root of your rom folder!

echo "what is the name of the rom (from the vendor repo)":-
read romname 

romdir=$(pwd)

echo art:
    cd art &&
    git fetch https://github.com/LineageOS/android_art refs/changes/97/318097/1 && git cherry-pick FETCH_HEAD &&

echo external/perfetto
    cd $romdir/external/perfetto &&
    git fetch https://github.com/LineageOS/android_external_perfetto refs/changes/06/287706/8 && git cherry-pick FETCH_HEAD &&

echo frameworks/native:
    cd $romdir/frameworks/native &&
    git fetch https://github.com/LineageOS/android_frameworks_native refs/changes/34/321934/2 && git cherry-pick FETCH_HEAD && 
    git fetch https://github.com/LineageOS/android_frameworks_native refs/changes/14/320514/2 && git cherry-pick FETCH_HEAD &&
    git fetch https://github.com/LineageOS/android_frameworks_native refs/changes/67/309767/4 && git cherry-pick FETCH_HEAD &&
    git fetch https://github.com/LineageOS/android_frameworks_native refs/changes/66/309766/1 && git cherry-pick FETCH_HEAD && 

echo system/bpf:
    cd $romdir/system/bpf &&
    git fetch https://github.com/LineageOS/android_system_bpf refs/changes/91/320591/2 && git cherry-pick FETCH_HEAD &&

    echo system/netd
    cd $romdir/system/netd &&
    git fetch https://github.com/LineageOS/android_system_netd refs/changes/92/320592/2 && git cherry-pick FETCH_HEAD && 

echo packages/modules/adb: 
    cd $romdir/packages/modules/adb &&
    git fetch https://github.com/LineageOS/android_packages_modules_adb refs/changes/85/326385/3 && git cherry-pick FETCH_HEAD && 

echo frameworks/base:
    cd $romdir/frameworks/base &&
    git fetch https://github.com/LineageOS/android_frameworks_base refs/changes/26/320526/1 && git cherry-pick FETCH_HEAD &&
    git fetch https://github.com/LineageOS/android_frameworks_base refs/changes/45/320545/1 && git cherry-pick FETCH_HEAD && 
    git fetch https://github.com/LineageOS/android_frameworks_base refs/changes/16/318816/1 && git cherry-pick FETCH_HEAD &&
    git fetch https://github.com/LineageOS/android_frameworks_base refs/changes/45/320545/1 && git cherry-pick FETCH_HEAD
 
 echo system/core: 
    cd $romdir/system/core &&
    git fetch https://github.com/LineageOS/android_system_core refs/changes/17/318817/1 && git cherry-pick FETCH_HEAD &&

echo frameworks/av:
    cd $romdir/frameworks/av &&
    git fetch https://github.com/LineageOS/android_frameworks_av refs/changes/14/318814/1 && git cherry-pick FETCH_HEAD &&
    git fetch https://github.com/LineageOS/android_frameworks_av refs/changes/15/318815/1 && git cherry-pick FETCH_HEAD &&
    git fetch https://github.com/LineageOS/android_frameworks_av refs/changes/27/320527/1 && git cherry-pick FETCH_HEAD &&
    git fetch https://github.com/LineageOS/android_frameworks_av refs/changes/28/320528/1 && git cherry-pick FETCH_HEAD &&
    git fetch https://github.com/LineageOS/android_frameworks_av refs/changes/29/320529/1 && git cherry-pick FETCH_HEAD &&
    git fetch https://github.com/LineageOS/android_frameworks_av refs/changes/30/320530/1 && git cherry-pick FETCH_HEAD &&
    git fetch https://github.com/LineageOS/android_frameworks_av refs/changes/25/320525/1 && git cherry-pick FETCH_HEAD &&
    git fetch https://github.com/LineageOS/android_frameworks_av refs/changes/36/320536/1 && git cherry-pick FETCH_HEAD &&
    git fetch https://github.com/LineageOS/android_frameworks_av refs/changes/44/320544/1 && git cherry-pick FETCH_HEAD &&
    git fetch https://github.com/LineageOS/android_frameworks_av refs/changes/43/320543/1 && git cherry-pick FETCH_HEAD &&
    git fetch https://github.com/LineageOS/android_frameworks_av refs/changes/42/320542/1 && git cherry-pick FETCH_HEAD &&
    git fetch https://github.com/LineageOS/android_frameworks_av refs/changes/41/320541/1 && git cherry-pick FETCH_HEAD &&
    git fetch https://github.com/LineageOS/android_frameworks_av refs/changes/40/320540/1 && git cherry-pick FETCH_HEAD &&
    git fetch https://github.com/LineageOS/android_frameworks_av refs/changes/39/320539/1 && git cherry-pick FETCH_HEAD &&
    git fetch https://github.com/LineageOS/android_frameworks_av refs/changes/38/320538/1 && git cherry-pick FETCH_HEAD &&
    git fetch https://github.com/LineageOS/android_frameworks_av refs/changes/37/320537/1 && git cherry-pick FETCH_HEAD &&
    git fetch https://github.com/LineageOS/android_frameworks_av refs/changes/35/320535/1 && git cherry-pick FETCH_HEAD &&
    git fetch https://github.com/LineageOS/android_frameworks_av refs/changes/34/320534/1 && git cherry-pick FETCH_HEAD &&
    git fetch https://github.com/LineageOS/android_frameworks_av refs/changes/33/320533/1 && git cherry-pick FETCH_HEAD &&

echo hardware/interfaces:
    cd $romdir/hardware/interfaces &&
    git fetch https://github.com/LineageOS/android_hardware_interfaces refs/changes/31/320531/1 && git cherry-pick FETCH_HEAD &&
    git fetch https://github.com/LineageOS/android_hardware_interfaces refs/changes/32/320532/1 && git cherry-pick FETCH_HEAD && 

echo vendor/$romname:    
    cd $romdir/vendor/$romname &&
    git fetch https://github.com/LineageOS/android_vendor_lineage refs/changes/46/320546/1 && git cherry-pick FETCH_HEAD &&
    git fetch https://github.com/LineageOS/android_vendor_lineage refs/changes/65/309765/1 && git cherry-pick FETCH_HEAD &&
    git fetch https://github.com/LineageOS/android_vendor_lineage && git revert f224255cd9869d289e9d3a186a40c51d1ea8876c &&

echo system/sepolicy:
    cd $romdir/system/sepolicy &&
    git fetch https://github.com/LineageOS/android_system_sepolicy refs/changes/33/320333/6 && git cherry-pick FETCH_HEAD &&
    git fetch https://github.com/LineageOS/android_system_sepolicy refs/changes/05/324005/8 && git cherry-pick FETCH_HEAD &&
    git fetch https://github.com/LineageOS/android_system_sepolicy refs/changes/06/324006/7 && git cherry-pick FETCH_HEAD && 

echo hardware/$romname/interfaces:
    cd $romdir/hardware/$romname/interfaces &&
    git fetch https://github.com/LineageOS/android_hardware_lineage_interfaces refs/changes/87/325387/1 && git cherry-pick FETCH_HEAD &&
    
cd $romdir &&
     echo Done!



