ARCHS = arm64 arm64e # So your tweak can target 64bit device from A7 to A13 devices

INSTALL_TARGET_PROCESSES = SpringBoard

export TARGET = iphone:clang:13.0:12.0 #for tweaks target (iOS 12 & iOS 13)

THEOS_DEVICE_IP = your IP here

include $(THEOS)/makefiles/common.mk

TWEAK_NAME = HapticHardware

HapticHardware_FILES = Tweak.x
HapticHardware_CFLAGS = -fobjc-arc
HapticHardware_EXTRA_FRAMEWORKS += Cephei

include $(THEOS_MAKE_PATH)/tweak.mk
SUBPROJECTS += hapticprefs
include $(THEOS_MAKE_PATH)/aggregate.mk
