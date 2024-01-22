import CuteKeyboard
import QtQuick

Key {
    btnKey: Qt.Key_Enter
    repeatable: true
    showPreview: false
    btnBackground: InputPanel.btnSpecialBackgroundColor
    btnText: "\n"
    btnDisplayedText: InputPanel.enterIcon === "" ? "Enter" : ""
    btnIcon: InputPanel.enterIcon === "" ? "" : InputPanel.enterIcon
    // enabled: InputContext.focusItemHasEnterKeyAction(InputContext.inputItem) ? InputContext.inputItem.EnterKeyAction.enabled : true
    enabled: true
    opacity: enabled ? 1 : 0.5
}
