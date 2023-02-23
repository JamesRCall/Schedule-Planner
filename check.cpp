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
                return 1;

            case 'n':
                Error = 0;
                return 0;

            default:
                cout << "Error, Try again" << endl;
                Error = 1;
        }
    }while(Error = 1);
    return 0;
}