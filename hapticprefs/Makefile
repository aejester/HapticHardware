include $(THEOS)/makefiles/common.mk

BUNDLE_NAME = hapticprefs

hapticprefs_FILES = AEJESTERRootListController.m
hapticprefs_INSTALL_PATH = /Library/PreferenceBundles
hapticprefs_FRAMEWORKS = UIKit
hapticprefs_PRIVATE_FRAMEWORKS = Preferences
hapticprefs_CFLAGS = -fobjc-arc

include $(THEOS_MAKE_PATH)/bundle.mk

internal-stage::
	$(ECHO_NOTHING)mkdir -p $(THEOS_STAGING_DIR)/Library/PreferenceLoader/Preferences$(ECHO_END)
	$(ECHO_NOTHING)cp entry.plist $(THEOS_STAGING_DIR)/Library/PreferenceLoader/Preferences/hapticprefs.plist$(ECHO_END)
