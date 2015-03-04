#!/bin/awk -f
BEGIN{ print_menu();
   getline var;
   if (var == 1) {
       print "You made the right choice.";
   } else if (var == 2) {
       print "You made the wrong choice.";
   } else {
       print "Sorry but that wasn't an option.";
   }
}

function print_menu()
{
    print "1: Good Option\n2: Bad Option";
}
