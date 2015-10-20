TEMPLATE = app

QT += qml quick

SOURCES += main.cpp \
    b23.c \
    backwards.c \
    bounds.c \
    common.c \
    derivs.c \
    region1.c \
    region2.c \
    region3.c \
    region4.c \
    solver2.c \
    steam.c \
    steam_ph.c \
    steam_ps.c \
    steam_pT.c \
    steam_pu.c \
    steam_pv.c \
    steam_Ts.c \
    steam_Tx.c \
    surftens.c \
    thcond.c \
    viscosity.c \
    zeroin.c \
    steam_uv.c \
    mysteamclass.cpp

RESOURCES += qml.qrc \
    images.qrc \
    jsFiles.qrc

# Additional import path used to resolve QML modules in Qt Creator's code model
QML_IMPORT_PATH =

# Default rules for deployment.
include(deployment.pri)

HEADERS += \
    b23.h \
    backwards_impl.h \
    bounds.h \
    common.h \
    compat.h \
    config.h \
    derivs.h \
    region1.h \
    region2.h \
    region3.h \
    region4.h \
    solver2.h \
    steam.h \
    steam_ph.h \
    steam_ps.h \
    steam_pT.h \
    steam_pu.h \
    steam_pv.h \
    steam_Ts.h \
    steam_Tx.h \
    steam_uv.h \
    surftens.h \
    thcond.h \
    viscosity.h \
    zeroin.h \
    backwards.h \
    mysteamclass.h


                #---------------GSL-------INCLUDE---------#

LIBS += -L/home/ihaaaaa/QtProjects/SteamProps/libs -lgsl
LIBS += -L/home/ihaaaaa/QtProjects/SteamProps/libs -lgslcblas

INCLUDEPATH += $$PWD/libs
DEPENDPATH += $$PWD/libs

INCLUDEPATH += $$PWD
DEPENDPATH += $$PWD/

DISTFILES +=
