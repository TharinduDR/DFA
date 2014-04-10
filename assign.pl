:- [engine].
start_state(q0).
halt_state(q1).
halt_state(q3).

trans(q0, X, q2):- is_plus_or_minus(X).
trans(q0, X, q1):- is_digit(X).
trans(q2, X, q1):- is_digit(X).
trans(q1, X, q1):- is_digit(X).
trans(q1, X, q0):- is_plus_or_minus(X).
trans(q1, X, q0):- is_multiple_or_devision(X).
trans(q1, X, q4):- is_decimal_point(X).
trans(q4, X, q3):- is_digit(X).
trans(q3, X, q3):- is_digit(X).
trans(q3, X, q0):- is_plus_or_minus(X).
trans(q3, X, q0):- is_multiple_or_devision(X).


is_digit(X):-
	X=0;X=1;X=2;X=3;X=4;X=5;X=6;X=7;X=8;X=9.

is_plus_or_minus(X):-
	X='+';X='-'.

is_multiple_or_devision(X):-
	X='*';X='/'.

is_decimal_point(X):-
	X='.'.


