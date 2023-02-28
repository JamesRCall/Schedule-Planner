// Programmer: James Callender
// Date: 2/21/2023
// File: Other_Toggle.cpp
// Purpose: functions for assigning values of each event/club/class.

#include <iostream>
#include "Schedule_Header.h" // TODO: change from local to general location

using namespace std;
// function checking if any other events and for assigning other amount
void Other_Toggle(int Other, bool Other_Enabled){
    char toggle_other; // input for whether or not other should be enabled
    switch(Other_Enabled){
        case 0: // if other isn't enabled yet
            cin >> toggle_other; // ask them to toggle it
            if (YesOrNo(toggle_other) == 1){
                Other_Enabled = 1; // allows user to go to case 1
                cout << "Cool! how many other events would you like to add?" << endl;
            }
            else{
                Other_Enabled = 0; // prevents user from going to case 1
            }
        case 1:
            cout << "amount of events: "; // just here for clarification
            cin >> Other; // assigns value
            cout << "Almost done! Can I ask you more about your other events?" << endl;
            Advanced_Mode(Other, OTHER); // toggles advanced mode for events
    }
}
// function for assigning club amount
void Club_Amt(int Clubs){
    cout << "Amount of clubs: " << endl;
    cin >> Clubs;
    cout << "Awesome! Can I ask you more about your clubs? (y/n)" << endl;
    Advanced_Mode(Clubs, CLUB); // toggles advanced mode for clubs
}
// function for assigning class amount
void Class_Amt(int Classes){
    cout << "Amount of Classes: " << endl;
    cin >> Classes;
    cout << "Great! Can I ask you more about your classes? (y/n)" << endl;
    Advanced_Mode(Classes, CLASS); // toggles advanced mode for classes
}
// editor note: I changed stuff in here but forgot what