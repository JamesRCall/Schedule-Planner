
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



    function addEvent(eventName, eventType, eventDescription, startHour, startMinute, endHour, endMinute, eventDay, eventMonth, eventYear) {

        var startTime = startHour * 60 + startMinute;
        var endTime = endHour * 60 + endMinute;

        var newEvent = {
            eventName: eventName,
            eventType: eventType,
            eventDescription: eventDescription,
            startTime: startTime,
            endTime: endTime,
            eventDay: eventDay,
            eventMonth: eventMonth,
            eventYear: eventYear
        };

        eventArray.push(newEvent);
    }


    function createFilteredModel(events, targetYear, targetMonth, targetDay) {
        var filteredEvents = events.filter(function (event) {
            return event.eventYear === targetYear &&
                   event.eventMonth === targetMonth &&
                   event.eventDay === targetDay;
        });

        var formattedEvents = filteredEvents.map(function (event) {
            return {
                eventName: event.eventName,
                eventType: event.eventType,
                eventDescription: event.eventDescription,
                startTime: event.startTime, // Updated calculation
                endTime: event.endTime, // Updated calculation
                eventDay: event.eventDay,
                eventMonth: event.eventMonth,
                eventYear: event.eventYear
            };
        });

        var newModelData = createModelWithEmptyCells(formattedEvents);

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
        if (lastEndTime < 24) {
            modelData.push({
                hasEvent: false,
                startTime: lastEndTime,
                endTime: 24
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


}
