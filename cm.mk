## Specify phone tech before including full_phone
$(call inherit-product, vendor/cm/config/gsm.mk)

## Inherit common CM stuff.
$(call inherit-product, vendor/cm/config/common_full_phone.mk)

## Inherit device files
$(call inherit-product, device/samsung/royss/royss.mk)

## Setup device configuration
PRODUCT_NAME := cm_royss
PRODUCT_BRAND := samsung
PRODUCT_MANUFACTURER := samsung
PRODUCT_MODEL := GT-S6310
PRODUCT_RELEASE_NAME := GT-S6310
PRODUCT_DEVICE := royss

## Bootanimation
TARGET_SCREEN_HEIGHT := 480
TARGET_SCREEN_WIDTH := 320

TARGET_UNOFFICIAL_BUILD_ID := Lesleyxxx15
