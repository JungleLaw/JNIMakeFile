LOCAL_PATH := $(call my-dir)

# first lib
include $(CLEAR_VARS)
LOCAL_MODULE := hello
LOCAL_SRC_FILES := src/hello/hello.c
#LOCAL_SRC_FILES := $(wildcard $(LOCAL_PATH)/*.C)
LOCAL_C_INCLUDES += $(LOCAL_PATH)
LOCAL_LDLIBS := -llog -lz
include $(BUILD_SHARED_LIBRARY)

# 共享库PREBUILT_SHARED_LIBRARY
include $(CLEAR_VARS)
LOCAL_MODULE := MD5
LOCAL_SRC_FILES := $(LOCAL_PATH)/lib/$(TARGET_ARCH_ABI)/libMD5.so
include $(PREBUILT_SHARED_LIBRARY)

# Second lib
include $(CLEAR_VARS)
#库名称
LOCAL_MODULE := second
#库源文件列表
LOCAL_SRC_FILES := src/second/second-lib.c
#共享库头文件
LOCAL_C_INCLUDES += $(LOCAL_PATH)/include
LOCAL_LDLIBS := -llog -lz
#引入共享库
LOCAL_SHARED_LIBRARIES := MD5
include $(BUILD_SHARED_LIBRARY)