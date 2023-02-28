// Programmer: James Callender
// Date: 2/21/2023
// File: Get_Time
// Purpose: getting the times for each event.

#include <iostream>
#include "Schedule_Header.h"

using namespace std;

void Get_Time(Event revent, EventType event_type) {
    switch (event_type) {
        case CLASS:
            cout << "Enter class start time (hour minute): ";
            cin >> revent.start_hour >> revent.start_minute;
            cout << "Enter class end time (hour minute): ";
            cin >> revent.end_hour >> revent.end_minute;
            break;
        case CLUB:
            cout << "Enter club start time (hour minute): ";
            cin >> revent.start_hour >> revent.start_minute;
            cout << "Enter club end time (hour minute): ";
            cin >> revent.end_hour >> revent.end_minute;
            break;
        case OTHER:
            cout << "Enter other event start time (hour minute): ";
            cin >> revent.start_hour >> revent.start_minute;
            cout << "Enter other event end time (hour minute): ";
            cin >> revent.end_hour >> revent.end_minute;
            break;
        default:
            cout << "Invalid event type" << endl;
            break;
    }
}
// I'll comment this later goodnight.....