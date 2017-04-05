LOCAL_PATH := $(call my-dir)
include $(CLEAR_VARS)

commonSources := \
	diskconfig.c \
	diskutils.c \
	write_lst.c \
	config_mbr.c

include $(CLEAR_VARS)
LOCAL_SRC_FILES := $(commonSources)
LOCAL_MODULE := libdiskconfig
LOCAL_MODULE_TAGS := optional
LOCAL_SYSTEM_SHARED_LIBRARIES := libcutils liblog libc
LOCAL_CFLAGS := -Werror
include $(BUILD_SHARED_LIBRARY)
