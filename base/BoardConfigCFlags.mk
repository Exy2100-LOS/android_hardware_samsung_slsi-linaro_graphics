#for Build Split

ifndef TARGET_SOC_BASE
	TARGET_SOC_BASE := $(TARGET_SOC)
endif

ifeq ($(BOARD_USES_VENDORIMAGE), true)
LOCAL_PROPRIETARY_MODULE := true
endif

ifeq ($(BOARD_DYNAMIC_RECOMPOSITION_DISABLED), true)
	LOCAL_CFLAGS += -DDYNAMIC_RECOMPOSITION_DISABLED
endif

ifeq ($(TARGET_USES_UNIVERSAL_LIBHWJPEG), true)
	LOCAL_CFLAGS += -DUSES_UNIVERSAL_LIBHWJPEG
endif

LOCAL_CFLAGS += -DUSES_GSCALER

ifeq ($(BOARD_USES_IP_SERVICE), true)
	LOCAL_CFLAGS += -DIP_SERVICE
endif

ifeq ($(BOARD_USES_HWC_SERVICES),true)
	LOCAL_CFLAGS += -DHWC_SERVICES
endif

ifeq ($(HWC_SKIP_VALIDATE),true)
	LOCAL_CFLAGS += -DHWC_SKIP_VALIDATE
endif

ifeq ($(HWC_SUPPORT_COLOR_TRANSFORM), true)
    LOCAL_CFLAGS += -DHWC_SUPPORT_COLOR_TRANSFORM
endif

ifeq ($(BOARD_USES_VIRTUAL_DISPLAY), true)
	LOCAL_CFLAGS += -DUSES_VIRTUAL_DISPLAY
endif

ifeq ($(BOARD_USES_DISABLE_COMPOSITIONTYPE_GLES), true)
	LOCAL_CFLAGS += -DUSES_DISABLE_COMPOSITIONTYPE_GLES
endif

ifeq ($(BOARD_USES_2MSC_FOR_WFD), true)
        LOCAL_CFLAGS += -DUSES_2MSC_FOR_WFD
endif

ifeq ($(BOARD_HDMI_INCAPABLE), true)
	LOCAL_CFLAGS += -DHDMI_INCAPABLE
endif

ifeq ($(BOARD_USES_DT), true)
	LOCAL_CFLAGS += -DUSES_DT
endif

ifeq ($(BOARD_USES_U4A),true)
	LOCAL_CFLAGS += -DUSES_U4A
endif

ifeq ($(BOARD_USES_WINDOW_UPDATE), true)
	LOCAL_CFLAGS += -DUSES_WINDOW_UPDATE
endif

ifeq ($(TARGET_USES_HWC2), true)
	LOCAL_CFLAGS += -DTARGET_USES_HWC2
endif

ifeq ($(BOARD_USES_HWC2), true)
	LOCAL_CFLAGS += -DUSES_HWC2
endif

ifeq ($(BOARD_USES_VPP), true)
	LOCAL_CFLAGS += -DUSES_VPP
endif

ifeq ($(BOARD_USES_VPP_V2), true)
	LOCAL_CFLAGS += -DUSES_VPP_V2
endif

ifeq ($(TARGET_SOC_BASE), exynos8890)
	LOCAL_CFLAGS += -DUSES_DECON_AFBC_DECODER
endif

ifeq ($(TARGET_SOC_BASE), exynos7570)
	LOCAL_CFLAGS += -DUSES_EXYNOS7570
endif

ifeq ($(TARGET_SOC_BASE), exynos7870)
	LOCAL_CFLAGS += -DUSES_EXYNOS7870
endif

ifeq ($(TARGET_ARCH), arm64)
	LOCAL_CFLAGS += -DUSES_ARCH_ARM64
endif

ifeq ($(BOARD_USES_DECON_64BIT_ADDRESS), true)
	LOCAL_CFLAGS += -DUSES_DECON_64BIT_ADDRESS
endif

ifeq ($(BOARD_USES_EXYNOS_AFBC_FEATURE), true)
	LOCAL_CFLAGS += -DUSES_AFBC_FEATURE
endif

ifeq ($(BOARD_USES_EXYNOS_GRALLOC_VERSION), 1)
LOCAL_CFLAGS += -DGRALLOC_VERSION1
endif

ifeq ($(BOARD_USES_EXYNOS_GRALLOC_VERSION), 3)
LOCAL_CFLAGS += -DGRALLOC_VERSION1
LOCAL_CFLAGS += -DGRALLOC_VERSION3
endif

ifeq ($(BOARD_USES_EXYNOS_GRALLOC_VERSION), 4)
LOCAL_CFLAGS += -DGRALLOC_VERSION1
LOCAL_CFLAGS += -DGRALLOC_VERSION4
endif

ifeq ($(BOARD_USES_EXTERNAL_DISPLAY_POWERMODE), true)
    LOCAL_CFLAGS += -DUSES_EXTERNAL_DISPLAY_POWERMODE
endif

ifeq ($(BOARD_USES_HDRUI_GLES_CONVERSION), true)
    LOCAL_CFLAGS += -DUSES_HDR_GLES_CONVERSION
endif

ifeq ($(BOARD_USES_DOZEMODE), true)
    LOCAL_CFLAGS += -DUSES_DOZEMODE
endif

ifeq ($(BOARD_USES_HWC_CPU_PERF_MODE), true)
    LOCAL_CFLAGS += -DUSES_HWC_CPU_PERF_MODE
endif

ifeq ($(BOARD_USES_DUAL_DISPLAY), true)
    LOCAL_CFLAGS += -DUSES_DUAL_DISPLAY
endif

ifneq ($(BOARD_MINIMUM_DISPLAY_BRIGHTNESS),)
    LOCAL_CFLAGS += -DMINIMUM_DISPLAY_BRIGHTNESS=$(BOARD_MINIMUM_DISPLAY_BRIGHTNESS)
endif

ifneq ($(BOARD_HWJPEG_ANDROID_VERSION),)
    LOCAL_CFLAGS += -DHWJPEG_ANDROID_VERSION=$(BOARD_HWJPEG_ANDROID_VERSION)
else
    LOCAL_CFLAGS += -DHWJPEG_ANDROID_VERSION=10
endif
