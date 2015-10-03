$(call inherit-product, device/motorola/titan/full_titan.mk)

# Inherit some common fusion stuff.
$(call inherit-product, vendor/fusion/config/common_phone.mk)

PRODUCT_RELEASE_NAME := titan
PRODUCT_NAME := titan

PRODUCT_GMS_CLIENTID_BASE := android-motorola
