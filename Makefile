FINALPACKAGE = 1
DEBUG = 0

INSTALL_TARGET_PROCESSES = SpringBoard

ARCHS = arm64 arm64e
TARGET = iphone:clang::14

include $(THEOS)/makefiles/common.mk

TWEAK_NAME = ActivatorListenersForAppLibrary
$(TWEAK_NAME)_FILES = $(TWEAK_NAME).xm
$(TWEAK_NAME)_FRAMEWORKS = UIKit
$(TWEAK_NAME)_LDFLAGS = -lactivator

include $(FW_MAKEDIR)/tweak.mk
