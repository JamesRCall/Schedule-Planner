/*
This is a UI file (.ui.qml) that is intended to be edited in Qt Design Studio only.
It is supposed to be strictly declarative and only uses a subset of QML. If you edit
this file manually, you might introduce QML code that is not supported by Qt Design Studio.
Check out https://doc.qt.io/qtcreator/creator-quick-ui-forms.html for details on .ui.qml files.
*/

import QtQuick 6.2
import QtQuick.Controls 6.2
import UntitledProject

Rectangle {
    id: rectangle
    width: Constants.width
    height: Constants.height
    color: "#272727"
    border.color: "#ffffff"


    PathView {
        id: pathView
        y: 393
        width: 1328
        height: 374
        anchors.horizontalCenterOffset: -33
        anchors.horizontalCenter: rectangle1.horizontalCenter
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
            }

            ListElement {
                name: "Green"
                colorCode: "green"
            }
        }
        delegate: Column {
            spacing: 5
            Rectangle {
                width: 40
                height: 40
                color: colorCode
                anchors.horizontalCenter: parent.horizontalCenter
            }

            Text {
                x: 5
                text: name
                font.bold: true
                anchors.horizontalCenter: parent.horizontalCenter
            }
        }
        path: Path {
            startX: 359
            startY: 291

            PathCubic {
                x: 120
                y: 24
                control1Y: 217.33333
                control2Y: 58.33333
                control2X: 213.33333
                control1X: 546.33333
            }

            PathCubic {
                x: 453
                y: 255
                control1Y: 58.33333
                control2Y: 83.33333
                control2X: 26.66667
                control1X: 26.66667
            }

            PathCubic {
                x: 369
                y: 291
                control1Y: 255
                control2Y: 255
                control2X: 453
                control1X: 453
            }
        }
    }

    Slider {
        id: slider
        x: 546
        y: 832
        width: 987
        height: 20
        anchors.horizontalCenterOffset: -10
        anchors.horizontalCenter: parent.horizontalCenter
        value: 0.5
    }

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
        anchors.leftMargin: 0
        anchors.bottomMargin: 0
    }

    Text {
        color: "#e06efdff"
        text: qsTr("Schedule Planner.exe")
        anchors.verticalCenter: rectangle1.verticalCenter
        wrapMode: Text.NoWrap
        font.bold: false
        font.family: Constants.font.family
        font.pointSize: 25
        anchors.horizontalCenter: parent.horizontalCenter
        anchors.horizontalCenterOffset: 701
        anchors.verticalCenterOffset: 31
    }
    states: [
        State {
            name: "State1"
        }
    ]
}
