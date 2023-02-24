// Programmer: James Callender
// Date: 2/21/2023
// File: Advanced_Mode.cpp
// Purpose: toggles advanced settings for each event

#include <iostream>
#include <Schedule_Header.h>
using namespace std;

// function for enabling advanced mode
void Advanced_Mode(short int amt, char type)
{
    char toggle;

    if(YesOrNo(toggle) == 1){ // activates if user says yes to advanced mode
        switch(type){
            case 'a': // class option            
                Advanced_Classes(amt);
                break;
            case 'b': // club option
                Advanced_Clubs(amt);
                break;
            case 'c': // other option
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
