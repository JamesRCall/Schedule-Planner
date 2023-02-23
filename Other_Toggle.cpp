// Programmer: James Callender
// Date: 2/21/2023
// File: Advanced_Mode.cpp
// Purpose: toggles advanced settings for each event

#include <iostream>
#include <C:\Users\James\Documents\programs\Advanced_Mode.cpp>

using namespace std;

void Other_Toggle(short int& Other, bool& Other_Enabled){
    char toggle_other;
    bool Error2;
    switch(Other_Enabled){
        case 0:
            cin >> toggle_other;
            do{
                switch(toggle_other){
                    case 'y':
                        Other_Enabled = 1;
                        Error2 = 0;
                        cout << "Cool! how many other events would you like to add?" << endl;
                        break;
                    case 'n':
                        Other_Enabled = 0;
                        Error2 = 0;
                        break;
                    default:
                        Error2 = 1;
                        break;
                }
            }while(Error2 == 1);
        case 1:
            cout << "amount of events: ";
            cin >> Other;
            cout << "Almost done! Can I ask you more about your other events?" << endl;
            Advanced_Mode(Other, 'c');
    }
}
void Club_Amt(short int& Clubs){
    cout << "Amount of clubs: " << endl;
    cin >> Clubs;
    cout << "Awesome! Can I ask you more about your clubs? (y/n)" << endl;
    Advanced_Mode(Clubs, 'b');
}
void Class_Amt(short int& Classes){
    cout << "Amount of Classes: " << endl;
    cin >> Classes;
    cout << "Great! Can I ask you more about your classes? (y/n)" << endl;
    Advanced_Mode(Classes, 'a');
}