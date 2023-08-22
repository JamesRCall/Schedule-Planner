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

    property int dayOfWeek: new Date(year, month, 1).getDay()  // 0 (Sun) to 6 (Sat)
    property int test: 999
    property alias filteredEventModel: filteredEventModel

    property alias eventListModel: eventListModel
    ListModel {
        id: eventListModel
    }

    ListModel {
        id: filteredEventModel
    }
    function getDaysInMonth(year, month) {
        return new Date(year, month + 1, 0).getDate();
    }


    function addEvent(name, type, description, startHour, startMinute, endHour, endMinute, day, month, year) {
        console.log("Adding event:", name, type, description, startHour, startMinute, endHour, endMinute, day, month, year);

        var startTime = Number(startHour) * 60 + Number(startMinute);
        var endTime = Number(endHour) * 60 + Number(endMinute);

        console.log("Converted times:", startTime, endTime);

        var newEvent = {
            "eventName": name,
            "eventType": type,
            "eventDescription": description,
            "startTime": startTime,
            "endTime": endTime,
            "eventDay": Number(day),
            "eventMonth": Number(month) - 1,
            "eventYear": Number(year)
        };

        console.log("New event object:", JSON.stringify(newEvent));

        eventListModel.append(newEvent);

        console.log("Event added to the model.");
        console.log("Number of items in eventListModel:", eventListModel.count);

    }
    function filterEventsByDate(year, month, day) {
        console.log("Filtering events for date:", year, month, day);

        filteredEventModel.clear();
        console.log("Cleared filteredEventModel. Current count:", filteredEventModel.count);

        var eventsAdded = 0;
        for (var i = 0; i < eventListModel.count; i++) {
            var event = eventListModel.get(i);
            if (event.eventYear === year && event.eventMonth === month && event.eventDay === day) {
                filteredEventModel.append(event);
                eventsAdded++;
                console.log("Added event:", event.eventName, "at index", i, "to filteredEventModel. Current count:", filteredEventModel.count);
            }
        }
    }


    function createModelWithEmptyCells(events) {
        events.sort(function (a, b) {
            return a.startTime - b.startTime;
        });

        var modelData = [];
        var lastEndTime = 0;

        events.forEach(function (event) {
            if (event.startTime > lastEndTime) {
                modelData.push({
                    hasEvent: false,
                    startTime: lastEndTime,
                    endTime: event.startTime
                });
            }
            modelData.push({
                hasEvent: true,
                eventName: event.eventName,
                eventType: event.eventType,
                eventDescription: event.eventDescription,
                startTime: event.startTime,
                endTime: event.endTime,
                eventDay: event.eventDay,
                eventMonth: event.eventMonth,
                eventYear: event.eventYear
            });
            lastEndTime = event.endTime;
        });

        // Add an empty cell at the end
        if (lastEndTime < 24 * 60) {  // endTime is in minutes, so it should be less than 24*60, not 24.
            modelData.push({
                hasEvent: false,
                startTime: lastEndTime,
                endTime: 24 * 60
            });
        }

        return modelData;
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
    function containsEventForDate(targetYear, targetMonth, targetDay) {
        for (var i = 0; i < eventListModel.count; i++) {
            var event = eventListModel.get(i);
            if (event.eventYear === targetYear && event.eventMonth === targetMonth && event.eventDay === targetDay) {
                return true;
            }
        }
        return false;
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


}
