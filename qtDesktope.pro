TEMPLATE = app

QT += sql
QT += qml quick
#QT += declarative
CONFIG += c++11

SOURCES += main.cpp \
    MainForm.cpp \
    FormsManager.cpp \
    RedactorForm.cpp \
    PrinterForm.cpp \
    DataManager.cpp \
    DialogAdding.cpp

RESOURCES += qml.qrc

# Additional import path used to resolve QML modules in Qt Creator's code model
QML_IMPORT_PATH =

# Default rules for deployment.
include(deployment.pri)

HEADERS += \
    MainForm.h \
    FormsManager.h \
    RedactorForm.h \
    PrinterForm.h \
    DataManager.h \
    DialogAdding.h

