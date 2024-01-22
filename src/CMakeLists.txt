# Generated from src.pro.
cmake_minimum_required(VERSION 3.21.1)
project(cutekeyboardplugin VERSION 1.0 LANGUAGES CXX)

set(CMAKE_CXX_STANDARD 17)
set(CMAKE_CXX_STANDARD_REQUIRED ON)
# set(CMAKE_INCLUDE_CURRENT_DIR ON)
set(CMAKE_AUTOMOC ON)
set(CMAKE_AUTORCC ON)

# set(CMAKE_AUTOMOC ON)
# set(CMAKE_CXX_STANDARD_REQUIRED ON)

# if(NOT DEFINED INSTALL_EXAMPLESDIR)
#     set(INSTALL_EXAMPLESDIR "examples")
# endif()

# set(INSTALL_EXAMPLEDIR "$$[QT_INSTALL_PLUGINS]/platforminputcontexts")

find_package(QT NAMES Qt6 REQUIRED COMPONENTS Core)
find_package(Qt6 REQUIRED COMPONENTS Gui Qml Quick)
qt_standard_project_setup(REQUIRES 6.4)

set(HEADERS
    "EnterKeyAction.hpp"
    "EnterKeyActionAttachedType.hpp"
    "InputPanelIface.hpp"
    "VirtualKeyboardInputContextPlugin.h"
    "VirtualKeyboardInputContext.h"
    "DeclarativeInputEngine.h"
)

set(SOURCES
    "EnterKeyAction.cpp"
    "EnterKeyActionAttachedType.cpp"
    "InputPanelIface.cpp"
    "VirtualKeyboardInputContextPlugin.cpp"
    "VirtualKeyboardInputContext.cpp"
    "DeclarativeInputEngine.cpp"
)

set(QML_FILES
    "qml/AlternativeKeysPopup.qml"
    "qml/BackspaceKey.qml"
    "qml/DigitsLayout.qml"
    "qml/EnLayout.qml"
    "qml/EnterKey.qml"
    "qml/EsLayout.qml"
    "qml/HideKey.qml"
    "qml/InputPanel.qml"
    "qml/Key.qml"
    "qml/KeyModel.qml"
    "qml/KeyPopup.qml"
    "qml/PtLayout.qml"
    "qml/QwertyLayout.qml"
    "qml/ShiftKey.qml"
    "qml/SpaceKey.qml"
    "qml/SymbolKey.qml"
    "qml/SymbolLayout.qml"
)

set(RESOURCES
    "resources.qrc"
)

qt_add_qml_module(cutekeyboardplugin
    URI "QtQuick.CuteKeyboard"
    VERSION ${PROJECT_VERSION}
    # PLUGIN_TARGET cutekeyboardplugin
    QML_FILES
        ${QML_FILES}
    SOURCES
        ${SOURCES}
        ${HEADERS}
    RESOURCES
        ${RESOURCES}
)

target_link_libraries(cutekeyboardplugin PUBLIC
    Qt::Core
    Qt::Gui
    Qt::GuiPrivate
    Qt::Qml
    Qt::Quick
    Qt::QuickPrivate
)

install(
    FILES ${QML_FILES}
    DESTINATION ${CMAKE_PREFIX_PATH}/qml/QtQuick/CuteKeyboard
)

install(
    TARGETS cutekeyboardplugin
    DESTINATION ${CMAKE_PREFIX_PATH}/plugins/platforminputcontexts
)
