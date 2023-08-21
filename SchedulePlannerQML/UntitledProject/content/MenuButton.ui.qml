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
    width: 100
    height: 90
    state: "normal"

    implicitWidth: Math.max(
                       buttonBackground ? buttonBackground.implicitWidth : 0,
                       textItem.implicitWidth + leftPadding + rightPadding)
    implicitHeight: Math.max(
                        buttonBackground ? buttonBackground.implicitHeight : 0,
                        textItem.implicitHeight + topPadding + bottomPadding)
    leftPadding: 4
    rightPadding: 4

    checkable: true

    background: buttonBackground
    Rectangle {
        id: buttonBackground
        width: 100
        height: 90
        color: "#00000000"
        implicitWidth: 100
        implicitHeight: 40
        opacity: enabled ? 1 : 0.3
        radius: 2
        border.color: "#00047eff"

        Image {
            id: treelines
            x: 5
            y: 4
            width: 90
            source: "images/treelines.png"
            fillMode: Image.PreserveAspectFit
        }
    }

    states: [
        State {
            name: "normal"

            PropertyChanges {
                target: buttonBackground
                width: control.x
                height: control.height
                color: "#00000000"
                border.color: "#00047eff"
            }

            PropertyChanges {
                target: treelines
                width: 90
                height: 81
            }
        },
        State {
            name: "checked"

            PropertyChanges {
                target: buttonBackground
                color: "#00ffffff"
                border.color: "#00000000"
            }

            PropertyChanges {
                target: control
                checked: false
            }
        }
    ]
}
