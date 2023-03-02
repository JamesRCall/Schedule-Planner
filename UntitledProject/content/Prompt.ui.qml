

/*
This is a UI file (.ui.qml) that is intended to be edited in Qt Design Studio only.
It is supposed to be strictly declarative and only uses a subset of QML. If you edit
this file manually, you might introduce QML code that is not supported by Qt Design Studio.
Check out https://doc.qt.io/qtcreator/creator-quick-ui-forms.html for details on .ui.qml files.
*/
import QtQuick 6.2
import QtQuick.Controls 6.2
import UntitledProject
import QtQuick.Timeline 6.0
import QtQuick3D.Helpers 6.4
import QtQuick.Studio.Components 1.0
import FlowView 6.0

Rectangle {
    id: rectangle
    width: Constants.width
    height: Constants.height
    color: "#272727"
    state: "StartMenu"
    scale: 1

    Rectangle {
        id: rectangle1
        x: 8
        y: 937
        width: 1912
        height: 143
        color: "#1d1d1d"
        anchors.left: parent.left
        anchors.right: parent.right
        anchors.bottom: parent.bottom
        anchors.rightMargin: 0
        anchors.bottomMargin: 0
        anchors.leftMargin: 8

        Image {
            id: logonobackground
            x: 1254
            y: 32
            width: 642
            height: 79
            source: "images/logo-no-background.png"
            fillMode: Image.PreserveAspectFit
        }
    }

    SButton {
        id: startPlanning
        x: 810
        y: 344
        text: "Start Planning"

        Connections {
            target: startPlanning
            onClicked: rectangle.state = "State2"
        }
    }

    SButton {
        id: exitApp
        x: 810
        y: 574
        text: "Exit App"
        state: "normal"

        Connections {
            target: exitApp
            onClicked: exitApp.toggle()
        }
    }

    PathView {
        id: pathView
        x: -557.576
        y: 796.97
        width: 250
        height: 130
        delegate: Column {
            spacing: 5
            SButton {
                id: colorCode
                text: "Exit App"
                state: "normal"
            }
            Text {
                x: 5
                text: name
                font.bold: true
                anchors.horizontalCenter: parent.horizontalCenter
            }
        }
        path: Path {
            startX: 2145
            startY: 575

            PathCubic {
                x: 2024
                y: 546
                control2Y: 546
                control1Y: 575
                control2X: 2024
                control1X: 2145
            }

            PathCubic {
                x: 412.552
                y: 667.184
                control2Y: 615.01333
                control1Y: 584.53333
                control2X: 994.02667
                control1X: 1497.06667
            }

            PathCubic {
                x: -482
                y: 680
                control2Y: 685
                control1Y: 700.44
                control2X: -184.6
                control1X: -119.16
            }
        }
        model: ListModel {
            ListElement {
                name: "Grey"
                colorCode: "grey"
            }

            ListElement {
                name: "Red"
                colorCode: "red"
            }

            ListElement {
                name: "Blue"
                colorCode: "blue"
                source: "images/logo-black.png"
            }

            ListElement {
                name: "Green"
                colorCode: "green"
            }
        }
    }




    states: [
        State {
            name: "StartMenu"

            PropertyChanges {
                target: startPlanning
                visible: true
                text: "Start Planning"
                autoExclusive: false
                checked: false
                checkable: false
            }

            PropertyChanges {
                target: rectangle
                color: "#272727"
            }
        },
        State {
            name: "State2"

            PropertyChanges {
                target: startPlanning
                visible: false
                text: "Start Planning"
            }

            PropertyChanges {
                target: exitApp
                visible: false
            }

            PropertyChanges {
                target: rectangle
                color: "#272727"
            }

            PropertyChanges {
                target: pathView
                x: 0
                y: 13
                width: 1920
                height: 1072
            }
        },
        State {
            name: "State1"
        },
        State {
            name: "State3"
        }
    ]
}


