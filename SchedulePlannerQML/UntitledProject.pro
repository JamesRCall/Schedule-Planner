TEMPLATE = app
QT += quick quickcontrols2
TARGET = UntitledProject
CONFIG += c++11

# Source files
SOURCES += main.cpp

# QML and other resource files
RESOURCES += \
    qml.qrc

# The main QML file
MAIN_QML_FILE = content/App.qml

# Environment variables
QMAKE_CXXFLAGS += -DQT_QUICK_CONTROLS_CONF=\"qtquickcontrols2.conf\"
QMAKE_CXXFLAGS += -DQT_AUTO_SCREEN_SCALE_FACTOR=1
QMAKE_CXXFLAGS += -DQML_COMPAT_RESOLVE_URLS_ON_ASSIGNMENT=1
QMAKE_CXXFLAGS += -DQT_LOGGING_RULES=\"qt.qml.connections=false\"
QMAKE_CXXFLAGS += -DQT_ENABLE_HIGHDPI_SCALING=0

# Additional configuration
CONFIG += resources_big

# Shader Tool configuration - this needs manual handling outside of the .pro file
# Look into Qt's documentation on how to handle shaders with your Qt version

# Localization - This is a basic setup, adjust as needed
TRANSLATIONS = yourApp_en.ts
lupdate_only {
    SOURCES += $$files(content/*.qml)
}
# Destination directory
DESTDIR = ./release

