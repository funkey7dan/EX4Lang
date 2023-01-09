xor(A,B) :- and(or(A,B),not(and(A,B))).
and(A,B) :- A,B.
or(A,B) :- A;B.
nor(A,B) :-not(or(A,B)).
not(A):- not(A).
nand(A,B) :- not(and(A,B)).
equal(A,B) :- A =:= B.


%table(A,B, and(A, (or (A, not(B))).
%print_table(A,B,C) :- print(A," "), print(B), print(C), nl.

