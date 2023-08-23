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
            recurrence: "Annually"
        }
        ListElement {
            eventID: 3
            eventName: "Valentine's Day"
            eventType: "Holiday"
            eventDescription: "Celebration of love and affection"
            startTime: 0
            endTime: 1439
            eventDay: 14
            eventMonth: 1  // February
            eventYear: 2000
            recurrence: "Annually"
        }

        ListElement {
            eventID: 4
            eventName: "Easter Sunday"
            eventType: "Holiday"
            eventDescription: "Christian celebration of the resurrection of Jesus Christ"
            startTime: 0
            endTime: 1439
            eventDay: 12  // Example: April 12th, but Easter varies each year
            eventMonth: 3  // April
            eventYear: 2000
            recurrence: "Annually"  // Note: In reality, the date of Easter changes every year
        }

        ListElement {
            eventID: 5
            eventName: "Independence Day"
            eventType: "Holiday"
            eventDescription: "Celebration of the country's independence"
            startTime: 0
            endTime: 1439
            eventDay: 4
            eventMonth: 6  // July
            eventYear: 2000
            recurrence: "Annually"
        }

        ListElement {
            eventID: 6
            eventName: "Thanksgiving"
            eventType: "Holiday"
            eventDescription: "A day for giving thanks for the harvest"
            startTime: 0
            endTime: 1439
            eventDay: 26  // Example: 4th Thursday of November
            eventMonth: 10  // November
            eventYear: 2000
            recurrence: "Annually"
        }

        ListElement {
            eventID: 7
            eventName: "Mother's Day"
            eventType: "Holiday"
            eventDescription: "A day to honor mothers"
            startTime: 0
            endTime: 1439
            eventDay: 10  // Example: Second Sunday of May
            eventMonth: 4  // May
            eventYear: 2000
            recurrence: "Annually"
        }

        ListElement {
            eventID: 8
            eventName: "Father's Day"
            eventType: "Holiday"
            eventDescription: "A day to honor fathers"
            startTime: 0
            endTime: 1439
            eventDay: 21  // Example: Third Sunday of June
            eventMonth: 5  // June
            eventYear: 2000
            recurrence: "Annually"
        }

        ListElement {
            eventID: 9
            eventName: "Halloween"
            eventType: "Holiday"
            eventDescription: "A celebration dedicated to remembering the dead"
            startTime: 0
            endTime: 1439
            eventDay: 31
            eventMonth: 9  // October
            eventYear: 2000
            recurrence: "Annually"
        }

        // ... You can add more holidays here as ListElement entries
    }
}
