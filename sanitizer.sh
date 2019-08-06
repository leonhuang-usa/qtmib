#!/bin/bash
export CFLAGS=-fsanitize=address
export CXXFLAGS=-fsanitize=address
export LDFLAGS=-lasan
cd src/qtmib && /usr/bin/qmake && cd ../..
cd src/discover && /usr/bin/qmake && cd ../..
cd src/report && /usr/bin/qmake && cd ../..
