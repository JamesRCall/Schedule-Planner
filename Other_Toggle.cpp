// Programmer: James Callender
// Date: 2/21/2023
// File: Other_Toggle.cpp
// Purpose: functions for assigning values of each event/club/class.

#include <iostream>
#include <C:\Users\James\Documents\programs\Advanced_Mode.cpp> // TODO: change from local to general location

using namespace std;
// function checking if any other events and for assigning other amount
void Other_Toggle(short int& Other, bool& Other_Enabled){
    char toggle_other; // input for whether or not other should be enabled
    bool Error2; // secondary error variable (other one redefined itself in this function)
    switch(Other_Enabled){
        case 0: // if other isn't enabled yet
            cin >> toggle_other; // ask them to toggle it
            do{
                switch(toggle_other){
                    case 'y':
                        Other_Enabled = 1; // allows user to go to case 1
                        Error2 = 0; // prevents error from causing infinite loop
                        cout << "Cool! how many other events would you like to add?" << endl;
                        break;
                    case 'n':
                        Other_Enabled = 0; // prevents user from going to case 1
                        Error2 = 0; // prevents error from causing infinite loop
                        break;
                    default:
                        Error2 = 1; // keeps error loop going till fixed
                        break;
                }
            }while(Error2 == 1); // another error check (identical to check.pp but with new variables since it wouldn't work)
        case 1:
            cout << "amount of events: "; // just here for clarification
            cin >> Other; // assigns value
            cout << "Almost done! Can I ask you more about your other events?" << endl;
            Advanced_Mode(Other, 'c'); // toggles advanced mode for events
    }
}
// function for assigning club amount
void Club_Amt(short int& Clubs){
    cout << "Amount of clubs: " << endl;
    cin >> Clubs;
    cout << "Awesome! Can I ask you more about your clubs? (y/n)" << endl;
    Advanced_Mode(Clubs, 'b'); // toggles advanced mode for clubs
}
// function for assigning class amount
void Class_Amt(short int& Classes){
    cout << "Amount of Classes: " << endl;
    cin >> Classes;
    cout << "Great! Can I ask you more about your classes? (y/n)" << endl;
    Advanced_Mode(Classes, 'a'); // toggles advanced mode for classes
}