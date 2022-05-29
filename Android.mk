LOCAL_PATH := $(call my-dir)

ifeq ($(TARGET_DEVICE),viam1)

include $(call all-makefiles-under,$(LOCAL_PATH))

endif
