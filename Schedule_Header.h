#ifndef Schedule_Header // To make sure you don't declare the function more than once by including the header multiple times.
#define Schedule_Header

#include <iostream>

int YesOrNo(char val);
void Other_Toggle(short int& Other, bool& Other_Enabled);
void Club_Amt(short int& Clubs);
void Class_Amt(short int& Classes);
void Advanced_Mode(short int amt, char type);
void Advanced_Classes(short int Class);
void Advanced_Clubs(short int Clubs);
void Advanced_Other(short int Other);

#endif