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
import Qt.labs.platform 1.1


Rectangle {
    id: background
    width: 1920
    height: Constants.height
    color: "#272727"
    state: "Opening"
    scale: 1

    Cal {
        id: cal
    }

    Rectangle {
        id: headerbox
        x: -6
        y: 937
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
        y: 719
        width: 521
        height: 103
        visible: false
        text: "Start Planning"
        state: "normal"

        Connections {
            target: startPlanning
            onClicked: background.state = "MainMenu"
        }
    }

    SButton {
        id: exitApp
        x: 1920
        y: 828
        width: 521
        height: 103
        text: "Exit App"
        state: "normal"

        Connections {
            target: exitApp
            onClicked: background.state = "Opening"
        }
    }

    AddOption {
        id: addOption
        x: -1234
        y: 978

        Connections {
            target: addOption
            onClicked: background.state = "addEventPanel"
        }
    }



    PathView {
        id: pathView
        x: -915
        y: 1567
        width: 200
        height: 100
        delegate: Column {
            spacing: 5
            Rectangle {
                id: createslider
                width: 450
                height: 788
                color: "#212121"
                border.color: "#414141"
                border.width: 5

                Button {
                    id: sliderButton
                    width: 450
                    height: 788
                    opacity: 0.2
                    Connections {
                        target: sliderButton
                        onClicked: background.state = "CreateEvent"
                    }
                }

                Image {
                    id: createimage
                    source: imagesource
                    width: 450
                    height: 788
                    fillMode: Image.PreserveAspectFit
                    opacity: 0.2
                }
                Image {
                    id: addcreate
                    source: "images/addthem.png"
                    width: 200
                    height: 200
                    anchors.verticalCenter: parent.verticalCenter
                    anchors.horizontalCenter: parent.horizontalCenter
                    fillMode: Image.PreserveAspectFit
                    opacity: 0.7
                }
                Text {
                    id: text2
                    width: 200
                    height: 500
                    x: positionx
                    y: positiony
                    color: "#f7f7f7"
                    font.pixelSize: 70
                    text: name
                    font.bold: true
                }




            }

        }
        path: Path {
            startX: 2312
            startY: 375

            PathCubic {
                x: 1401
                y: 516
                control1Y: 425
                control2X: 1651
                control1X: 2016
                control2Y: 498
            }

            PathCubic {
                x: -331.448
                y: 467.184
                control1Y: 524.53333
                control2X: 268.02667
                control1X: 759.06667
                control2Y: 496.01333
            }
        }
        model: ListModel {
            ListElement {
                name: "Create Event"
                positionx: 15
                positiony: 550
                imagesource: "images/createimage1.webp"
            }

            ListElement {
                name: "Create Event"
                positionx: 15
                positiony: 550
                imagesource: "images/createimage2.webp"
            }

            ListElement {
                name: "Create Event"
                positionx: 15
                positiony: 550
                imagesource: "images/createimage3.webp"
            }

            ListElement {
                name: "Create Event"
                positionx: 15
                positiony: 550
                imagesource: "images/createimage4.webp"
            }
        }
    }

    Image {
        id: hopefully
        x: -278
        y: -1070
        width: 1393
        height: 927
        opacity: 0.107
        source: "images/hopefully.webp"
        fillMode: Image.PreserveAspectFit
    }

    Text {
        id: welcome
        x: 2214
        y: -466
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
                onFinished: background.state = "StartMenu"
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
                frame: 1002
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
                frame: 1002
                value: 106
            }

            Keyframe {
                frame: 2002
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
                frame: 1002
                value: 1709
            }

            Keyframe {
                frame: 2002
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
                frame: 1002
                value: 435
            }

            Keyframe {
                frame: 2002
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
                frame: 1002
                value: 211
            }

            Keyframe {
                frame: 2002
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
                frame: 1002
                value: 0
            }

            Keyframe {
                frame: 2002
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
                frame: 1002
                value: 0
            }

            Keyframe {
                frame: 2002
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
                frame: 1002
                value: 0
            }

            Keyframe {
                frame: 2002
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
                frame: 1334
                value: 1920
            }

            Keyframe {
                frame: 2002
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
                frame: 1334
                value: 0
            }

            Keyframe {
                frame: 2002
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
                frame: 1335
                value: 1920
            }

            Keyframe {
                frame: 2003
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
                frame: 1335
                value: 0
            }

            Keyframe {
                frame: 2003
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
        x: 1253
        y: 968
        width: 642
        height: 79
        source: "images/logo-no-background.png"
        fillMode: Image.PreserveAspectFit
    }



    SButton {
        id: goBackButton
        x: 29
        y: 14
        width: 387
        height: 63
        visible: false
        text: "Go Back"

        Connections {
            target: goBackButton
            onClicked: background.state = "MainMenu"
        }
    }

    Text {
        id: eventTitle
        x: 1305
        y: -265
        text: "Create Event "
        font.pixelSize: 12
    }
    ListModel {
        id: listModel
    }



    TextField {
        id: eventName
        background: Rectangle {
            color: "#737373"
        }
        x: 40
        y: 170
        width: 668
        height: 70
        visible: false
        color: "#ffffff"
        font.pointSize: 15
        placeholderTextColor: "#88e4e4e4"
        placeholderText: qsTr("Create Event Name")
    }

    Rectangle {
        id: eventDate
        x: 850
        y: 270
        width: 75
        height: 67
        visible: false
        color: "#737373"

        TextField {
            id: eventMonth
            x: 40
            y: 0
            height: 67
            width: 34
            visible: false
            color: "#ffffff"
            validator: IntValidator {
                bottom: 1
                top: 12
            }
            placeholderText: qsTr("12")
            background: Rectangle {
                color: "#737373"
            }
            font.pointSize: 15
            placeholderTextColor: "#88e4e4e4"
        }


        TextField {
            id: eventDay
            x: 2
            y: 0
            width: 34
            height: 67
            visible: false
            color: "#ffffff"
            validator: IntValidator {
                bottom: 1
                top: 31
            }
            placeholderText: qsTr("12")
            background: Rectangle {
                color: "#737373"
            }
            font.pointSize: 15
            placeholderTextColor: "#88e4e4e4"
        }

        TextField {
            id: eventYear
            x: 80
            y: 0
            height: 67
            width: 32
            visible: false
            color: "#ffffff"
            validator: IntValidator {
                bottom: 2000
                top: 2200
            }
            placeholderText: qsTr("2000")
            background: Rectangle {
                color: "#737373"
            }
            font.pointSize: 15
            placeholderTextColor: "#88e4e4e4"
        }

        Text {
            id: eventSlash
            x: 42
            y: 0
            width: 75
            height: 67
            color: "#88e4e4e4"
            text: qsTr("/")
            font.pixelSize: 20
            horizontalAlignment: Text.AlignHCenter
            verticalAlignment: Text.AlignVCenter
            bottomPadding: 6
            font.bold: false
        }

        Text {
            id: eventSlash2
            x: 8
            y: 0
            width: 75
            height: 67
            color: "#88e4e4e4"
            text: qsTr("/")
            font.pixelSize: 20
            horizontalAlignment: Text.AlignHCenter
            verticalAlignment: Text.AlignVCenter
            bottomPadding: 6
            font.bold: false
            visible: false
        }

    }
    SButton {
        id: createEvent
        x: 1506
        y: 795
        visible: false
        text: "Create Event"

        Connections {
            target: createEvent
            onClicked: {
                if (eventName.text !== "" && eventType.text !== "" && eventDescription.text !== ""
                        && eventMonth.acceptableInput && eventYear.acceptableInput && eventDay.acceptableInput) {

                    // Fetch start and end hours, minutes, and am/pm from tumblers
                    var startHourVal = hoursTumbler.model.get(hoursTumbler.currentIndex).value;
                    var startMinuteVal = minutesTumbler.currentIndex; // As model is from 0-59
                    var startAmPmVal = amPmTumbler.model[amPmTumbler.currentIndex];

                    var endHourVal = hoursTumbler2.model.get(hoursTumbler2.currentIndex).value;
                    var endMinuteVal = minutesTumbler2.currentIndex; // As model is from 0-59
                    var endAmPmVal = amPmTumbler2.model[amPmTumbler2.currentIndex];

                    // Convert 12-hour format to 24-hour format
                    if (startAmPmVal === "PM" && startHourVal !== "12") {
                        startHourVal = Number(startHourVal) + 12;
                    } else if (startAmPmVal === "AM" && startHourVal === "12") {
                        startHourVal = "0";
                    }

                    if (endAmPmVal === "PM" && endHourVal !== "12") {
                        endHourVal = Number(endHourVal) + 12;
                    } else if (endAmPmVal === "AM" && endHourVal === "12") {
                        endHourVal = "0";
                    }

                    // Call the addEvent function
                    cal.addEvent(eventName.text, eventType.text, eventDescription.text, startHourVal.toString(), startMinuteVal.toString(),
                                  endHourVal.toString(), endMinuteVal.toString(), eventDay.text, eventMonth.text, eventYear.text);
                } else {
                    errorMessage.state = "showError";
                }
            }
        }
    }
    SButton {
        id: createTestEvent
        x: 1576
        y: 400
        visible: false
        text: "Create Test Event"

        Connections {
            target: createTestEvent
            onClicked: {
                var testEventName = "July 4th Test Event";
                var testEventType = "Festive";
                var testEventDescription = "A test event for Independence Day.";
                var startHour = "10"; // 10 AM
                var startMinute = "00";
                var endHour = "14"; // 2 PM
                var endMinute = "00";
                var eventDay = "4"; // July 4th
                var eventMonth = "7"; // July
                var eventYear = "2023";

                cal.addEvent(testEventName, testEventType, testEventDescription, startHour, startMinute, endHour, endMinute, eventDay, eventMonth, eventYear);
            }
        }
    }

    SButton {
        id: testButton
        x: 1576
        y: 645
        visible: false

        Connections {
            target: testButton
            onClicked: {
                console.log("eventListModel:", cal.eventListModel);
                console.log("filteredEventModel:", cal.filteredEventModel);
                cal.logListModel(cal.eventListModel);
            }
        }
    }


    TextField {
        id: eventDescription
        x: 800
        y: 170
        width: 668
        height: 67
        visible: false
        color: "#ffffff"
        placeholderTextColor: "#88e4e4e4"
        placeholderText: qsTr("Event Description...")
        background: Rectangle {
            color: "#737373"
        }
        font.pointSize: 15
    }



    Text {
        id: startText
        x: 40
        y: 270
        height: 67
        width: 150
        text: qsTr("Text")
        font.pixelSize: 30
        visible: false
    }


    Text {
        id: endText
        x: 400
        y: 270
        width: 150
        height: 67
        visible: false
        text: qsTr("Text")
        font.pixelSize: 30
    }


    Text {
        id: eventText
        x: 750
        y: 270
        width: 150
        height: 67
        visible: false
        text: qsTr("Text")
        font.pixelSize: 30
    }

    TextField {
        id: eventType
        x: 1290
        y: 270
        width: 668
        height: 70
        visible: false
        color: "#ffffff"
        placeholderText: qsTr("Create Event Name")
        background: Rectangle {
            color: "#737373"
        }
        font.pointSize: 15
        placeholderTextColor: "#88e4e4e4"
    }


    Text {
        id: eventTypeText
        x: 1110
        y: 270
        width: 150
        height: 67
        visible: false
        text: qsTr("Text")
        font.pixelSize: 30
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
                x: 1253
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
                target: welcome
                visible: false
            }

            PropertyChanges {
                target: hopefully
                x: 0
                y: 0
                opacity: 0
                visible: true
            }

            PropertyChanges {
                target: background
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

            PropertyChanges {
                target: calendar
                visible: false
            }

        },

        State {
            name: "StartMenu"

            PropertyChanges {
                target: startPlanning
                x: 1399
                y: 719
                visible: true
                text: "Start Planning"
                state: "normal"
            }

            PropertyChanges {
                target: background
                width: 1920
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

            PropertyChanges {
                target: welcome
                x: 1422
                y: 35
                text: qsTr("Welcome")
            }

            PropertyChanges {
                target: hopefully
                x: 0
                y: 0
            }

            PropertyChanges {
                target: logonobackground
                x: 1253
                y: 968
            }

            PropertyChanges {
                target: headerbox
                y: 937
                anchors.bottomMargin: 0
                anchors.leftMargin: 0
                anchors.rightMargin: 0
            }

            PropertyChanges {
                target: exitApp
                x: 1399
                y: 828
            }
        },
        State {
            name: "MainMenu"

            PropertyChanges {
                target: openingTimeline2
                enabled: false
            }

            PropertyChanges {
                target: timelineAnimation1
                running: false
            }

            PropertyChanges {
                target: hopefully
                visible: false
            }

            PropertyChanges {
                target: startPlanning
                visible: false
            }

            PropertyChanges {
                target: exitApp
                visible: false
            }

            PropertyChanges {
                target: welcome
                visible: false
            }

            PropertyChanges {
                target: addOption
                x: 1569
                y: 621
                width: 288
                height: 288
            }

            PropertyChanges {
                target: pathView
                x: -1115
                y: 1700
                visible: false
            }

            PropertyChanges {
                target: sliderMenu
                x: 1468
                y: 8
                visible: false
                state: "Closed"
            }

            PropertyChanges {
                target: calendar
                x: 46
                y: 24
                width: 1000
                height: 708
                visible: true
            }

            PropertyChanges {
                target: goBackButton
                visible: false
            }

            PropertyChanges {
                target: eventDisplay
                visible: true
            }

            PropertyChanges {
                target: eventdayDisplay
                x: 1110
                y: 23
                visible: true
            }
        },

        State {
            name: "addEventPanel"

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
                target: background
                color: "#272727"
            }

            PropertyChanges {
                target: pathView
                x: -6
                y: 8
                width: 1920
                height: 1072
            }

            PropertyChanges {
                target: hopefully
                visible: false
            }

            PropertyChanges {
                target: welcome
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


            PropertyChanges {
                target: goBackButton
                x: 29
                y: 14
                width: 387
                height: 63
                visible: true
                text: "Go Back"
            }
        },
        State {
            name: "CreateEvent"

            PropertyChanges {
                target: background
                color: "#272727"
            }

            PropertyChanges {
                target: eventTitle
                x: 530
                y: 41
                width: 860
                height: 110
                color: "#ffffff"
                text: qsTr("Create Event")
                font.pixelSize: 70
                horizontalAlignment: Text.AlignHCenter
                verticalAlignment: Text.AlignVCenter
            }

            PropertyChanges {
                target: startPlanning
                x: 1920
                y: 719
            }

            PropertyChanges {
                target: goBackButton
                visible: true
                text: "Go Back"
            }

            PropertyChanges {
                target: exitApp
                visible: false
            }

            PropertyChanges {
                target: createEvent
                x: 1576
                y: 800
                visible: true
            }

            PropertyChanges {
                target: eventName
                x: 40
                y: 170
                width: 1450
                height: 70
                visible: true
            }

            PropertyChanges {
                target: testButton
                visible: true
                text: "My Button"
            }

            PropertyChanges {
                target: startTime
                x: 0
                y: 0
                width: 177
                height: 67
                visible: true
            }

            PropertyChanges {
                target: eventDescription
                x: 40
                y: 406
                width: 1450
                height: 494
                visible: true
            }

            PropertyChanges {
                target: startText
                visible: true
                color: "#ffffff"
                text: qsTr("Start Time:")
                horizontalAlignment: Text.AlignLeft
                verticalAlignment: Text.AlignVCenter
                leftPadding: 5
                font.bold: false
            }

            PropertyChanges {
                target: endText
                visible: true
                color: "#ffffff"
                text: qsTr("End Time:")
                horizontalAlignment: Text.AlignLeft
                verticalAlignment: Text.AlignVCenter
                leftPadding: 5
                font.bold: false
            }

            PropertyChanges {
                target: eventDate
                width: 139
                height: 67
                visible: true
            }

            PropertyChanges {
                target: eventMonth
                x: 6
                y: 0
                width: 34
                height: 67
                visible: true
                horizontalAlignment: Text.AlignHCenter
                placeholderText: qsTr("12")
                rightPadding: 2
            }

            PropertyChanges {
                target: eventYear
                width: 58
                height: 67
                visible: true
                horizontalAlignment: Text.AlignLeft
                leftInset: 5
                leftPadding: 5
                rightPadding: 0
            }

            PropertyChanges {
                target: eventSlash
                width: 87
                height: 67
                rightPadding: 12
                leftPadding: 0
                topPadding: 2
            }

            PropertyChanges {
                target: eventText
                visible: true
                color: "#ffffff"
                text: qsTr("Date:")
                horizontalAlignment: Text.AlignLeft
                verticalAlignment: Text.AlignVCenter
                leftPadding: 5
            }

            PropertyChanges {
                target: eventType
                width: 200
                height: 70
                visible: true
                placeholderText: qsTr("Event Type")
            }

            PropertyChanges {
                target: eventTypeText
                visible: true
                color: "#ffffff"
                text: qsTr("Event Type:")
                verticalAlignment: Text.AlignVCenter
            }

            PropertyChanges {
                target: eventSlash2
                x: 12
                y: 0
                width: 67
                height: 67
                visible: true
                topPadding: 2
            }

            PropertyChanges {
                target: eventDay
                x: 36
                y: 0
                width: 38
                height: 67
                visible: true
                horizontalAlignment: Text.AlignRight
                rightPadding: 0
                placeholderText: qsTr("31")
            }

            PropertyChanges {
                target: sliderMenu
                x: 1468
                y: 8
                visible: true
                state: ""
            }

            PropertyChanges {
                target: createTestEvent
                visible: true
            }

            PropertyChanges {
                target: amPmTumbler
                y: 0
                anchors.leftMargin: 0
            }

            PropertyChanges {
                target: calendar
                color: "#3a3a3a"
            }

            PropertyChanges {
                target: startTimer
                x: 196
                y: 270
                visible: true
            }

            PropertyChanges {
                target: timerFade
                x: 0
                y: 0
                width: 176
                height: 67
            }

            PropertyChanges {
                target: endTimer
                x: 560
                y: 270
                visible: true
            }

            PropertyChanges {
                target: endTime2
                x: 0
                y: 0
                width: 177
                visible: true
            }

            PropertyChanges {
                target: timerFade2
                width: 177
                height: 67
            }

            PropertyChanges {
                target: hoursTumbler
                wheelEnabled: true
            }

            PropertyChanges {
                target: minutesTumbler
                wheelEnabled: true
            }


        }]
    ErrorMessage {
        id: errorMessage
        x: 0
        y: 0
    }

    SliderMenu {
        id: sliderMenu
        x: -639
        y: 1097
    }

    Rectangle {
        id: calendar
        x: 0
        y: 0
        width: 1000
        height: 700
        visible: false
        color: "#3a3a3a"
        border.color: "#5f5f5f"

        CalendarButtons {
            id: prevMonth
            text: "Previous"
            x: 23
            y: 16
            font.pointSize: 15
            onClicked: cal.month = (cal.month > 0) ? cal.month - 1 : (cal.month == 0 ) ? (cal.year--, 11) : cal.month;
        }

        CalendarButtons {
            id: nextMonth
            text: "Next"
            x: 875
            y: 16
            onClicked: cal.month = (cal.month < 11) ? cal.month + 1 : (cal.month == 11) ? (cal.year++, 0) : cal.month;
        }

        Text {
            id: calendarTitle
            text: cal.monthName + " - " + cal.year
            font.bold: true
            color: "#f7f7f7"
            font.pixelSize: 50
            anchors.horizontalCenter: parent.horizontalCenter
        }

        Grid {
            id: calendarGrid
            x: 14
            y: 17
            topPadding: 50
            verticalItemAlignment: Grid.AlignVCenter
            horizontalItemAlignment: Grid.AlignHCenter
            columns: 7
            rows: 7
            spacing: 6
            anchors.verticalCenter: calendarTitle.verticalBottom
            anchors.horizontalCenter: parent.horizontalCenter

            Text {
                id : sunday
                text: "Sun"
                font.bold: true
                color: "#f7f7f7"
                font.pixelSize: 30
            }
            Text {
                id : monday
                text: "Mon"
                font.bold: true
                color: "#f7f7f7"
                font.pixelSize: 30
            }

            Text {
                id : tuesday
                text: "Tue"
                font.bold: true
                color: "#f7f7f7"
                font.pixelSize: 30
            }

            Text {
                id : wednesday
                text: "Wed"
                font.bold: true
                color: "#f7f7f7"
                font.pixelSize: 30
            }

            Text {
                id : thursday
                text: "Thu"
                font.bold: true
                color: "#f7f7f7"
                font.pixelSize: 30
            }

            Text {
                id : friday
                text: "Fri"
                font.bold: true
                color: "#f7f7f7"
                font.pixelSize: 30
            }

            Text {
                id : saturday
                text: "Sat"
                font.bold: true
                color: "#f7f7f7"
                font.pixelSize: 30
            }

            // Define the other days of the week

            Repeater {
                id : calendarRepeater
                model: cal.daysInMonth + cal.dayOfWeek // or any number of days you want to show
                Button {
                    id: dayButton
                    property int buttonYear: cal.backupyear
                    property int buttonMonth: cal.backupmonth
                    property int buttonDay: modelData - cal.dayOfWeek + 1

                    width: 130
                    height: 89
                    opacity: (modelData - cal.dayOfWeek >= 0) ? true : false
                    background: Rectangle {
                        id: calendarButtonRectangle
                        color: dayButton.pressed ? "#3d3d3d" : "#a2a2a2" // change color when pressed
                    }
                    Rectangle { // Or you can use Ellipse
                        id: textBackgroundCircle
                        color: "#5A5A5A" // Set the color as per your requirement
                        width: 32 // Width of the circle (adjust as needed)
                        height: 32 // Height of the circle (adjust as needed)
                        radius: width / 2 // Make it a circle
                        visible: cal.year === dayButton.buttonYear &&
                                 cal.month === dayButton.buttonMonth &&
                                 cal.day === dayButton.buttonDay
                        x: calendarButtonText.x + 3 // Shift to the right by 5 units
                        y: calendarButtonText.y - 1// Shift downwards by 5 units
                        enabled: false
                    }
                    Text {
                        id: calendarButtonText
                        x: 6
                        y: 6
                        width: 39
                        height: 26
                        color: "#ffffff"
                        text: modelData - cal.dayOfWeek + 1
                        font.pixelSize: 20
                        horizontalAlignment: Text.AlignHCenter
                        verticalAlignment: Text.AlignVCenter
                    }
                    ListView {
                        width: 130
                        height: 50
                        model: cal.eventListModel
                        enabled: false
                        y: 38
                        spacing: 2
                        delegate:

                        Rectangle {
                            visible: (eventDay === buttonDay && eventMonth === cal.month && eventYear === cal.year)
                            width: parent.width - 6
                            height: 15 // Adjust for desired padding
                            color: "#5A5A5A" // Choose your desired background color
                            radius: 4
                            x: 3
                            Rectangle {
                                width: 9 // Width of the circle (double the radius)
                                height: 9 // Height of the circle (double the radius)
                                radius: 15
                                color: "#B2FCFB" // Set the color as per your requirement
                                x: 2
                                anchors.verticalCenter: parent.verticalCenter
                            }

                            Text {
                                text: eventName
                                color: "white"
                                font.pixelSize: 10
                                anchors.left: parent.left
                                anchors.right: parent.right
                                leftPadding: 15
                                wrapMode: Text.WrapAnywhere

                            }
                        }
                    }


                    Connections {
                        target: dayButton
                        onClicked: {
                            console.log("I was clicked")

                            cal.targetDay = modelData - cal.dayOfWeek + 1;
                            console.log(cal.targetDay, cal.month, cal.year)
                        }
                    }
                }
            }
        }
    }

    Item {
        id: startTimer
        width: 191
        height: 67
        visible: false

        FontMetrics {
            id: fontMetrics
            font.pixelSize: 20
        }

        Rectangle {
            id: startTime
            x: 0
            y: 0
            width: 75
            height: 67
            visible: false
            color: "#737373"


        }

        Component {
            id: numberDelegate

            Item {
                width: parent.width / 3
                height: fontMetrics.height * 2.5  // Increased multiplier for vertical spacing

                Label {
                    text: modelData < 10 ? "0" + modelData : modelData
                    anchors.centerIn: parent
                    font.pixelSize: fontMetrics.font.pixelSize / 1.2
                    horizontalAlignment: Text.AlignHCenter
                    verticalAlignment: Text.AlignVCenter
                    color: "white"

                }
            }
        }

        Component {
            id: amPmDelegate

            Item {
                width: parent.width / 3
                height: fontMetrics.height * 2.4  // Increased multiplier for vertical spacing

                Label {
                    text: modelData
                    anchors.centerIn: parent
                    font.pixelSize: fontMetrics.font.pixelSize / 1.2
                    horizontalAlignment: Text.AlignHCenter
                    verticalAlignment: Text.AlignVCenter
                    color: "white"
                }
            }
        }


        Tumbler {
            id: hoursTumbler
            width: parent.width / 3
            height: parent.height
            visibleItemCount: 2
            enabled: true
            model: ListModel {
                ListElement { value: "1" }
                ListElement { value: "2" }
                ListElement { value: "3" }
                ListElement { value: "4" }
                ListElement { value: "5" }
                ListElement { value: "6" }
                ListElement { value: "7" }
                ListElement { value: "8" }
                ListElement { value: "9" }
                ListElement { value: "10" }
                ListElement { value: "11" }
                ListElement { value: "12" }
            }
            delegate: numberDelegate
        }


        Tumbler {
            id: minutesTumbler
            width: parent.width / 3
            height: parent.height
            model: 60
            delegate: numberDelegate
            anchors.left: hoursTumbler.right
            visibleItemCount: 2
        }


        Tumbler {
            id: amPmTumbler
            width: parent.width / 3
            height: parent.height
            model: ["AM", "PM"]
            delegate: amPmDelegate
            anchors.left: minutesTumbler.right
            visibleItemCount: 2
            wheelEnabled: true
        }
        Rectangle {
            id: timerFade
            width: 200
            height: 200
            enabled: false
            gradient: Gradient {
                GradientStop { position: 0.0; color: "#737373" }
                GradientStop { position: 0.5; color: "transparent" }
                GradientStop { position: 1.0; color: "#737373" }
            }
        }


    }

    Item {
        id: endTimer
        x: -7
        y: -7
        width: 191
        height: 67
        visible: false
        FontMetrics {
            id: fontMetrics1
            font.pixelSize: 20
        }

        Rectangle {
            id: endTime2
            x: -366
            y: -2
            width: 75
            height: 67
            visible: false
            color: "#737373"
        }

        Component {
            id: numberDelegate1
            Item {
                width: parent.width / 3
                height: fontMetrics1.height * 2.5
                Label {
                    color: "#ffffff"
                    text: modelData < 10 ? "0" + modelData : modelData
                    font.pixelSize: fontMetrics1.font.pixelSize / 1.2
                    horizontalAlignment: Text.AlignHCenter
                    verticalAlignment: Text.AlignVCenter
                    anchors.centerIn: parent
                }
            }
        }

        Component {
            id: amPmDelegate1
            Item {
                width: parent.width / 3
                height: fontMetrics1.height * 2.4
                Label {
                    color: "#ffffff"
                    text: modelData
                    font.pixelSize: fontMetrics1.font.pixelSize / 1.2
                    horizontalAlignment: Text.AlignHCenter
                    verticalAlignment: Text.AlignVCenter
                    anchors.centerIn: parent
                }
            }
        }

        Tumbler {
            id: hoursTumbler2
            width: parent.width / 3
            height: parent.height
            enabled: true
            delegate: numberDelegate1
            visibleItemCount: 2
            model: ListModel {
                ListElement {
                    value: "1"
                }

                ListElement {
                    value: "2"
                }

                ListElement {
                    value: "3"
                }

                ListElement {
                    value: "4"
                }

                ListElement {
                    value: "5"
                }

                ListElement {
                    value: "6"
                }

                ListElement {
                    value: "7"
                }

                ListElement {
                    value: "8"
                }

                ListElement {
                    value: "9"
                }

                ListElement {
                    value: "10"
                }

                ListElement {
                    value: "11"
                }

                ListElement {
                    value: "12"
                }
            }
        }

        Tumbler {
            id: minutesTumbler2
            width: parent.width / 3
            height: parent.height
            anchors.left: hoursTumbler2.right
            delegate: numberDelegate1
            visibleItemCount: 2
            model: 60
        }

        Tumbler {
            id: amPmTumbler2
            width: parent.width / 3
            height: parent.height
            anchors.left: minutesTumbler2.right
            delegate: amPmDelegate1
            visibleItemCount: 2
            model: ["AM", "PM"]
        }

        Rectangle {
            id: timerFade2
            width: 200
            height: 200
            enabled: false
            gradient: Gradient {
                GradientStop {
                    position: 0
                    color: "#737373"
                }

                GradientStop {
                    position: 0.5
                    color: "#00000000"
                }

                GradientStop {
                    position: 1
                    color: "#737373"
                }
            }
        }

    }
    Rectangle {
        id: eventdayDisplay
        x: 1110
        y: 89
        width: 417
        height: 820
        visible: false
        color: "#3a3a3a"
        border.color: "#5f5f5f"
        Text {
            id: eventDayTitle
            text: cal.monthName + " - " + cal.targetDay
            font.bold: true
            color: "#f7f7f7"
            font.pixelSize: 50
            anchors.horizontalCenter: parent.horizontalCenter
        }

        ListView {
            id: eventDisplay
            width: parent.width
            height: parent.height - 75
            model: cal.eventListModel
            y: 75
            spacing: 2

            delegate:
                Rectangle {
                visible: (eventDay === cal.targetDay && eventMonth === cal.month && eventYear === cal.year)
                width: parent.width - 6
                height: 50 // Adjust for desired padding
                color: "#5A5A5A" // Choose your desired background color
                radius: 4
                x: 3

                Text {
                    text: eventName
                    color: "white"
                    font.pixelSize: 10
                    anchors.left: parent.left
                    anchors.right: parent.right
                    leftPadding: 15
                    wrapMode: Text.WrapAnywhere

                }
            }
        }
    }





}





/*##^##
Designer {
    D{i:0;annotation:"1 //;;//  //;;//  //;;// <!DOCTYPE HTML PUBLIC \"-//W3C//DTD HTML 4.0//EN\" \"http://www.w3.org/TR/REC-html40/strict.dtd\">\n<html><head><meta name=\"qrichtext\" content=\"1\" /><meta charset=\"utf-8\" /><style type=\"text/css\">\np, li { white-space: pre-wrap; }\nhr { height: 1px; border-width: 0; }\nli.unchecked::marker { content: \"\\2610\"; }\nli.checked::marker { content: \"\\2612\"; }\n</style></head><body style=\" font-family:'Segoe UI'; font-size:9pt; font-weight:400; font-style:normal;\">\n<p style=\"-qt-paragraph-type:empty; margin-top:0px; margin-bottom:0px; margin-left:0px; margin-right:0px; -qt-block-indent:0; text-indent:0px;\"><br /></p></body></html> //;;// 1690254314";customId:""}
D{i:251}D{i:249}
}
##^##*/
