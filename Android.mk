LOCAL_PATH:= $(call my-dir)
include $(CLEAR_VARS)

LOCAL_MODULE_TAGS:= optional
LOCAL_C_INCLUDES := $(KERNEL_HEADERS) bionic

LOCAL_SRC_FILES:= linux-fincore.c
LOCAL_MODULE:= linux-fincore
LOCAL_CFLAGS:= -Wall -O2 --pedantic --std=c99
LOCAL_SHARED_LIBRARIES :=   \
    libutils                \
    libc                    \
    libcutils               \
    liblog
LOCAL_STATIC_LIBRARIES:=

include $(BUILD_EXECUTABLE)
