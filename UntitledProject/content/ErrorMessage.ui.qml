/*
This is a UI file (.ui.qml) that is intended to be edited in Qt Design Studio only.
It is supposed to be strictly declarative and only uses a subset of QML. If you edit
this file manually, you might introduce QML code that is not supported by Qt Design Studio.
Check out https://doc.qt.io/qtcreator/creator-quick-ui-forms.html for details on .ui.qml files.
*/

import QtQuick 2.15
import QtQuick.Controls 2.15
import QtQuick.Timeline 1.0

Item {
    id: item1
    width: 1920
    height: 1080
    Rectangle {
        id: errorMessage
        color: "#343434"
        radius: 20
        border.color: "#803535"
        width: 1000
        height: 75
        y: 1080

        anchors.horizontalCenter: parent.horizontalCenter
        Text {
            text: "Error: unsupported values."
            color: "#c92f2f"
            anchors.centerIn: parent
            font.pointSize: 25
        }
    }

    StateGroup {
        id: stateGroup1
    }

    Timeline {
        id: timeline
        animations: [
            TimelineAnimation {
                id: errorPopUp
                onFinished: item1.state = "hideError"
                running: false
                loops: 1
                duration: 3000
                to: 3000
                from: 0
            }
        ]
        enabled: false
        endFrame: 3000
        startFrame: 0

        KeyframeGroup {
            target: errorMessage
            property: "y"
            Keyframe {
                value: 1080
                frame: 0
            }

            Keyframe {
                easing.bezierCurve: [0.39,0.575,0.565,1,1,1]
                value: 780
                frame: 1002
            }
        }

        KeyframeGroup {
            target: errorMessage
            property: "opacity"
            Keyframe {
                easing.bezierCurve: [0.2,0.2,0.8,0.8,1,1]
                value: 1
                frame: 1336
            }

            Keyframe {
                value: 0
                frame: 2004
            }
        }
    }
    states: [
        State {
            name: "showError"

            PropertyChanges {
                target: timeline
                enabled: true
            }

            PropertyChanges {
                target: errorPopUp
                running: true
            }
        },
        State {
            name: "hideError"

            PropertyChanges {
                target: timeline
                enabled: false
            }

            PropertyChanges {
                target: errorPopUp
                running: false
            }
        }
    ]
}
