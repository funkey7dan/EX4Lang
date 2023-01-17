range(A, B, A) :- A =< B.
range(A, B, X) :- A < B, A1 is A + 1, range(A1, B, X).

is_mod(A,B) :- not(mod(A,B) =:= 0).
is_prime_helper(A,B) :- B*B>A;(is_mod(A,B),B1 is (B+2),is_prime_helper(A,B1)).
is_prime(2).
is_prime(A) :- A>1,(is_mod(A,2)),is_prime_helper(A,3).

goldbach(N, []) :- N < 2,!.
goldbach(N, [H|T]) :-
    N1 is N/2,
    range(2, N1, H),
    T is N - H,
    is_prime(H),
    is_prime(T),!.
goldbach(_, []).
