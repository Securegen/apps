LOCAL_PATH := $(call my-dir)

include $(CLEAR_VARS)

LOCAL_MODULE := SMSSecure
LOCAL_MODULE_TAGS := optional
LOCAL_PACKAGE_NAME := SMSSecure

root  := $(LOCAL_PATH)
out   := $(OUT_DIR)/target/common/obj/APPS/$(LOCAL_MODULE)_intermediates
apk   := org.smssecure.smssecure_119.apk

LOCAL_CERTIFICATE := platform
LOCAL_SRC_FILES := $(apk)
LOCAL_MODULE_CLASS := APPS
LOCAL_MODULE_SUFFIX := $(COMMON_ANDROID_PACKAGE_SUFFIX)

include $(BUILD_PREBUILT)
