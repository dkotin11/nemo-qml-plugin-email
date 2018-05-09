TEMPLATE = lib
TARGET = nemoemail
PLUGIN_IMPORT_PATH = Nemo/Email
QT -= gui
CONFIG += qt plugin hide_symbols link_pkgconfig

INCLUDEPATH += ..

QT += qml
PKGCONFIG += qmfmessageserver5 qmfclient5
LIBS += -L.. -lnemoemail-qt5
target.path = $$[QT_INSTALL_QML]/$$PLUGIN_IMPORT_PATH

SOURCES += plugin.cpp
OTHER_FILES += qmldir

qmldir.files += qmldir
qmldir.path +=  $$target.path
INSTALLS += target qmldir

