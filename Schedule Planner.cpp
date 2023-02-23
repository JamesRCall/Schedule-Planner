// Programmer: James Callender
// Date: 2/21/2023
// File: check.cpp
// Purpose: plans your day

#include <iostream>
#include <string>
#include <C:\Users\James\Documents\programs\Other_Toggle.cpp>

using namespace std;

int main()
{
    char check;
    bool Other_Enabled, toggle_fix;
    short int Classes, Clubs, Other, redo;

    cout << "Hello welcome to your schedule planner" << endl;
    cout << "Let's start out with a few questions" << endl;
    
    cout << "How many classes are you taking this semester?" << endl;
    Class_Amt(Classes);

    cout << "Next, how many clubs/activities are you in?" << endl;
    Club_Amt(Clubs);

    cout << "Lastly is there anything else you want to add to your schedule? (y/n)" << endl;
    Other_Toggle(Other, Other_Enabled);
    
    do{
        cout << "alright all set let me just make sure everything is correct..." << endl;
        cout << "you are in " << Classes << "classes." << endl;
        cout << "you are in " << Clubs << "clubs." << endl;
        if (Other_Enabled == 1){
            cout << "you are in " << Other << "events." << endl;
        }
        cout << "Is this correct? (y/n)" << endl;  
        if (YesOrNo(check) == 0){
            toggle_fix = 1;
            cout << "which is incorrect? (1 = classes, 2 = clubs, 3 = other)" << endl;
            cin >> redo;
            switch(redo){
                case 1:
                    Class_Amt(Classes);
                    break;
                case 2:
                    Club_Amt(Clubs);
                    break;
                case 3:
                    Other_Toggle(Other, Other_Enabled);
                    break;
                default:
                    cout << "Error: invalid input" << endl;
            }
        }
        else{
            toggle_fix = 0;
        }
    }while(toggle_fix == 1);

    return 0;

}