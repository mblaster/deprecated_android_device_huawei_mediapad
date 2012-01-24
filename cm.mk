## Specify phone tech before including full_phone
$(call inherit-product, vendor/cm/config/gsm.mk)

# Release name
PRODUCT_RELEASE_NAME := GN

# Inherit some common CM stuff.
$(call inherit-product, vendor/cm/config/common_full_phone.mk)

# Inherit device configuration
$(call inherit-product, device/huawei/mediapad/full_mediapad.mk)

## Device identifier. This must come after all inclusions
PRODUCT_DEVICE := mediapad
PRODUCT_NAME := cm_mediapad
PRODUCT_BRAND := Huawei
PRODUCT_MODEL := MediaPad

#Set build fingerprint / ID / Product Name ect.
# FAKE PYRAMID FOR NOW
PRODUCT_BUILD_PROP_OVERRIDES += PRODUCT_NAME=pyramid BUILD_ID=ITL41F BUILD_DISPLAY_ID=ITL41F BUILD_FINGERPRINT="htc_europe/htc_pyramid/pyramid:2.3.4/GRJ22/125597.2:user/release-keys" PRIVATE_BUILD_DESC="pyramid-user 4.0.1 ITL41F 228551 release-keys"
