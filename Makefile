#############################################################################
# Makefile for building: GameOfLife
# Generated by qmake (2.01a) (Qt 4.8.6) on: Sun Jul 20 18:54:05 2014
# Project:  GameOfLife.pro
# Template: app
# Command: /home/daniel/dev/opensource/mxe/usr/i686-pc-mingw32.static/qt/bin/qmake -o Makefile GameOfLife.pro
#############################################################################

first: release
install: release-install
uninstall: release-uninstall
MAKEFILE      = Makefile
QMAKE         = /home/daniel/dev/opensource/mxe/usr/i686-pc-mingw32.static/qt/bin/qmake
DEL_FILE      = rm
CHK_DIR_EXISTS= test -d
MKDIR         = mkdir -p
COPY          = cp
COPY_FILE     = $(COPY)
COPY_DIR      = cp -r
INSTALL_FILE  = $(COPY_FILE)
INSTALL_PROGRAM = $(COPY_FILE)
INSTALL_DIR   = $(COPY_DIR)
DEL_FILE      = rm
SYMLINK       = 
DEL_DIR       = rmdir
MOVE          = mv
CHK_DIR_EXISTS= test -d
MKDIR         = mkdir -p
SUBTARGETS    =  \
		release \
		debug

release: $(MAKEFILE).Release FORCE
	$(MAKE) -f $(MAKEFILE).Release
release-make_default: $(MAKEFILE).Release FORCE
	$(MAKE) -f $(MAKEFILE).Release 
release-make_first: $(MAKEFILE).Release FORCE
	$(MAKE) -f $(MAKEFILE).Release first
release-all: $(MAKEFILE).Release FORCE
	$(MAKE) -f $(MAKEFILE).Release all
release-clean: $(MAKEFILE).Release FORCE
	$(MAKE) -f $(MAKEFILE).Release clean
release-distclean: $(MAKEFILE).Release FORCE
	$(MAKE) -f $(MAKEFILE).Release distclean
release-install: $(MAKEFILE).Release FORCE
	$(MAKE) -f $(MAKEFILE).Release install
release-uninstall: $(MAKEFILE).Release FORCE
	$(MAKE) -f $(MAKEFILE).Release uninstall
debug: $(MAKEFILE).Debug FORCE
	$(MAKE) -f $(MAKEFILE).Debug
debug-make_default: $(MAKEFILE).Debug FORCE
	$(MAKE) -f $(MAKEFILE).Debug 
debug-make_first: $(MAKEFILE).Debug FORCE
	$(MAKE) -f $(MAKEFILE).Debug first
debug-all: $(MAKEFILE).Debug FORCE
	$(MAKE) -f $(MAKEFILE).Debug all
debug-clean: $(MAKEFILE).Debug FORCE
	$(MAKE) -f $(MAKEFILE).Debug clean
debug-distclean: $(MAKEFILE).Debug FORCE
	$(MAKE) -f $(MAKEFILE).Debug distclean
debug-install: $(MAKEFILE).Debug FORCE
	$(MAKE) -f $(MAKEFILE).Debug install
debug-uninstall: $(MAKEFILE).Debug FORCE
	$(MAKE) -f $(MAKEFILE).Debug uninstall

Makefile: GameOfLife.pro  ../../opensource/mxe/usr/i686-pc-mingw32.static/qt/mkspecs/win32-g++-4.6/qmake.conf ../../opensource/mxe/usr/i686-pc-mingw32.static/qt/mkspecs/qdevice.pri \
		../../opensource/mxe/usr/i686-pc-mingw32.static/qt/mkspecs/features/device_config.prf \
		../../opensource/mxe/usr/i686-pc-mingw32.static/qt/mkspecs/qconfig.pri \
		../../opensource/mxe/usr/i686-pc-mingw32.static/qt/mkspecs/features/qt_functions.prf \
		../../opensource/mxe/usr/i686-pc-mingw32.static/qt/mkspecs/features/qt_config.prf \
		../../opensource/mxe/usr/i686-pc-mingw32.static/qt/mkspecs/win32-g++/qmake.conf \
		../../opensource/mxe/usr/i686-pc-mingw32.static/qt/mkspecs/features/exclusive_builds.prf \
		../../opensource/mxe/usr/i686-pc-mingw32.static/qt/mkspecs/features/default_pre.prf \
		../../opensource/mxe/usr/i686-pc-mingw32.static/qt/mkspecs/features/win32/default_pre.prf \
		../../opensource/mxe/usr/i686-pc-mingw32.static/qt/mkspecs/features/release.prf \
		../../opensource/mxe/usr/i686-pc-mingw32.static/qt/mkspecs/features/debug_and_release.prf \
		../../opensource/mxe/usr/i686-pc-mingw32.static/qt/mkspecs/features/default_post.prf \
		../../opensource/mxe/usr/i686-pc-mingw32.static/qt/mkspecs/features/win32/default_post.prf \
		../../opensource/mxe/usr/i686-pc-mingw32.static/qt/mkspecs/features/qt.prf \
		../../opensource/mxe/usr/i686-pc-mingw32.static/qt/mkspecs/features/win32/thread.prf \
		../../opensource/mxe/usr/i686-pc-mingw32.static/qt/mkspecs/features/moc.prf \
		../../opensource/mxe/usr/i686-pc-mingw32.static/qt/mkspecs/features/win32/stl.prf \
		../../opensource/mxe/usr/i686-pc-mingw32.static/qt/mkspecs/features/win32/rtti.prf \
		../../opensource/mxe/usr/i686-pc-mingw32.static/qt/mkspecs/features/win32/exceptions.prf \
		../../opensource/mxe/usr/i686-pc-mingw32.static/qt/mkspecs/features/static.prf \
		../../opensource/mxe/usr/i686-pc-mingw32.static/qt/mkspecs/features/warn_on.prf \
		../../opensource/mxe/usr/i686-pc-mingw32.static/qt/mkspecs/features/win32/windows.prf \
		../../opensource/mxe/usr/i686-pc-mingw32.static/qt/mkspecs/features/resources.prf \
		../../opensource/mxe/usr/i686-pc-mingw32.static/qt/mkspecs/features/uic.prf \
		../../opensource/mxe/usr/i686-pc-mingw32.static/qt/mkspecs/features/yacc.prf \
		../../opensource/mxe/usr/i686-pc-mingw32.static/qt/mkspecs/features/lex.prf \
		../../opensource/mxe/usr/i686-pc-mingw32.static/qt/mkspecs/features/include_source_dir.prf \
		/home/daniel/dev/opensource/mxe/usr/i686-pc-mingw32.static/qt/lib/qtmain.prl \
		/home/daniel/dev/opensource/mxe/usr/i686-pc-mingw32.static/qt/lib/QtGui.prl \
		/home/daniel/dev/opensource/mxe/usr/i686-pc-mingw32.static/qt/lib/QtCore.prl
	$(QMAKE) -o Makefile GameOfLife.pro
../../opensource/mxe/usr/i686-pc-mingw32.static/qt/mkspecs/qdevice.pri:
../../opensource/mxe/usr/i686-pc-mingw32.static/qt/mkspecs/features/device_config.prf:
../../opensource/mxe/usr/i686-pc-mingw32.static/qt/mkspecs/qconfig.pri:
../../opensource/mxe/usr/i686-pc-mingw32.static/qt/mkspecs/features/qt_functions.prf:
../../opensource/mxe/usr/i686-pc-mingw32.static/qt/mkspecs/features/qt_config.prf:
../../opensource/mxe/usr/i686-pc-mingw32.static/qt/mkspecs/win32-g++/qmake.conf:
../../opensource/mxe/usr/i686-pc-mingw32.static/qt/mkspecs/features/exclusive_builds.prf:
../../opensource/mxe/usr/i686-pc-mingw32.static/qt/mkspecs/features/default_pre.prf:
../../opensource/mxe/usr/i686-pc-mingw32.static/qt/mkspecs/features/win32/default_pre.prf:
../../opensource/mxe/usr/i686-pc-mingw32.static/qt/mkspecs/features/release.prf:
../../opensource/mxe/usr/i686-pc-mingw32.static/qt/mkspecs/features/debug_and_release.prf:
../../opensource/mxe/usr/i686-pc-mingw32.static/qt/mkspecs/features/default_post.prf:
../../opensource/mxe/usr/i686-pc-mingw32.static/qt/mkspecs/features/win32/default_post.prf:
../../opensource/mxe/usr/i686-pc-mingw32.static/qt/mkspecs/features/qt.prf:
../../opensource/mxe/usr/i686-pc-mingw32.static/qt/mkspecs/features/win32/thread.prf:
../../opensource/mxe/usr/i686-pc-mingw32.static/qt/mkspecs/features/moc.prf:
../../opensource/mxe/usr/i686-pc-mingw32.static/qt/mkspecs/features/win32/stl.prf:
../../opensource/mxe/usr/i686-pc-mingw32.static/qt/mkspecs/features/win32/rtti.prf:
../../opensource/mxe/usr/i686-pc-mingw32.static/qt/mkspecs/features/win32/exceptions.prf:
../../opensource/mxe/usr/i686-pc-mingw32.static/qt/mkspecs/features/static.prf:
../../opensource/mxe/usr/i686-pc-mingw32.static/qt/mkspecs/features/warn_on.prf:
../../opensource/mxe/usr/i686-pc-mingw32.static/qt/mkspecs/features/win32/windows.prf:
../../opensource/mxe/usr/i686-pc-mingw32.static/qt/mkspecs/features/resources.prf:
../../opensource/mxe/usr/i686-pc-mingw32.static/qt/mkspecs/features/uic.prf:
../../opensource/mxe/usr/i686-pc-mingw32.static/qt/mkspecs/features/yacc.prf:
../../opensource/mxe/usr/i686-pc-mingw32.static/qt/mkspecs/features/lex.prf:
../../opensource/mxe/usr/i686-pc-mingw32.static/qt/mkspecs/features/include_source_dir.prf:
/home/daniel/dev/opensource/mxe/usr/i686-pc-mingw32.static/qt/lib/qtmain.prl:
/home/daniel/dev/opensource/mxe/usr/i686-pc-mingw32.static/qt/lib/QtGui.prl:
/home/daniel/dev/opensource/mxe/usr/i686-pc-mingw32.static/qt/lib/QtCore.prl:
qmake: qmake_all FORCE
	@$(QMAKE) -o Makefile GameOfLife.pro

qmake_all: FORCE

make_default: release-make_default debug-make_default FORCE
make_first: release-make_first debug-make_first FORCE
all: release-all debug-all FORCE
clean: release-clean debug-clean FORCE
distclean: release-distclean debug-distclean FORCE
	-$(DEL_FILE) Makefile

check: first

release-mocclean: $(MAKEFILE).Release
	$(MAKE) -f $(MAKEFILE).Release mocclean
debug-mocclean: $(MAKEFILE).Debug
	$(MAKE) -f $(MAKEFILE).Debug mocclean
mocclean: release-mocclean debug-mocclean

release-mocables: $(MAKEFILE).Release
	$(MAKE) -f $(MAKEFILE).Release mocables
debug-mocables: $(MAKEFILE).Debug
	$(MAKE) -f $(MAKEFILE).Debug mocables
mocables: release-mocables debug-mocables
FORCE:

$(MAKEFILE).Release: Makefile
$(MAKEFILE).Debug: Makefile
