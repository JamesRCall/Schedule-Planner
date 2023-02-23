// Programmer: James Callender
// Date: 2/21/2023
// File: check.cpp
// Purpose: checks if user correctly input answer

#include <iostream>
using namespace std;

int YesOrNo(char val)
{
    bool Error;
    do{
        cin >> val;
        switch(val){
            case 'y':
                Error = 0;
                return 1; // if yes returns true and no errors

            case 'n':
                Error = 0;
                return 0; // if no returns false and no errors

            default:
                cout << "Error, Try again" << endl; // lets me know if error is happening here
                Error = 1; // anything else will not return and says error
        }
    }while(Error = 1);
    return 0;
}