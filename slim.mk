$(call inherit-product, device/htc/vision/full_vision.mk)

PRODUCT_RELEASE_NAME := vision

# Inherit some common SLIM stuff.
$(call inherit-product, vendor/slim/config/gsm.mk)

# Enhanced NFC
$(call inherit-product, vendor/slim/config/nfc_enhanced.mk)

# Inherit some common SLIM stuff.
$(call inherit-product, vendor/slim/config/common_full_phone.mk)

# Inherit torch settings
$(call inherit-product, vendor/slim/config/common_ledflash.mk)

PRODUCT_COPY_FILES +=  \
    vendor/slim/prebuilt/hdpi/bootanimation.zip:system/media/bootanimation.zip

PRODUCT_BUILD_PROP_OVERRIDES += PRODUCT_NAME=htc_vision BUILD_FINGERPRINT=htc_wwe/htc_vision/vision:4.2.2/JDQ39/87995:user/release-keys PRIVATE_BUILD_DESC="4.2.2 Andromadus release-keys"

PRODUCT_NAME := slim_vision
PRODUCT_DEVICE := vision
PRODUCT_MANUFACTURER := HTC
