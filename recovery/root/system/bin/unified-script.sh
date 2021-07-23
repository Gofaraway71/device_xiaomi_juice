#!/system/bin/sh
# This script is needed to automatically set device props.


load_citrus()
{
    resetprop "ro.product.model" "POCO M3"
    resetprop "ro.product.name" "citrus"
    resetprop "ro.build.product" "citrus"
    resetprop "ro.product.device" "citrus"
    resetprop "ro.vendor.product.device" "citrus"
}

load_lime()
{
    lime_model_prop=$(getprop ro.product.model)
    resetprop "ro.product.model" "$lime_model_prop"
    resetprop "ro.product.name" "lime"
    resetprop "ro.build.product" "lime"
    resetprop "ro.product.device" "lime"
    resetprop "ro.vendor.product.device" "lime"
}

load_lime

project=$(getprop ro.boot.product.hardware.sku)
echo $project

case $project in
    "citrus")
        load_citrus
        ;;
    *)

esac

exit 0
