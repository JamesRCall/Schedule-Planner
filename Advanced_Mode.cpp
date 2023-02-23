// Programmer: James Callender
// Date: 2/21/2023
// File: Advanced_Mode.cpp
// Purpose: toggles advanced settings for each event

#include <iostream>
#include <C:\Users\James\Documents\programs\check.cpp>
#include <C:\Users\James\Documents\programs\Advanced_Classes.cpp>
#include <C:\Users\James\Documents\programs\Advanced_Clubs.cpp>
#include <C:\Users\James\Documents\programs\Advanced_Other.cpp>
using namespace std;

void Advanced_Mode(short int amt, char type)
{
    char toggle;

    if(YesOrNo(toggle) == 1){
        switch(type){
            case 'a':
                
                Advanced_Classes(amt);
                break;
            case 'b':
                Advanced_Clubs(amt);
                break;
            case 'c':
                Advanced_Other(amt);
                break;
            default:
                cout << "Error: advanced mode type invalid" << endl;
                break;
        }
    }
    else{
        cout << "advanced off" << endl;
    }
    
}
