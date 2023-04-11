import QtQuick 2.15
import QtQuick.Controls 2.15

Item {
    property int daysInMonth: 0

    function getDaysInMonth() {
        var d = new Date()
        d.setDate(1)
        d.setMonth(d.getMonth() + 1)
        d.setDate(d.getDate() - 1)
        daysInMonth = d.getDate()
    }
}
