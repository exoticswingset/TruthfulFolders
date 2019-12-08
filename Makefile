INSTALL_TARGET_PROCESSES = SpringBoard
ARCHS = armv7 armv7s arm64 arm64e
include ~/theos/makefiles/common.mk

TWEAK_NAME = TruthfulFolders

TruthfulFolders_FILES = Tweak.x
TruthfulFolders_CFLAGS = -fobjc-arc

include ~/theos/makefiles/tweak.mk
