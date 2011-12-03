# Inherit device configuration for daytona.
$(call inherit-product, device/motorola/daytona/daytona.mk)

# Inherit some common cyanogenmod stuff.
$(call inherit-product, vendor/cyanogen/products/common_full.mk)

#
# Setup device specific product configuration.
#
PRODUCT_NAME := cyanogen_daytona
PRODUCT_BRAND := motorola
PRODUCT_DEVICE := daytona
PRODUCT_MODEL := MB870
PRODUCT_MANUFACTURER := Motorola
PRODUCT_BUILD_PROP_OVERRIDES += PRODUCT_BRAND=MOTO PRODUCT_NAME=daytona BUILD_ID=4.5.1A-DTN-150-30 BUILD_PRODUCT=daytona BUILD_FINGERPRINT=verizon/daytona/daytona:2.3.4/4.5.1A-DTN-150-30/0:user/release-keys PRIVATE_BUILD_DESC="daytona-user 2.3.4 4.5.1A-DTN-150-30 0 release-keys"

PRODUCT_RELEASE_NAME := Daytona
PRODUCT_VERSION_DEVICE_SPECIFIC :=
-include vendor/cyanogen/products/common_versions.mk

#
# Copy hdpi specific prebuilt files
#
PRODUCT_COPY_FILES +=  \
    vendor/cyanogen/prebuilt/hdpi/media/bootanimation.zip:system/media/bootanimation.zip
