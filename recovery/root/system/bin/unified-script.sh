#!/system/bin/sh
# This script is needed to automatically set device props.


load_citrus()
{
    resetprop "ro.product.model" "Pocophone M3"
    resetprop "ro.product.name" "citrus"
    resetprop "ro.build.product" "citrus"
    resetprop "ro.product.device" "citrus"
    resetprop "ro.vendor.product.device" "citrus"
}

load_lime()
{
    resetprop "ro.product.model" "Redmi 9 Power"
    resetprop "ro.product.name" "lime"
    resetprop "ro.build.product" "lime"
    resetprop "ro.product.device" "lime"
    resetprop "ro.vendor.product.device" "lime"
}

load_pomelo()
{
    resetprop "ro.product.model" "Redmi 9T"
    resetprop "ro.product.name" "pomelo"
    resetprop "ro.build.product" "pomelo"
    resetprop "ro.product.device" "pomelo"
    resetprop "ro.vendor.product.device" "pomelo"
}



project=$(getprop ro.boot.product.hardware.sku)
echo $project

case $project in
    "citrus")
        load_citrus
        ;;
    "lime")
        load_lime
        ;;
    "pomelo")
        load_pomelo
        ;;
    *)

esac

exit 0
