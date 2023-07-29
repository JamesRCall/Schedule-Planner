import QtQuick 2.15
import QtQuick.Controls 2.15

Item {
    id: item1
    width: 1000
    height: 800 // Increase height to make room for the list view
    Rectangle {
        id: calendar
        x: 0
        y: 0
        width: 1000
        height: 600
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
                    text: modelData - cal.dayOfWeek + 1
                    opacity: (modelData - cal.dayOfWeek >= 0) ? true : false
                    width: 130
                    height: 70
                }
            }
        }

        ListView {
            id: eventListView
            x: 0
            y: 600
            width: parent.width
            height: 200 // Adjust width and height to suit your needs
            model: cal.eventModel
            delegate: Item {
                width: eventListView.width
                height: 50
                Row {
                    spacing: 10
                    Text {
                        text: "Event Name: " + model.eventName
                        color: "white"
                    }
                    Text {
                        text: "Event Type: " + model.eventType
                        color: "white"
                    }
                    Text {
                        text: "Start Time: " + model.startTime
                        color: "white"
                    }
                    Text {
                        text: "End Time: " + model.endTime
                        color: "white"
                    }
                }
            }

            SButton {
                id: testEventButton // Rename this ID as per your convention
                x: 92
                y: 8
                visible: true
                text: "Create Test Event"
            }
        }
    }
}
