import QtQuick 6.2

Item {
    property int month: (new Date()).getMonth()
    property int year: (new Date()).getFullYear()
    property int backupmonth: (new Date()).getMonth()
    property int backupyear: (new Date()).getFullYear()
    property int day: (new Date()).getDate()
    property int targetDay: (new Date()).getDate()
    property int daysInMonth: {
        return new Date(year, month+1, 0).getDate()
    }
    property var filteredEvents: (function() {
        return eventListModel.filter(function(event) {
            return event.eventYear === buttonYear && event.eventMonth === buttonMonth && event.eventDay === buttonDay;
        });
    })();
    property int currentYear: (new Date()).getFullYear()
    property int currentMonth: (new Date()).getMonth()
    property int daysInCurrentMonth: new Date(currentYear, currentMonth + 1, 0).getDate()

    property string monthName: {
        var months = ["January", "February", "March", "April", "May", "June",
                      "July", "August", "September", "October", "November", "December"];
        return months[month % 12];
    }
    property string targetmonthName: {
        var months = ["January", "February", "March", "April", "May", "June",
                      "July", "August", "September", "October", "November", "December"];
        return months[backupmonth % 12];
    }
    property var eventTypeColors: {
        "Work": "white",
        "School": "blue",
        "Gym": "yellow",
        "Medical": "green",
        "Social": "purple",
        "Chore": "orange",
        "Exam": "red"
    }



    property int dayOfWeek: new Date(year, month, 1).getDay()  // 0 (Sun) to 6 (Sat)
    property int test: 999

    property alias eventListModel: eventListModel
    ListModel {
        id: eventListModel
    }

    property alias filteredEventModel: filteredEventModel
    ListModel {
        id: filteredEventModel
    }

    property alias monthListModel: monthListModel
    ListModel {
        id: monthListModel
    }

    property alias eventDropModel: eventDropModel
    ListModel {
        id: eventDropModel
        ListElement { key: "Work"; value: "white" }
        ListElement { key: "School"; value: "blue" }
        ListElement { key: "Gym"; value: "yellow" }
        ListElement { key: "Medical"; value: "green" }
        ListElement { key: "Social"; value: "purple" }
        ListElement { key: "Chore"; value: "orange" }
        ListElement { key: "Exam"; value: "red" }
    }
    Component.onCompleted: {
        for (var i = 0; i < defaultEvents.defaultEventList.count; i++) {
            var event = defaultEvents.defaultEventList.get(i);
            if (!eventExists(event.eventID)) {
                eventListModel.append({
                    eventID: event.eventID,
                    eventName: event.eventName,
                    eventType: event.eventType,
                    eventDescription: event.eventDescription,
                    startTime: event.startTime,
                    endTime: event.endTime,
                    eventDay: event.eventDay,
                    eventMonth: event.eventMonth,
                    eventYear: event.eventYear,
                    recurrence: event.recurrence
                });
            }
        }
        populateMonthListModel(month, year);
    }


    function eventExists(eventID) {
        for (var i = 0; i < eventListModel.count; i++) {
            if (eventListModel.get(i).eventID === eventID) {
                return true;
            }
        }
        return false;
    }

    DefaultEvents {
        id: defaultEvents
    }

    // Unique ID tracker
    property int currentID: 100000;

    // Function to get a new unique ID
    function getNewID() {
        currentID += 1;
        return currentID;
    }

    function getDaysInMonth(year, month) {
        return new Date(year, month + 1, 0).getDate();
    }

    function addEvent(name, type, description, startHour, startMinute, endHour, endMinute, day, month, year, recurrence = "Weekly") {
        console.log("Adding event:", name, type, description, startHour, startMinute, endHour, endMinute, day, month, year);

        var startTime = Number(startHour) * 60 + Number(startMinute);
        var endTime = Number(endHour) * 60 + Number(endMinute);

        console.log("Converted times:", startTime, endTime);

        var newEvent = {
            "eventID": getNewID(),  // Assigning the unique ID here
            "eventName": name,
            "eventType": type,
            "eventDescription": description,
            "startTime": startTime,
            "endTime": endTime,
            "eventDay": Number(day),
            "eventMonth": Number(month) - 1,
            "eventYear": Number(year),
            "recurrence": recurrence
        };

        console.log("New event object:", JSON.stringify(newEvent));

        eventListModel.append(newEvent);

        // After adding the event, check if it should also be added to monthListModel for the current month/year
        if (shouldAddToMonthListModel(newEvent, month, year)) {
            monthListModel.append(newEvent);
        }

        console.log("Event added to the model.");
        console.log("Number of items in eventListModel:", eventListModel.count);
    }


    function filterEventsByDate(year, month, day) {
        console.log("Filtering events for date:", year, month, day);

        filteredEventModel.clear();
        console.log("Cleared filteredEventModel. Current count:", filteredEventModel.count);

        var eventsAdded = 0;
        for (var i = 0; i < monthListModel.count; i++) {
            var event = monthListModel.get(i);
            if (event.eventYear === year && event.eventMonth === month && event.eventDay === day) {
                filteredEventModel.append(event);
                eventsAdded++;
                console.log("Added event:", event.eventName, "at index", i, "to filteredEventModel. Current count:", filteredEventModel.count);
            }
        }
    }

    function printModelContents(model) {
        for (var i = 0; i < model.count; i++) {
            var item = model.get(i);
            if (item.hasEvent) {
                console.log("Event:", item.eventName, item.eventType, item.eventDescription, item.startTime, item.endTime, item.eventDay, item.eventMonth, item.eventYear);
            } else {
                console.log("Empty cell:", item.startTime, item.endTime);
            }
        }
    }
    function printDayEvents(model, year, month, day) {
        console.log("printDayEvents called with year:", year, "month:", month, "day:", day);
        console.log("Event model count:", model.count);
        for (var i = 0; i < model.count; i++) {
            var item = model.get(i);
            console.log("Checking event:", item.eventName, item.eventType, item.eventDescription, item.startTime, item.endTime, item.eventDay, item.eventMonth, item.eventYear);
            if (item.eventDay === day && item.eventMonth === month && item.eventYear === year) {
                console.log("Event:", item.eventName, item.eventType, item.eventDescription, item.startTime, item.endTime, item.eventDay, item.eventMonth, item.eventYear);
            } else {
                console.log("No event on this date");
            }
        }
    }
    function logListModel(model) {
        if (!model) {
            console.warn("Model is undefined. Aborting logging.");
            return;
        }
        console.log("=== Logging model contents ===");
        for (var i = 0; i < model.count; i++) {
            var item = model.get(i);
            console.log("Event:", item.eventName, item.eventType, item.eventDescription, item.startTime, item.endTime, item.eventDay, item.eventMonth, item.eventYear);
        }
        console.log("=== End of model contents ===");
    }

    function formatTime(minutes) {
        var hour = Math.floor(minutes / 60);
        var minute = minutes % 60;
        var period = "am";

        if (hour >= 12) {
            if (hour > 12) {
                hour -= 12;
            }
            period = "pm";
        } else if (hour === 0) {
            hour = 12;
        }

        return hour + ":" + (minute < 10 ? "0" : "") + minute + " " + period;
    }
    function deleteEvent(targetID) {
        // Flag to indicate if event is found and deleted
        var isDeleted = false;

        // Search eventListModel
        for (var i = 0; i < eventListModel.count; i++) {
            if (eventListModel.get(i).eventID === targetID) {
                eventListModel.remove(i);
                console.log("Event with ID:", targetID, "has been deleted from eventListModel.");
                isDeleted = true;
                break; // Exit the loop since we found and deleted the event
            }
        }

        // Search filteredEventModel
        for (var j = 0; j < filteredEventModel.count; j++) {
            if (filteredEventModel.get(j).eventID === targetID) {
                filteredEventModel.remove(j);
                console.log("Event with ID:", targetID, "has been deleted from filteredEventModel.");
                isDeleted = true;
                break; // Exit the loop since we found and deleted the event
            }
        }

        if (!isDeleted) {
            console.log("Event with ID:", targetID, "not found in either model.");
        }
    }
    function populateMonthListModel(targetMonth, targetYear) {
        monthListModel.clear();

        function daysInMonth(month, year) {
            return new Date(year, month + 1, 0).getDate();
        }

        var targetDays = daysInMonth(targetMonth, targetYear);

        function createEventObject(event, day, month, year) {
            return {
                "eventID": event.eventID,
                "eventName": event.eventName,
                "eventType": event.eventType,
                "eventDescription": event.eventDescription,
                "startTime": event.startTime,
                "endTime": event.endTime,
                "eventDay": day,
                "eventMonth": month,
                "eventYear": year,
                "recurrence": event.recurrence
            };
        }

        for (var i = 0; i < eventListModel.count; i++) {
            var event = eventListModel.get(i);

            switch (event.recurrence) {
                case "none":
                    if (event.eventMonth === targetMonth && event.eventYear === targetYear) {
                        monthListModel.append(event);
                    }
                    break;

                case "Annually":
                    if (event.eventMonth === targetMonth) {
                        monthListModel.append(createEventObject(event, event.eventDay, targetMonth, targetYear));
                    }
                    break;

                case "Monthly":
                    monthListModel.append(createEventObject(event, event.eventDay, targetMonth, targetYear));
                    break;

                case "Bi-weekly":
                    var startDate = new Date(event.eventYear, event.eventMonth, event.eventDay);
                    while (startDate <= new Date(targetYear, targetMonth + 1, 0)) {
                        if (startDate.getMonth() === targetMonth && startDate.getFullYear() === targetYear) {
                            monthListModel.append(createEventObject(event, startDate.getDate(), targetMonth, targetYear));
                        }
                        startDate.setDate(startDate.getDate() + 14);
                    }
                    break;


                case "Weekly":
                    var startWeeklyDate = new Date(event.eventYear, event.eventMonth, event.eventDay);
                    while (startWeeklyDate <= new Date(targetYear, targetMonth + 1, 0)) {
                        if (startWeeklyDate.getMonth() === targetMonth && startWeeklyDate.getFullYear() === targetYear) {
                            monthListModel.append(createEventObject(event, startWeeklyDate.getDate(), targetMonth, targetYear));
                        }
                        startWeeklyDate.setDate(startWeeklyDate.getDate() + 7);
                    }
                    break;

                case "Daily":
                    for (var dailyDay = 1; dailyDay <= targetDays; dailyDay++) {
                        monthListModel.append(createEventObject(event, dailyDay, targetMonth, targetYear));
                    }
                    break;
            }
        }
    }

    function shouldAddToMonthListModel(event, targetMonth, targetYear) {
        var occurringDays = [];

        // Helper function to get the number of days in a given month and year
        function daysInMonth(month, year) {
            return new Date(year, month + 1, 0).getDate();
        }

        var targetDays = daysInMonth(targetMonth, targetYear);

        switch (event.recurrence) {
            case "none":
                if (event.eventMonth === targetMonth && event.eventYear === targetYear) {
                    occurringDays.push(event.eventDay);
                }
                break;

            case "Annually":
                if (event.eventMonth === targetMonth) {
                    occurringDays.push(event.eventDay);
                }
                break;

            case "Monthly":
                for (var day = 1; day <= targetDays; day++) {
                    occurringDays.push(day);
                }
                break;

            case "Bi-weekly":
                var biWeekDate = new Date(targetYear, targetMonth, 1); // Set to the beginning of the target month/year
                var daysSinceFirstEvent = (biWeekDate - new Date(event.eventYear, event.eventMonth, event.eventDay)) / (1000 * 60 * 60 * 24);
                var offset = daysSinceFirstEvent % 14;

                biWeekDate.setDate(biWeekDate.getDate() - offset); // Adjust based on the number of days since the first event

                while (biWeekDate.getMonth() === targetMonth) {
                    occurringDays.push(biWeekDate.getDate());
                    biWeekDate.setDate(biWeekDate.getDate() + 14);
                }
                break;

            case "Weekly":
                var weekDate = new Date(targetYear, targetMonth, 1); // Set to the beginning of the target month/year
                while (weekDate.getDay() !== new Date(event.eventYear, event.eventMonth, event.eventDay).getDay()) {
                    weekDate.setDate(weekDate.getDate() + 1); // Adjust to match the day of the week of the first event
                }

                while (weekDate.getMonth() === targetMonth) {
                    occurringDays.push(weekDate.getDate());
                    weekDate.setDate(weekDate.getDate() + 7);
                }
                break;

            case "Daily":
                for (var dailyDay = 1; dailyDay <= targetDays; dailyDay++) {
                    if (new Date(targetYear, targetMonth, dailyDay) >= new Date(event.eventYear, event.eventMonth, event.eventDay)) {
                        occurringDays.push(dailyDay);
                    }
                }
                break;
        }

        return occurringDays;
    }


}
