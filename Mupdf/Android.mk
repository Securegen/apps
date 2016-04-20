LOCAL_PATH := $(call my-dir)

include $(CLEAR_VARS)

LOCAL_MODULE := Mupdf
LOCAL_MODULE_TAGS := optional
LOCAL_PACKAGE_NAME := Mupdf

root  := $(LOCAL_PATH)
out   := $(OUT_DIR)/target/common/obj/APPS/$(LOCAL_MODULE)_intermediates
apk   := com.artifex.mupdfdemo_83.apk

LOCAL_CERTIFICATE := platform
LOCAL_SRC_FILES := $(apk)
LOCAL_MODULE_CLASS := APPS
LOCAL_MODULE_SUFFIX := $(COMMON_ANDROID_PACKAGE_SUFFIX)

include $(BUILD_PREBUILT)
