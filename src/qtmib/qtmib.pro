QMAKE_CXXFLAGS += $$(CXXFLAGS) -fstack-protector-all -D_FORTIFY_SOURCE=2 -fPIE -pie -Wformat -Wformat-security
QMAKE_CFLAGS += $$(CFLAGS) -fstack-protector-all -D_FORTIFY_SOURCE=2 -fPIE -pie -Wformat -Wformat-security
QMAKE_LIBS += $$(LDFLAGS) -Wl,-z,relro -Wl,-z,now
HEADERS   = mainwindow.h qtmib.h clicked_label.h ../common/pref_dialog.h oid_translator.h \
	    ../common/exec_prog.h search_dialog.h
SOURCES   = main.cpp \
            mainwindow.cpp \
            ../common/exec_prog.c \
            clicked_label.cpp \
            ../common/pref_dialog.cpp \
            oid_translator.cpp \
            utils.cpp \
            search_dialog.cpp
RESOURCES = qtmib.qrc
TARGET=../../build/qtmib

