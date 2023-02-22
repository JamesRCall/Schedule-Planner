// Programmer: James Callender
// Student ID: jrcnb4
// Section: 102
// Date: 2/21/2023
// File: Caesar.cpp
// Purpose: decipher messages

#include <iostream>
using namespace std;
int YesOrNo(char val, bool Error)
{
    do{
        cin >> char val
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
}
int main()
{
    cout << "Hello welcome to your schedule planner" << endl;
    cout << "Let's start out with a few questions" << endl;
    cout << "How many classes are you taking this semester?" << endl;
    cin >> const short int Classes;
    cout << "Great! Can I ask you more about your classes? (y/n)" << endl;
    bool Advanced_Mode = YesOrNo(adv_class);
    if(Advanced_mode == 1){
        cout << "advanced on"
    }
    else{
        cout << "advanced off"
    }
    return 0;
}