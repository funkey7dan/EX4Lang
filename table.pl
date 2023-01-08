xor(A,B) :- and(or(A,B),not(and(A,B))).
and(A,B) :- A,B.
nand(A,B)=not(and(A,B))
or(A,B) :- A;B.
nor(A,B) :-not(or(A,B)).
not(A):- not(A).
equal(A,B) :- A =:= B.
:- op(500, xfy, 'or').
:- op(450, fy, 'not').
:- op(400, yfx, 'xor').
:- op(350, yfx, 'nand').
:- op(300, yfx, 'nor').

%table(A,B,Bool):-
