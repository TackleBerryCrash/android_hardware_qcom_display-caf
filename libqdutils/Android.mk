LOCAL_PATH := $(call my-dir)
include $(LOCAL_PATH)/../common.mk
include $(CLEAR_VARS)

LOCAL_MODULE                  := libqdutils
LOCAL_MODULE_TAGS             := optional
LOCAL_SHARED_LIBRARIES        := $(common_libs)
LOCAL_C_INCLUDES              := $(common_includes) $(kernel_includes)
<<<<<<< HEAD
LOCAL_CFLAGS                  := $(common_flags) -Wno-attributes -DLOG_TAG=\"qdutils\"
=======
LOCAL_CFLAGS                  := $(common_flags) -DLOG_TAG=\"qdutils\"
>>>>>>> f97c92e8fca71889b8feccf974cfffbc124c04fe
LOCAL_ADDITIONAL_DEPENDENCIES := $(common_deps)
LOCAL_SRC_FILES               := profiler.cpp mdp_version.cpp \
                                 idle_invalidator.cpp \
                                 comptype.cpp
<<<<<<< HEAD
=======
include $(BUILD_SHARED_LIBRARY)

include $(CLEAR_VARS)

LOCAL_COPY_HEADERS_TO           := qcom/display
LOCAL_COPY_HEADERS              := qdMetaData.h
LOCAL_MODULE_PATH               := $(TARGET_OUT_SHARED_LIBRARIES)
LOCAL_SHARED_LIBRARIES          := liblog libcutils
LOCAL_C_INCLUDES                := $(common_includes)
LOCAL_ADDITIONAL_DEPENDENCIES   := $(common_deps)
LOCAL_SRC_FILES                 := qdMetaData.cpp
LOCAL_CFLAGS                    := $(common_flags)
LOCAL_CFLAGS                    += -DLOG_TAG=\"DisplayMetaData\"
LOCAL_MODULE_TAGS               := optional
LOCAL_MODULE                    := libqdMetaData
>>>>>>> f97c92e8fca71889b8feccf974cfffbc124c04fe
include $(BUILD_SHARED_LIBRARY)

ifeq ($(TARGET_USES_QCOM_BSP),true)
include $(CLEAR_VARS)

LOCAL_COPY_HEADERS_TO           := qcom/display
LOCAL_COPY_HEADERS              := qdMetaData.h
LOCAL_MODULE_PATH               := $(TARGET_OUT_SHARED_LIBRARIES)
LOCAL_SHARED_LIBRARIES          := liblog libcutils
LOCAL_C_INCLUDES                := $(common_includes)
LOCAL_ADDITIONAL_DEPENDENCIES   := $(common_deps)
LOCAL_SRC_FILES                 := qdMetaData.cpp
LOCAL_CFLAGS                    := $(common_flags)
LOCAL_CFLAGS                    += -DLOG_TAG=\"DisplayMetaData\"
LOCAL_MODULE_TAGS               := optional
LOCAL_MODULE                    := libqdMetaData
include $(BUILD_SHARED_LIBRARY)
endif
