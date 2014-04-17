DFA
===
Firstly, start SWI Prolog.

You will see something like this on your screen:
% library(win_menu) compiled into win_menu 0.00 sec, 29 clauses
Welcome to SWI-Prolog (Multi-threaded, 32 bits, Version 6.2.2)
Copyright (c) 1990-2012 University of Amsterdam, VU Amsterdam
SWI-Prolog comes with ABSOLUTELY NO WARRANTY. This is free software,
and you are welcome to redistribute it under certain conditions.
Please visit http://www.swi-prolog.org for details.

For help, use ?- help(Topic). or ?- apropos(Word).

1 ?-

Now you have entered into Prolog. Note that "| ?-" is Prolog's prompt.

Next, you need to load FA engine and the example of FA into Prolog. Do

| ?- [engine]. 

to load the simulator, and do

| ?- [Assign].
Note:

Your current working directory should contain the prolog files.
Alternatively you can run prolog by double clicking the Assign.pl file which will automatically load the two files.  
To run the DFA that detects the simple arithmetic expressions, Type,

| ?- fa. 

you will get

Welcome to DFA Simulator. Please enter the input. "!" character represents the end of the input.

|:
then input the string you want to be checked terminated by the  "!" character to denote the end. You will get the appropriate output. 
