xor(A,B) :- and(or(A,B),not(and(A,B))).
and(A,B) :- A,B.
or(A,B) :- A;B.
nor(A,B) :-not(or(A,B)).
nand(A,B) :- not(and(A,B)).
equal(A,B) :- A =:= B.
eval_boolean(E,true) :- E,!.
eval_boolean(_, fail).
bool(true).
bool(fail).


table(A, B, C) :-bool(A),bool(B),write(A),write(' '),write(B),write(' '),eval_boolean(C,D),write(D),nl,fail.
%table(A,B, and(A, (or (A, not(B))).
%print_table(A,B,C) :- print(A," "), print(B), print(C), nl.




