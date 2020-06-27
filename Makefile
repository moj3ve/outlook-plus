ARCHS = arm64 arm64e
TARGET = iphone:clang:12.2:10.0
INSTALL_TARGET_PROCESSES = Outlook-iOS Preferences

include $(THEOS)/makefiles/common.mk

TWEAK_NAME = outlookplus
outlookplus_FILES = $(wildcard *.xm *.m)
outlookplus_EXTRA_FRAMEWORKS = libhdev
outlookplus_CFLAGS = -fobjc-arc

include $(THEOS_MAKE_PATH)/tweak.mk

SUBPROJECTS += pref

include $(THEOS_MAKE_PATH)/aggregate.mk
