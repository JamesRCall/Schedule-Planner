// Programmer: James Callender
// Date: 2/21/2023
// File: check.cpp
// Purpose: checks if user correctly input answer

#include <iostream>
using namespace std;

int YesOrNo(char val)
{
    switch(val){
        case 'y':
            return 1; // if yes returns true and no errors
        case 'n':
            return 0; // if no returns false and no errors
        default:
            cout << "Error, Try again" << endl; // lets me know if error is happening here
            char new_val;
            cin >> new_val;
            YesOrNo(new_val);
    }
    return 0;
}