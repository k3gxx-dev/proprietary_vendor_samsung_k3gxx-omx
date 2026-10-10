# Copyright (C) 2026 The LineageOS Project
#
# MFC firmware for Samsung Galaxy S5 3G (k3gxx)

OMX_DIR := vendor/samsung/k3gxx/omx

PRODUCT_COPY_FILES += \
    $(OMX_DIR)/proprietary/vendor/firmware/mfc_fw.bin:$(TARGET_COPY_OUT_VENDOR)/firmware/mfc_fw.bin
