LOCAL_PATH := $(call my-dir)

# Program
include $(CLEAR_VARS)
LOCAL_MODULE := hello
#LOCAL_SRC_FILES := src/hello/hello.c
LOCAL_SRC_FILES := $(wildcard $(LOCAL_PATH)/*.C)
LOCAL_C_INCLUDES += $(LOCAL_PATH)
LOCAL_LDLIBS := -llog -lz
include $(BUILD_SHARED_LIBRARY)

# STATIC library
include $(CLEAR_VARS)
LOCAL_MODULE := MD5
LOCAL_SRC_FILES := $(LOCAL_PATH)/lib/$(TARGET_ARCH_ABI)/libMD5.so
include $(PREBUILT_SHARED_LIBRARY)

# Second
include $(CLEAR_VARS)
LOCAL_MODULE := second
LOCAL_SRC_FILES := src/second/second-lib.c
LOCAL_C_INCLUDES += $(LOCAL_PATH)/include
LOCAL_LDLIBS := -llog -lz
LOCAL_SHARED_LIBRARIES := MD5
include $(BUILD_SHARED_LIBRARY)