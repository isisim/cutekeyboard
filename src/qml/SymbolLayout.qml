import QtQuick 2.0
import QtQuick.Layouts 1.12

Item {
    property var inputPanel
    property bool secondPage

    onVisibleChanged: {
        if (!visible)
            secondPage = false
    }

    ColumnLayout {
        id: page1

        anchors.fill: parent
        visible: !secondPage

        RowLayout {
            property real keyWeight: 160

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

            Key {
                btnKey: Qt.Key_0
                btnText: "0"
                inputPanelRef: inputPanel
            }
        }

        RowLayout {
            property real keyWeight: 160

            Key {
                btnKey: Qt.Key_At
                btnText: "@"
                inputPanelRef: inputPanel
            }

            Key {
                btnKey: Qt.Key_NumberSign
                btnText: "#"
                inputPanelRef: inputPanel
            }

            Key {
                btnKey: Qt.Key_Percent
                btnText: "%"
                inputPanelRef: inputPanel
            }

            Key {
                btnKey: Qt.Key_Ampersand
                btnText: "&"
                inputPanelRef: inputPanel
            }

            Key {
                btnKey: Qt.Key_Asterisk
                btnText: "*"
                inputPanelRef: inputPanel
            }

            Key {
                btnKey: Qt.Key_Underscore
                btnText: "_"
                inputPanelRef: inputPanel
            }

            Key {
                btnKey: Qt.Key_Minus
                btnText: "-"
                inputPanelRef: inputPanel
            }

            Key {
                btnKey: Qt.Key_Plus
                btnText: "+"
                inputPanelRef: inputPanel
            }

            Key {
                btnKey: Qt.Key_ParenLeft
                btnText: "("
                inputPanelRef: inputPanel
            }
            Key {
                btnKey: Qt.Key_ParenRight
                btnText: ")"
                inputPanelRef: inputPanel
            }
        }

        RowLayout {
            property real keyWeight: 160

            Key {
                btnDisplayedText: "1/2"
                showPreview: false
                functionKey: true
                onClicked: secondPage = !secondPage
                btnBackground: backspace.btnBackground
            }

            Key {
                btnKey: Qt.Key_QuoteDbl
                btnText: '"'
                inputPanelRef: inputPanel
            }

            Key {
                btnKey: Qt.Key_Less
                btnText: "<"
                inputPanelRef: inputPanel
            }

            Key {
                btnKey: Qt.Key_Greater
                btnText: ">"
                inputPanelRef: inputPanel
            }

            Key {
                btnKey: Qt.Key_Apostrophe
                btnText: "'"
                inputPanelRef: inputPanel
            }

            Key {
                btnKey: Qt.Key_Colon
                btnText: ":"
                inputPanelRef: inputPanel
            }

            Key {
                btnKey: Qt.Key_Slash
                btnText: "/"
                inputPanelRef: inputPanel
            }

            Key {
                btnKey: Qt.Key_Exclam
                btnText: "!"
                inputPanelRef: inputPanel
            }

            Key {
                btnKey: Qt.Key_Question
                btnText: "?"
                inputPanelRef: inputPanel
            }

            BackspaceKey {
                id: backspace
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

    ColumnLayout {
        id: page2

        anchors.fill: parent
        visible: secondPage

        RowLayout {
            property real keyWeight: 160

            Key {
                btnKey: Qt.Key_AsciiTilde
                btnText: "~"
                inputPanelRef: inputPanel
            }

            Key {
                btnKey: Qt.Key_Agrave
                btnText: "`"
                inputPanelRef: inputPanel
            }

            Key {
                btnKey: Qt.Key_Bar
                btnText: "|"
                inputPanelRef: inputPanel
            }

            Key {
                btnKey: Qt.Key_periodcentered
                btnText: "·"
                inputPanelRef: inputPanel
            }

            Key {
                btnKey: 8730
                btnText: "√"
                inputPanelRef: inputPanel
            }

            Key {
                btnKey: Qt.Key_division
                btnText: "÷"
                inputPanelRef: inputPanel
            }

            Key {
                btnKey: Qt.Key_multiply
                btnText: "×"
                inputPanelRef: inputPanel
            }

            Key {
                btnKey: Qt.Key_onehalf
                btnText: "½"
                alternativeKeys: "¼⅓¾⅞"
                inputPanelRef: inputPanel
            }

            Key {
                btnKey: Qt.Key_BraceLeft
                btnText: "{"
                inputPanelRef: inputPanel
            }

            Key {
                btnKey: Qt.Key_BraceRight
                btnText: "}"
                inputPanelRef: inputPanel
            }
        }

        RowLayout {
            property real keyWeight: 160

            Key {
                btnKey: Qt.Key_Dollar
                btnText: "$"
                inputPanelRef: inputPanel
            }

            Key {
                btnKey: 8364
                btnText: "€"
                inputPanelRef: inputPanel
            }

            Key {
                btnKey: 194
                btnText: "£"
                inputPanelRef: inputPanel
            }

            Key {
                btnKey: 162
                btnText: "¢"
                inputPanelRef: inputPanel
            }

            Key {
                btnKey: 165
                btnText: "¥"
                inputPanelRef: inputPanel
            }
            Key {
                btnKey: Qt.Key_AsciiCircum
                btnText: "^"
                inputPanelRef: inputPanel
            }
            Key {
                btnKey: Qt.Key_Equal
                btnText: "="
                inputPanelRef: inputPanel
            }

            Key {
                btnKey: Qt.Key_section
                btnText: "§"
                inputPanelRef: inputPanel
            }

            Key {
                btnKey: Qt.Key_BracketLeft
                btnText: "["
                inputPanelRef: inputPanel
            }

            Key {
                btnKey: Qt.Key_BracketRight
                btnText: "]"
                inputPanelRef: inputPanel
            }
        }

        RowLayout {
            property real keyWeight: 160

            Key {
                btnDisplayedText: "2/2"
                showPreview: false
                functionKey: true
                onClicked: secondPage = !secondPage
                btnBackground: backspace.btnBackground
            }

            Key {
                btnKey: 8482
                btnText: '™'
                inputPanelRef: inputPanel
            }

            Key {
                btnKey: 174
                btnText: '®'
                inputPanelRef: inputPanel
            }

            Key {
                btnKey: Qt.Key_guillemotleft
                btnText: '«'
                inputPanelRef: inputPanel
            }

            Key {
                btnKey: Qt.Key_guillemotright
                btnText: '»'
                inputPanelRef: inputPanel
            }

            Key {
                btnKey: Qt.Key_Semicolon
                btnText: ";"
                inputPanelRef: inputPanel
            }

            Key {
                btnKey: 8220
                btnText: '“'
                inputPanelRef: inputPanel
            }

            Key {
                btnKey: 8221
                btnText: '”'
                inputPanelRef: inputPanel
            }

            Key {
                btnKey: Qt.Key_Backslash
                btnText: "\\"
                inputPanelRef: inputPanel
            }

            BackspaceKey {
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
            }

            Key {
                btnKey: 0x2026
                text: "\u2026"
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
}
