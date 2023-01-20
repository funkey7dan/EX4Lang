is_mod(A,B) :- mod(A,B) =\= 0.
is_prime_helper(A,B) :- B*B<A,(is_mod(A,B),B1 is (B+2),is_prime_helper(A,B1)).
is_prime_helper(A,B) :- B*B>A.
is_prime(2).
is_prime(A) :- A>1,(is_mod(A,2)),is_prime_helper(A,3).
