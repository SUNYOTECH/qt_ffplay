#-------------------------------------------------
#
# Project created by QtCreator 2016-12-21T17:32:52
#
#-------------------------------------------------

QT       += core gui

greaterThan(QT_MAJOR_VERSION, 4): QT += widgets

TARGET = ffplay_qt
TEMPLATE = app


SOURCES += main.cpp\
        widget.cpp \
    videowindow.cpp \
    videoplayer.cpp

HEADERS  += widget.h \
    videowindow.h \
    videoplayer.h

FORMS    += widget.ui

INCLUDEPATH += ffmpeg/include/libavcodec\
               ffmpeg/include/libavfilter\
               ffmpeg/include/libavformat\
               ffmpeg/include/libavutil\
               ffmpeg/include/libswscale\
               ffmpeg/include/libswresample\
               ffmpeg/include/SDL\
               ffmpeg/include

win32 {
    LIBS += ffmpeg/lib/libavcodec.dll.a\
            ffmpeg/lib/libavfilter.dll.a\
            ffmpeg/lib/libavformat.dll.a\
            ffmpeg/lib/libswscale.dll.a\
            ffmpeg/lib/libavutil.dll.a\
            ffmpeg/lib/libswresample.dll.a\
            ffmpeg/lib/SDL2.lib\
            ffmpeg/lib/SDL2main.lib

    LIBS *= -lole32
}
