ifneq ($(TARGET_SIMULATOR),true)

LOCAL_PATH := $(call my-dir)

i2c_includes := $(LOCAL_PATH)/include $(LOCAL_PATH)/kernel

# i2cdetect
include $(CLEAR_VARS)

LOCAL_SRC_FILES := \
	tools/i2cdetect.c \
	tools/i2cbusses.c

LOCAL_C_INCLUDES := $(i2c_includes)
LOCAL_MODULE := i2cdetect
LOCAL_MODULE_TAGS := optional

include $(BUILD_EXECUTABLE)

# i2cdump
include $(CLEAR_VARS)

LOCAL_SRC_FILES := \
	tools/i2cdump.c \
	tools/i2cbusses.c \
	tools/util.c

LOCAL_C_INCLUDES := $(i2c_includes)
LOCAL_MODULE := i2cdump
LOCAL_MODULE_TAGS := optional

include $(BUILD_EXECUTABLE)

# i2cset
include $(CLEAR_VARS)

LOCAL_SRC_FILES := \
	tools/i2cset.c \
	tools/i2cbusses.c \
	tools/util.c

LOCAL_C_INCLUDES := $(i2c_includes)
LOCAL_MODULE := i2cset
LOCAL_MODULE_TAGS := optional

include $(BUILD_EXECUTABLE)

# i2cget
include $(CLEAR_VARS)

LOCAL_SRC_FILES := \
	tools/i2cget.c \
	tools/i2cbusses.c \
	tools/util.c

LOCAL_C_INCLUDES := $(i2c_includes)
LOCAL_MODULE := i2cget
LOCAL_MODULE_TAGS := optional

include $(BUILD_EXECUTABLE)

endif
