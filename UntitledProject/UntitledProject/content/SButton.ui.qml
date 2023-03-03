

/*
This is a UI file (.ui.qml) that is intended to be edited in Qt Design Studio only.
It is supposed to be strictly declarative and only uses a subset of QML. If you edit
this file manually, you might introduce QML code that is not supported by Qt Design Studio.
Check out https://doc.qt.io/qtcreator/creator-quick-ui-forms.html for details on .ui.qml files.
*/
import QtQuick 2.15
import QtQuick.Controls 2.15

Button {
    id: control
    width: 300
    height: 100
    text: qsTr("My Button")

    implicitWidth: Math.max(
                       buttonBackground ? buttonBackground.implicitWidth : 0,
                       textItem.implicitWidth + leftPadding + rightPadding)
    implicitHeight: Math.max(
                        buttonBackground ? buttonBackground.implicitHeight : 0,
                        textItem.implicitHeight + topPadding + bottomPadding)
    leftPadding: 4
    rightPadding: 4

    background: buttonBackground
    Rectangle {
        id: buttonBackground
        implicitWidth: 100
        implicitHeight: 40
        opacity: enabled ? 1 : 0.3
        visible: true
        radius: 7
        border.color: "#09784a4a"
        gradient: Gradient {
            orientation: Gradient.Vertical
            GradientStop {
                position: 1
                color: "#1a1a1a"
            }

            GradientStop {
                position: 0
                color: "#1f1f1f"
            }
        }
        smooth: true
    }

    contentItem: textItem
    Text {
        id: textItem
        x: 0
        y: 0
        width: 300
        height: 100

        opacity: enabled ? 1.0 : 0.3
        color: "#9dede9"
        text: control.text
        horizontalAlignment: Text.AlignHCenter
        verticalAlignment: Text.AlignVCenter
        wrapMode: Text.NoWrap
        font.pointSize: 35
        font.styleName: "Bold"
        font.family: "Ubuntu Condensed"
    }

    states: [
        State {
            name: "normal"
            when: !control.down

            PropertyChanges {
                target: buttonBackground
                color: "#00000000"
                border.color: "#09047eff"
            }

            PropertyChanges {
                target: textItem
                color: "#9dede9"
            }
        },
        State {
            name: "down"
            when: control.down
            PropertyChanges {
                target: textItem
                color: "#60bbc0"
                text: control.text
            }

            PropertyChanges {
                target: buttonBackground
                color: "#047eff"
                border.color: "#00000000"
                border.width: 0
            }
        },
        State {
            name: "hover"
            when: control.hovered
        }
    ]
}
