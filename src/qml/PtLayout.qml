import QtQuick 2.0
import QtQuick.Layouts 1.12

ColumnLayout {
    property var inputPanel

    RowLayout {
        property real keyWeight: 160

        Key {
            btnKey: Qt.Key_Q
            btnText: "q"
            inputPanelRef: inputPanel
        }

        Key {
            btnKey: Qt.Key_W
            btnText: "w"
            inputPanelRef: inputPanel
        }

        Key {
            btnKey: Qt.Key_E
            btnText: "e"
            alternativeKeys: "ēęėëêèé"
            inputPanelRef: inputPanel
        }

        Key {
            btnKey: Qt.Key_R
            btnText: "r"
            inputPanelRef: inputPanel
        }

        Key {
            btnKey: Qt.Key_T
            btnText: "t"
            inputPanelRef: inputPanel
        }

        Key {
            btnKey: Qt.Key_Y
            btnText: "y"
            inputPanelRef: inputPanel
        }

        Key {
            btnKey: Qt.Key_U
            btnText: "u"
            alternativeKeys: "üûùú"
            inputPanelRef: inputPanel
        }

        Key {
            btnKey: Qt.Key_I
            btnText: "i"
            alternativeKeys: "ïįîìí"
            inputPanelRef: inputPanel
        }

        Key {
            btnKey: Qt.Key_O
            btnText: "o"
            alternativeKeys: "öõôòó"
            inputPanelRef: inputPanel
        }

        Key {
            btnKey: Qt.Key_P
            btnText: "p"
            inputPanelRef: inputPanel
        }
    }

    RowLayout {
        property real keyWeight: 160

        Key {
            btnKey: Qt.Key_A
            btnText: "a"
            alternativeKeys: "äãâàá"
            inputPanelRef: inputPanel
        }

        Key {
            btnKey: Qt.Key_S
            btnText: "s"
            inputPanelRef: inputPanel
        }

        Key {
            btnKey: Qt.Key_D
            btnText: "d"
            inputPanelRef: inputPanel
        }

        Key {
            btnKey: Qt.Key_F
            btnText: "f"
            inputPanelRef: inputPanel
        }

        Key {
            btnKey: Qt.Key_G
            btnText: "g"
            inputPanelRef: inputPanel
        }

        Key {
            btnKey: Qt.Key_H
            btnText: "h"
            inputPanelRef: inputPanel
        }

        Key {
            btnKey: Qt.Key_J
            btnText: "j"
            inputPanelRef: inputPanel
        }

        Key {
            btnKey: Qt.Key_K
            btnText: "k"
            inputPanelRef: inputPanel
        }

        Key {
            btnKey: Qt.Key_L
            btnText: "l"
            inputPanelRef: inputPanel
        }

        Key {
            btnKey: Qt.Key_Ccedilla
            btnText: "ç"
            inputPanelRef: inputPanel
        }
    }

    RowLayout {
        property real keyWeight: 160

        ShiftKey {
            weight: 1.5 * parent.keyWeight
        }

        Key {
            btnKey: Qt.Key_Z
            btnText: "z"
            inputPanelRef: inputPanel
        }

        Key {
            btnKey: Qt.Key_X
            btnText: "x"
            inputPanelRef: inputPanel
        }

        Key {
            btnKey: Qt.Key_C
            btnText: "c"
            alternativeKeys: "čć"
            inputPanelRef: inputPanel
        }

        Key {
            btnKey: Qt.Key_V
            btnText: "v"
            inputPanelRef: inputPanel
        }

        Key {
            btnKey: Qt.Key_B
            btnText: "b"
            inputPanelRef: inputPanel
        }

        Key {
            btnKey: Qt.Key_N
            btnText: "n"
            inputPanelRef: inputPanel
        }

        Key {
            btnKey: Qt.Key_M
            btnText: "m"
            inputPanelRef: inputPanel
        }

        BackspaceKey {
            weight: 1.5 * parent.keyWeight
            inputPanelRef: inputPanel
        }
    }

    RowLayout {
        property real keyWeight: 160

        SymbolKey {
            weight: 1.5 * parent.keyWeight
        }

        Key {
            btnKey: Qt.Key_Comma
            btnText: ","
            inputPanelRef: inputPanel
        }

        SpaceKey {
            weight: 7 * parent.keyWeight
            inputPanelRef: inputPanel
            btnDisplayedText: "Português"
        }

        Key {
            btnKey: Qt.Key_Period
            btnText: "."
            alternativeKeys: "!.?"
            inputPanelRef: inputPanel
        }

        HideKey {
            weight: 1.5 * parent.keyWeight
        }

        EnterKey {
            weight: 1.5 * parent.keyWeight
            inputPanelRef: inputPanel
        }
    }
}
