import QtQuick 6.2

Item {
    property int month: (new Date()).getMonth()
    property int year: (new Date()).getFullYear()
    property int daysInMonth: {
        return new Date(year, month+1, 0).getDate()
    }
    property string monthName: {
        var months = ["January", "February", "March", "April", "May", "June",
                      "July", "August", "September", "October", "November", "December"];
        return months[month % 12];
    }
    property int dayOfWeek: new Date(year, month, 1).getDay()  // 0 (Sun) to 6 (Sat)
    property int test: 999

    property alias eventModel: eventListModel
    ListModel {
            id: eventListModel
        }
    property var eventArray: []

    function addEvent(name, type, description, startHour, startMinute, endHour, endMinute, day, month, year) {
        console.log("Adding event: ", name, type, description, startHour, startMinute, endHour, endMinute, day, month, year);

        var startTime = Number(startHour) * 60 + Number(startMinute);
        var endTime = Number(endHour) * 60 + Number(endMinute);

        console.log("Converted times: ", startTime, endTime);

        var newEvent = {
            "eventName": name,
            "eventType": type,
            "eventDescription": description,
            "startTime": startTime,
            "endTime": endTime,
            "eventDay": Number(day),
            "eventMonth": Number(month) - 1,  // Adjust month to JavaScript's 0-11 scale
            "eventYear": Number(year)
        };

        console.log("New event object: ", newEvent);

        eventModel.append(newEvent);
        eventArray.push(newEvent);  // Use push method to append the newEvent to the eventArray.

        console.log("Event added to the model and array.");

        updateEventModel(year, month-1, day);
        console.log("Event model updated for the specific date.");
    }


    function updateEventModel(year, month, day) {
            // Create a copy of the eventModel
            var oldEventModel = JSON.parse(JSON.stringify(eventModel));

            // Then, clear the current model
            while (eventModel.count > 0) {
                eventModel.remove(0);
            }

            // Then, fill the model with events from the specified date
            var filteredModel = createFilteredModelForDate(year, month, day);
            if (filteredModel.count === 0) {
                // If no events were found for this date, restore the oldEventModel
                for (var i = 0; i < oldEventModel.count; i++) {
                    var item = oldEventModel.get(i);
                    eventModel.append(item);
                }
            } else {
                for (i = 0; i < filteredModel.count; i++) {
                    item = filteredModel.get(i);
                    eventModel.append(item);
                }
            }
        }


    function createFilteredModel(events, targetYear, targetMonth, targetDay) {
        var filteredEvents = events.filter(function (event) {
            return event.eventYear === targetYear &&
                   event.eventMonth === targetMonth &&
                   event.eventDay === targetDay;
        });

        var newModelData = createModelWithEmptyCells(filteredEvents);
        var filteredModel = Qt.createQmlObject('import QtQuick 2.15; ListModel {}', parent);
        newModelData.forEach(function (item) {
            filteredModel.append(item);
        });

        return filteredModel;
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

    function createFilteredModelForDate(year, month, day) {
        var filteredModel = createFilteredModel(eventArray, year, month, day);
        return filteredModel;
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

}
