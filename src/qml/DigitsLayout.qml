import CuteKeyboard 1.0
import QtQuick 2.0
import QtQuick.Layouts 1.12

ColumnLayout {
    property var inputPanel

    GridLayout {
        Layout.fillWidth: false
        Layout.fillHeight: true
        Layout.alignment: Qt.AlignHCenter
        Layout.preferredWidth: height

        columns: 4
        rows: 4

        property real keyWeight

        Key {
            btnKey: Qt.Key_7
            btnText: "7"
            inputPanelRef: inputPanel
        }

        Key {
            btnKey: Qt.Key_8
            btnText: "8"
            inputPanelRef: inputPanel
        }

        Key {
            btnKey: Qt.Key_9
            btnText: "9"
            inputPanelRef: inputPanel
        }

        BackspaceKey {
            inputPanelRef: inputPanel
        }

        Key {
            btnKey: Qt.Key_4
            btnText: "4"
            inputPanelRef: inputPanel
        }

        Key {
            btnKey: Qt.Key_5
            btnText: "5"
            inputPanelRef: inputPanel
        }

        Key {
            btnKey: Qt.Key_6
            btnText: "6"
            inputPanelRef: inputPanel
        }
        HideKey {
            inputPanelRef: inputPanel
        }

        Key {
            btnKey: Qt.Key_1
            btnText: "1"
            inputPanelRef: inputPanel
        }

        Key {
            btnKey: Qt.Key_2
            btnText: "2"
            inputPanelRef: inputPanel
        }

        Key {
            btnKey: Qt.Key_3
            btnText: "3"
            inputPanelRef: inputPanel
        }
        EnterKey {
            Layout.rowSpan: 2
            inputPanelRef: inputPanel
        }

        Rectangle {
            Layout.fillHeight: true
            Layout.fillWidth: true
            color: InputPanel.btnBackgroundColor
            radius: 5
        }

        Key {
            btnKey: Qt.Key_0
            btnText: "0"
            inputPanelRef: inputPanel
        }

        Key {

            btnKey: Qt.locale().decimalPoint === "," ? Qt.Key_Comma : Qt.Key_Period
            btnText: Qt.locale().decimalPoint === "," ? "," : "."
            inputPanelRef: inputPanel
        }
    }
}
