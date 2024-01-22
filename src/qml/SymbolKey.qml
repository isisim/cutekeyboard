import CuteKeyboard
import QtQuick

Key {
    btnKey: Qt.Key_Context1
    btnDisplayedText: !InputEngine.symbolMode ? "&123" : "ABC"
    functionKey: true
    showPreview: false
    btnBackground: InputPanel.btnSpecialBackgroundColor
    onClicked: InputEngine.symbolMode = !InputEngine.symbolMode
}
