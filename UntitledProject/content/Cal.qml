import QtQuick 2.15

Item {
    property int month: date.getMonth()
    property int year: year.getFullYear()
    property int daysInMonth: {
        var date = new Date()
        return new Date(year, month+1, 0).getDate()
    }

}
