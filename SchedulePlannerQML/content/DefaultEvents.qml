import QtQuick 2.15
Item {
    property alias defaultEventList: defaultEventList
    ListModel {
        id: defaultEventList

        ListElement {
            eventID: 1
            eventName: "New Year's Day"
            eventType: "Holiday"
            eventDescription: "Celebration of the new year"
            startTime: 0  // Example: starting at 12:00 AM
            endTime: 1439  // Example: ending at 11:59 PM
            eventDay: 1
            eventMonth: 0  // January
            eventYear: 2000
            recurrence: "Annually"
        }

        ListElement {
            eventID: 2
            eventName: "Christmas"
            eventType: "Holiday"
            eventDescription: "Celebration of the birth of Jesus Christ"
            startTime: 0
            endTime: 1439
            eventDay: 25
            eventMonth: 11  // December
            eventYear: 2000
            recurrence: "Bi-weekly"
        }

        // ... You can add more holidays here as ListElement entries
    }
}
