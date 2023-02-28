#ifndef Schedule_Header // To make sure you don't declare the function more than once by including the header multiple times.
#define Schedule_Header

#include <iostream>
using namespace std;
// new event structure, stores time of each event, will have it assign type of event later
struct Event {
    char type_event;
    int start_hour;
    int start_minute;
    int end_hour;
    int end_minute;
};

// this checks what type of event it is, I need to go back and use this for my previous code
enum EventType {CLASS, CLUB, OTHER};
// TODO: fix previous code to use these variables

// error check
int YesOrNo(char val);

// choosing event stuff
void Other_Toggle(int Other, bool Other_Enabled);
void Club_Amt(int Clubs);
void Class_Amt(int Classes);

// advanced stuff
void Advanced_Mode(int amt, EventType event_type);
void Advanced_Classes(int Class);
void Advanced_Clubs(int Clubs);
void Advanced_Other(int Other);

// time stuff
void Get_Time(Event revent, EventType event_type);

#endif