cmake_minimum_required(VERSION 3.21.1)

project(CuteKeyboard)

## Encontre o pacote Qt
find_package(Qt6 COMPONENTS Qml Core Quick Gui REQUIRED)
qt_standard_project_setup(REQUIRES 6.4)

## Configuração do projeto
set(CMAKE_AUTOMOC ON)
set(CMAKE_AUTORCC ON)
set(CMAKE_CXX_STANDARD_REQUIRED ON)

# Defina os arquivos de origem'
set(SOURCES
    "EnterKeyAction.cpp"
    "EnterKeyActionAttachedType.cpp"
    "InputPanelIface.cpp"
    "VirtualKeyboardInputContextPlugin.cpp"
    "VirtualKeyboardInputContext.cpp"
    "DeclarativeInputEngine.cpp"
)

# Defina os cabeçalhos
set(HEADERS
    "EnterKeyAction.hpp"
    "EnterKeyActionAttachedType.hpp"
    "InputPanelIface.hpp"
    "VirtualKeyboardInputContextPlugin.h"
    "VirtualKeyboardInputContext.h"
    "DeclarativeInputEngine.h"
)

# Adicione os recursos
set(RESOURCES
    "resources.qrc"
)

# Adicione os arquivos QML
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
    "qml/QwertyLayout.qml"
    "qml/ShiftKey.qml"
    "qml/SpaceKey.qml"
    "qml/SymbolKey.qml"
    "qml/SymbolLayout.qml"
)

qt_add_qml_module(CuteKeyboard
    URI "CuteKeyboard"
    VERSION 1.0
    # OUTPUT_DIRECTORY
    #     "CuteKeyboard"
    RESOURCE_PREFIX /
    QML_FILES
        ${QML_FILES}
    SOURCES
        ${SOURCES}
        ${HEADERS}
    RESOURCES
        ${RESOURCES}
)

# Link com as bibliotecas Qt necessárias
target_link_libraries(CuteKeyboard PUBLIC
    Qt6::Qml
    Qt6::Quick
    Qt::GuiPrivate
    Qt::QuickPrivate
)

# Instalação dos arquivos QML
install(FILES ${QML_FILES} DESTINATION ${QT_QML_OUTPUT_DIRECTORY}/QtQuick/CuteKeyboard)

# Instalação da biblioteca
install(TARGETS CuteKeyboard DESTINATION ${QT_INSTALL_PLUGINS}/platforminputcontexts)
