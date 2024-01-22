import CuteKeyboard
import QtQuick

Key {
    functionKey: true
    showPreview: false
    onClicked: Qt.inputMethod.hide()
    btnBackground: InputPanel.btnSpecialBackgroundColor
    btnIcon: InputPanel.hideKeyboardIcon
}
