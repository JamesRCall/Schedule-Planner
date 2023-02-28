// Programmer: James Callender
// Date: 2/21/2023
// File: Advanced_Mode.cpp
// Purpose: toggles advanced settings for each event

#include <iostream>
#include "Schedule_Header.h"
using namespace std;

// function for enabling advanced mode
void Advanced_Mode(int amt, EventType event_type)
{
    char toggle;
    cin >> toggle;
    if(YesOrNo(toggle) == 1){ // activates if user says yes to advanced mode
        switch(event_type){
            case CLASS: // class option            
                Advanced_Classes(amt);
                break;
            case CLUB: // club option
                Advanced_Clubs(amt);
                break;
            case OTHER: // other option
                Advanced_Other(amt);
                break;
            default:
                cout << "Error: advanced mode type invalid" << endl; // lets me know if some error happened with values
                break;
        }
    }
    else{
        cout << "advanced off" << endl; // lets me know if error is happening here
    }
    
}
// changed stuff
