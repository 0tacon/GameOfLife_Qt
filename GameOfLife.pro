CONFIG += qt
HEADERS += src/include/classes/GameOfLife.h
SOURCES += src/include/classes/GameOfLife.cpp
SOURCES += src/main.cpp
*-g++* { QMAKE_CXXFLAGS += -std=c++11 }
