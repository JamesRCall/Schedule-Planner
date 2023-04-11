import QtQuick 2.15
import QtQuick.Controls 2.15

Grid {
    id: calendarGrid
    columns: 7
    rows: 7
    spacing: 5

    Text {
        text: "Sun"
        font.bold: true
        Grid.row: 0
        Grid.column: 0
    }

    Text {
        text: "Mon"
        font.bold: true
        Grid.row: 0
        Grid.column: 1
    }

    Text {
        text: "Tue"
        font.bold: true
        Grid.row: 0
        Grid.column: 2
    }

    Text {
        text: "Wed"
        font.bold: true
        Grid.row: 0
        Grid.column: 3
    }

    Text {
        text: "Thu"
        font.bold: true
        Grid.row: 0
        Grid.column: 4
    }

    Text {
        text: "Fri"
        font.bold: true
        Grid.row: 0
        Grid.column: 5
    }

    Text {
        text: "Sat"
        font.bold: true
        Grid.row: 0
        Grid.column: 6
    }

    Repeater {
        model: 31 // or any number of days you want to show

        Button {
            text: modelData
            onClicked: {
                console.log("Clicked on day " + modelData)
            }

            Grid.row: Math.floor((index + 1) / 7) + 1
            Grid.column: (index + 1) % 7
            width: 50
            height: 50
        }
    }
}
