import CuteKeyboard
import QtQuick

Key {
    btnKey: Qt.Key_Shift
    functionKey: true
    showPreview: false
    btnBackground: InputPanel.btnSpecialBackgroundColor
    btnIcon: InputEngine.uppercase ? InputPanel.shiftOnIcon : InputPanel.shiftOffIcon
    onClicked: InputEngine.uppercase = !InputEngine.uppercase
}
