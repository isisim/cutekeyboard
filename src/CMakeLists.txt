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
    "CuteKeyboard/AlternativeKeysPopup.qml"
    "CuteKeyboard/BackspaceKey.qml"
    "CuteKeyboard/DigitsLayout.qml"
    "CuteKeyboard/EnLayout.qml"
    "CuteKeyboard/EnterKey.qml"
    "CuteKeyboard/EsLayout.qml"
    "CuteKeyboard/HideKey.qml"
    "CuteKeyboard/InputPanel.qml"
    "CuteKeyboard/Key.qml"
    "CuteKeyboard/KeyModel.qml"
    "CuteKeyboard/KeyPopup.qml"
    "CuteKeyboard/PtLayout.qml"
    "CuteKeyboard/QwertyLayout.qml"
    "CuteKeyboard/ShiftKey.qml"
    "CuteKeyboard/SpaceKey.qml"
    "CuteKeyboard/SymbolKey.qml"
    "CuteKeyboard/SymbolLayout.qml"
    "CuteKeyboard/qmldir"
)

set(RESOURCES
    "resources.qrc"
)
qt_add_resources(SOURCES
    ${RESOURCES}
)
qt_add_library(${PROJECT_NAME} SHARED
    ${SOURCES}
    ${HEADERS}
)
qt_add_resources(${PROJECT_NAME} "CuteKeyboard"
    PREFIX "/QtQuick"
    FILES
        ${QML_FILES}
)

target_link_libraries(${PROJECT_NAME} PRIVATE
    Qt::Core
    Qt::Gui
    Qt::GuiPrivate
    Qt::Qml
    Qt::Quick
    Qt::QuickPrivate
)

set_target_properties(${PROJECT_NAME} PROPERTIES
        LIBRARY_OUTPUT_DIRECTORY "$<TARGET_FILE_DIR:${CMAKE_PROJECT_NAME}>/platforminputcontexts"
    )

install(TARGETS ${PROJECT_NAME}
    LIBRARY DESTINATION ${CMAKE_INSTALL_BINDIR}/platforminputcontexts
)
