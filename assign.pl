:- [engine].
start_state(s0).
halt_state(s1).
halt_state(s3).

trans(s0, X, s2):- is_plus_or_minus(X).
trans(s0, X, s1):- is_digit(X).
trans(s2, X, s1):- is_digit(X).
trans(s1, X, s1):- is_digit(X).
trans(s1, X, s0):- is_plus_or_minus(X).
trans(s1, X, s0):- is_multiple_or_devision(X).
trans(s1, X, s4):- is_decimal_point(X).
trans(s4, X, s3):- is_digit(X).
trans(s3, X, s3):- is_digit(X).
trans(s3, X, s0):- is_plus_or_minus(X).
trans(s3, X, s0):- is_multiple_or_devision(X).


is_digit(X):-
	X=0;X=1;X=2;X=3;X=4;X=5;X=6;X=7;X=8;X=9.

is_plus_or_minus(X):-
	X='+';X='-'.

is_multiple_or_devision(X):-
	X='*';X='/'.

is_decimal_point(X):-
	X='.'.


