
import QtQuick 2.15

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


    ListModel {
            id: eventModel
        }

        signal addEvent(string eventName)
    Component.onCompleted: {
            // connect the addEvent signal to a function that adds the event to the model
            addEvent.connect(addEventToModel)
        }


    function addEventToModel(eventName) {
        var newEvent = {
                eventName: eventName
            }
        eventModel.append(newEvent)
        console.log(eventName)
    }

    function vomitAllListModels(model) {
        for(var i = 0; i < eventModel.count; i++) {
                console.log(eventModel.get(i).eventName);
            }
    }

}
