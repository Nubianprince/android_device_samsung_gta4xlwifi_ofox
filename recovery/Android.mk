LOCAL_PATH := $(call my-dir)

include $(CLEAR_VARS)
LOCAL_MODULE := init.recovery.exynos9611
LOCAL_SRC_FILES := init.recovery.exynos9611.rc
LOCAL_MODULE_TAGS := optional
LOCAL_MODULE_STEM := init.recovery.exynos9611
LOCAL_MODULE_SUFFIX := .rc
LOCAL_MODULE_CLASS := ETC
LOCAL_MODULE_PATH := $(TARGET_ROOT_OUT)
include $(BUILD_PREBUILT)

ifeq ($(TW_EXCLUDE_DEFAULT_USB_INIT), true)
include $(CLEAR_VARS)
LOCAL_MODULE := init.recovery.usb.rc
LOCAL_SRC_FILES := init.recovery.usb.rc
LOCAL_MODULE_TAGS := optional
LOCAL_MODULE_CLASS := RECOVERY_EXECUTABLES
LOCAL_MODULE_PATH := $(TARGET_ROOT_OUT)
include $(BUILD_PREBUILT)
endif
