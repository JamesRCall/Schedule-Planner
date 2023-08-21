import QtQuick 2.15
import QtQuick.Controls 2.15
import QtQuick.Timeline 1.0

Item {
    id: menu
    x: -400
    width: 446
    height: 931
    state: "Closed"


    Rectangle {
        id: menuBackground
        x: 454
        y: 0
        width: 446
        height: 931
        color: "#303030"
        border.color: "#a1a1a1"
        border.width: 3
    }

    MenuButton {
        id: menuButton
        x: 338
        y: 8
    }

    Timeline {
        id: menuSlider
        animations: [
            TimelineAnimation {
                id: menuOpen
                onFinished: menu.state = "Open"
                running: false
                loops: 1
                duration: 499
                to: 1000
                from: 501
            },
            TimelineAnimation {
                id: menuClose
                onFinished: menu.state = "Closed"
                running: false
                loops: 1
                duration: 499
                to: 499
                from: 1
            }
        ]
        enabled: false
        startFrame: 0
        endFrame: 1000

        KeyframeGroup {
            target: menuBackground
            property: "x"
            Keyframe {
                value: 0
                frame: 0
            }

            Keyframe {
                value: 454
                frame: 500
            }

            Keyframe {
                value: 0
                frame: 1000
            }
        }
    }
    states: [
        State {
            name: "Opening"
            when: menuButton.checked

            PropertyChanges {
                target: menuBackground
                x: 454
                color: "#303030"
            }

            PropertyChanges {
                target: menuSlider
                enabled: true
            }

            PropertyChanges {
                target: menuOpen
                running: true
            }

            PropertyChanges {
                target: menuClose
                running: false
            }
        },
        State {
            name: "Open"

            PropertyChanges {
                target: menuBackground
                x: 0
            }

            PropertyChanges {
                target: menuSlider
                currentFrame: 0
                enabled: true
            }

        },
        State {
            name: "Closing"
            when: !menuButton.checked

            PropertyChanges {
                target: menuBackground
                x: 0
                y: 0
            }

            PropertyChanges {
                target: menuSlider
                enabled: true
            }

            PropertyChanges {
                target: menuOpen
                running: false
            }

            PropertyChanges {
                target: menuClose
                running: true
            }
        }
        ,        State {
            name: "Closed"


            PropertyChanges {
                target: menuOpen
                running: false
            }

            PropertyChanges {
                target: menuSlider
                currentFrame: 500
                enabled: true
            }

            PropertyChanges {
                target: menuClose
                running: false
            }
        }
    ]

}
