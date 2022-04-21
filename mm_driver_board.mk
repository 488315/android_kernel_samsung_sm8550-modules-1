#SPDX-License-Identifier: GPL-2.0-only

ifneq ($(TARGET_BOARD_AUTO),true)
	ifeq ($(call is-board-platform-in-list,$(TARGET_BOARD_PLATFORM)),true)
		BOARD_VENDOR_KERNEL_MODULES += $(KERNEL_MODULES_OUT)/msm_ext_display.ko \
					       $(KERNEL_MODULES_OUT)/msm_hw_fence.ko
		BOARD_VENDOR_RAMDISK_KERNEL_MODULES += $(KERNEL_MODULES_OUT)/msm_ext_display.ko \
						       $(KERNEL_MODULES_OUT)/msm_hw_fence.ko
		BOARD_VENDOR_RAMDISK_RECOVERY_KERNEL_MODULES_LOAD += $(KERNEL_MODULES_OUT)/msm_ext_display.ko \
					                             $(KERNEL_MODULES_OUT)/msm_hw_fence.ko

		ifneq ($(TARGET_BOARD_PLATFORM), taro)
		BOARD_VENDOR_KERNEL_MODULES += $(KERNEL_MODULES_OUT)/sync_fence.ko
		BOARD_VENDOR_RAMDISK_KERNEL_MODULES += $(KERNEL_MODULES_OUT)/sync_fence.ko
		BOARD_VENDOR_RAMDISK_RECOVERY_KERNEL_MODULES_LOAD += $(KERNEL_MODULES_OUT)/sync_fence.ko
		endif
	endif
endif
