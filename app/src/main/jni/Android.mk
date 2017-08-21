LOCAL_PATH := $(call my-dir)

# Program
include $(CLEAR_VARS)
LOCAL_MODULE := hello
LOCAL_SRC_FILES := src/hello/hello.c
LOCAL_C_INCLUDES += $(LOCAL_PATH)
LOCAL_LDLIBS := -llog -lz
include $(BUILD_SHARED_LIBRARY)

# Second
include $(CLEAR_VARS)
LOCAL_MODULE := second
LOCAL_SRC_FILES := src/second/second-lib.c
LOCAL_C_INCLUDES += $(LOCAL_PATH)
LOCAL_LDLIBS := -llog -lz
include $(BUILD_SHARED_LIBRARY)