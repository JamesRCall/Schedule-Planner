

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
    property alias timelineAnimation: timelineAnimation
    state: "Opening"
    scale: 1

    Rectangle {
        id: headerbox
        x: -6
        y: 931
        width: 1912
        height: 143
        color: "#1d1d1d"
        anchors.left: parent.left
        anchors.right: parent.right
        anchors.bottom: parent.bottom
        anchors.leftMargin: 0
        anchors.rightMargin: 0
        anchors.bottomMargin: 0
    }

    SButton {
        id: startPlanning
        x: 1399
        y: 715
        width: 521
        height: 103
        text: "Start Planning"

        Connections {
            target: startPlanning
            onClicked: rectangle.state = "State2"
        }
    }

    SButton {
        id: exitApp
        x: 1399
        y: 824
        width: 521
        height: 103
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

    Image {
        id: hopefully
        x: 0
        y: 3
        width: 1393
        height: 927
        opacity: 0.107
        source: "images/hopefully.webp"
        fillMode: Image.PreserveAspectFit
    }

    Text {
        id: text1
        x: 1418
        y: 18
        width: 485
        height: 270
        color: "#f7f7f7"
        text: qsTr("Welcome")
        font.pixelSize: 80
        horizontalAlignment: Text.AlignHCenter
        verticalAlignment: Text.AlignVCenter
        font.weight: Font.ExtraBold
    }

    Timeline {
        id: openingTimeline
        animations: [
            TimelineAnimation {
                id: timelineAnimation
                onFinished: rectangle.state = "StartMenu"
                loops: 1
                duration: 3000
                running: false
                to: 3000
                from: 0
            }
        ]
        enabled: false
        startFrame: 0
        endFrame: 3000

        KeyframeGroup {
            target: logonobackground
            property: "opacity"
            Keyframe {
                frame: 0
                value: 0
            }

            Keyframe {
                frame: 1000
                value: 1
            }
        }

        KeyframeGroup {
            target: logonobackground
            property: "x"
            Keyframe {
                frame: 0
                value: 106
            }

            Keyframe {
                frame: 1000
                value: 106
            }

            Keyframe {
                frame: 2000
                value: 1253
            }
        }

        KeyframeGroup {
            target: logonobackground
            property: "width"
            Keyframe {
                frame: 0
                value: 1709
            }

            Keyframe {
                frame: 1000
                value: 1709
            }

            Keyframe {
                frame: 2000
                value: 642
            }
        }

        KeyframeGroup {
            target: logonobackground
            property: "y"
            Keyframe {
                frame: 0
                value: 435
            }

            Keyframe {
                frame: 1000
                value: 435
            }

            Keyframe {
                frame: 2000
                value: 968
            }
        }

        KeyframeGroup {
            target: logonobackground
            property: "height"
            Keyframe {
                frame: 0
                value: 211
            }

            Keyframe {
                frame: 1000
                value: 211
            }

            Keyframe {
                frame: 2000
                value: 79
            }
        }

        KeyframeGroup {
            target: hopefully
            property: "opacity"
            Keyframe {
                frame: 0
                value: 0
            }

            Keyframe {
                frame: 1000
                value: 0
            }

            Keyframe {
                frame: 2000
                value: 0.11
            }
        }

        KeyframeGroup {
            target: headerbox
            property: "height"
            Keyframe {
                frame: 0
                value: 0
            }

            Keyframe {
                frame: 1000
                value: 0
            }

            Keyframe {
                frame: 2000
                value: 143
            }
        }

        KeyframeGroup {
            target: headerbox
            property: "opacity"
            Keyframe {
                frame: 0
                value: 0
            }

            Keyframe {
                frame: 1000
                value: 0
            }

            Keyframe {
                frame: 2000
                value: 1
            }
        }

        KeyframeGroup {
            target: startPlanning
            property: "x"
            Keyframe {
                frame: 0
                value: 1920
            }

            Keyframe {
                frame: 2000
                value: 1920
            }

            Keyframe {
                frame: 3000
                value: 1399
            }
        }

        KeyframeGroup {
            target: startPlanning
            property: "opacity"
            Keyframe {
                frame: 0
                value: 0
            }

            Keyframe {
                frame: 2000
                value: 0
            }

            Keyframe {
                frame: 3000
                value: 1
            }
        }

        KeyframeGroup {
            target: exitApp
            property: "x"
            Keyframe {
                frame: 0
                value: 1920
            }

            Keyframe {
                frame: 2000
                value: 1920
            }

            Keyframe {
                frame: 3000
                value: 1399
            }
        }

        KeyframeGroup {
            target: exitApp
            property: "opacity"
            Keyframe {
                frame: 0
                value: 0
            }

            Keyframe {
                frame: 2000
                value: 0
            }

            Keyframe {
                frame: 3000
                value: 1
            }
        }
    }

    Timeline {
        id: openingTimeline2
        animations: [
            TimelineAnimation {
                id: timelineAnimation1
                loops: 1
                duration: 1000
                running: false
                to: 1000
                from: -2
            }
        ]
        enabled: false
        startFrame: 0
        endFrame: 1000
    }

    Image {
        id: logonobackground
        x: 1254
        y: 969
        width: 642
        height: 79
        source: "images/logo-no-background.png"
        fillMode: Image.PreserveAspectFit
    }








    states: [
        State {
            name: "Opening"

            PropertyChanges {
                target: openingTimeline
                enabled: true
            }

            PropertyChanges {
                target: timelineAnimation
                running: true
            }

            PropertyChanges {
                target: logonobackground
                x: 106
                y: 435
                width: 1709
                height: 211
                visible: true
            }

            PropertyChanges {
                target: openingTimeline2
            }

            PropertyChanges {
                target: timelineAnimation1
                running: true
            }

            PropertyChanges {
                target: startPlanning
                x: 1920
                opacity: 0
                visible: true
            }

            PropertyChanges {
                target: exitApp
                opacity: 0
                visible: true
            }

            PropertyChanges {
                target: text1
                visible: false
            }

            PropertyChanges {
                target: hopefully
                opacity: 0
                visible: true
            }

            PropertyChanges {
                target: rectangle
                color: "#272727"
            }

            PropertyChanges {
                target: headerbox
                y: 1080
                height: 0
                opacity: 0
                color: "#1d1d1d"
                anchors.leftMargin: 0
                anchors.rightMargin: 0
                anchors.bottomMargin: 0
            }
        },

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

            PropertyChanges {
                target: openingTimeline
            }

            PropertyChanges {
                target: timelineAnimation
                running: true
            }

            PropertyChanges {
                target: openingTimeline2
                enabled: false
            }

            PropertyChanges {
                target: timelineAnimation1
                running: false
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

            PropertyChanges {
                target: hopefully
                visible: false
            }

            PropertyChanges {
                target: text1
                visible: false
            }

            PropertyChanges {
                target: openingTimeline
                enabled: false
            }

            PropertyChanges {
                target: timelineAnimation
                running: false
            }

            PropertyChanges {
                target: openingTimeline2
                enabled: false
            }

            PropertyChanges {
                target: timelineAnimation1
                running: false
            }
        },
        State {
            name: "State4"

            PropertyChanges {
                target: openingTimeline2
                enabled: false
            }

            PropertyChanges {
                target: timelineAnimation1
                running: false
            }
        }
    ]
}


