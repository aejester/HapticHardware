INSTALL_TARGET_PROCESSES = SpringBoard

include $(THEOS)/makefiles/common.mk

TWEAK_NAME = HapticHardware

HapticHardware_FILES = Tweak.x
HapticHardware_CFLAGS = -fobjc-arc
HapticHardware_EXTRA_FRAMEWORKS += Cephei

include $(THEOS_MAKE_PATH)/tweak.mk
SUBPROJECTS += hapticprefs
include $(THEOS_MAKE_PATH)/aggregate.mk
