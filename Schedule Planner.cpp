// Programmer: James Callender
// Date: 2/21/2023
// File: check.cpp
// Purpose: plans your day

#include <iostream>
#include <string>
#include <Schedule_Header.h> //TODO: get this stupid error to go away pls :(

using namespace std;

int main()
{
    char check; 
    // check: users input (y/n) for if all classes, clubs, events are correct.
    bool Other_Enabled, toggle_fix; 
    // Other_Enabled: whether or not user has other events, used to unlock certain messages.
    // toggle_fix: whether or not user wants to change amount of classes, clubs, events.
    short int Classes, Clubs, Other, redo; 
    // Classes: amount of classes user has.
    // Clubs: amount of clubs user has.
    // Other: amount of events user has.

    cout << "Hello welcome to your schedule planner" << endl;
    cout << "Let's start out with a few questions" << endl;
    // Intro greeting
    cout << "How many classes are you taking this semester?" << endl;
    Class_Amt(Classes);
    // assigns class amount & option to put on advanced mode.
    cout << "Next, how many clubs/activities are you in?" << endl;
    Club_Amt(Clubs);
    // assigns club amount & option to put on advanced mode.
    cout << "Lastly is there anything else you want to add to your schedule? (y/n)" << endl;
    Other_Toggle(Other, Other_Enabled);
    // checks if user has other events & assigns other amount & option to put on advanced mode.
    do{
        cout << "alright all set let me just make sure everything is correct..." << endl;
        cout << "you are in " << Classes << " classes." << endl;
        cout << "you are in " << Clubs << " clubs." << endl;
        // list classes and clubs
        if (Other_Enabled == 1){
            cout << "you are in " << Other << " events." << endl;
        }
        // checks if user has events and if so list them.
        cout << "Is this correct? (y/n)" << endl;  
        if (YesOrNo(check) == 0){
        // checks if user wants any values to be changed
            toggle_fix = 1;
            cout << "which is incorrect? (1 = classes, 2 = clubs, 3 = other)" << endl;
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
            // finds which value needs to be changed and changes it
            }
        }
        else{
            toggle_fix = 0;
        // if no value needs to be changed allows loop to end
        }
    }while(toggle_fix == 1);
    // loops until no incorrect inputs
    cout << "All done! time to make your schedule..." << endl;
/*
---------------------------------------TODO--------------------------------------
1. ask user for times of each class and frequency
2. ask user for times of each club and frequency
3. if user has events ask for times of each and frequency
4. ask user what time they sleep and wake up
5. ask user what times they eat
6. find what time periods are left
7. create a schedule for user
8. create multiple schedules for user to choose from
9. optimize schedule to user preferences
10. optimize study hours based on class difficulty
11. create breaks and free times based on user preference
12. reward system????
13. meal plan?????
14. encouraging phrases
15. allow variation in messages
16. create save files for users????
17. create front facing application
18. optimize front facing application
19. track users progress
20. optimize schedule based user progress
21. actually add comments to my code lmao
-------------------------------------------------------------------------------------
*/

    return 0;

}