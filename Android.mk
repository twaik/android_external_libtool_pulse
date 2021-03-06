LOCAL_PATH := $(call my-dir)
include $(CLEAR_VARS)

LOCAL_MODULE := libltdl_pulse
LOCAL_MODULE_FILENAME := libltdl
LOCAL_MODULE_TAGS := optional
LOCAL_CFLAGS := -DLTDL=1 -DLTDLOPEN=_PROGRAM_
LOCAL_SRC_FILES := \
	libltdl/loaders/dlopen.c \
	libltdl/loaders/preopen.c \
	libltdl/lt__alloc.c \
	libltdl/lt__argz.c \
	libltdl/lt_dlloader.c \
	libltdl/lt_error.c \
	libltdl/ltdl.c \
	libltdl/slist.c

LOCAL_C_INCLUDES := $(LOCAL_PATH) $(LOCAL_PATH)/libltdl $(LOCAL_PATH)/libltdl/libltdl
LOCAL_EXPORT_C_INCLUDES := $(LOCAL_PATH)/libltdl
LOCAL_MULTILIB := 32
include $(BUILD_STATIC_LIBRARY)
