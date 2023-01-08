gcd(X, X, X). 
gcd(X, Y, D) :- 
    X < Y, 
    Y1 is Y - X, 
    gcd(X, Y1, D). 
gcd(X, Y, D) :- 
    X > Y, 
    gcd(Y, X, D).

is_prime(0).
is_prime(1).
is_prime(2).
is_prime(3).
is_prime(5).
is_prime(7).
%is_prime(A) :- D = 1, gcd(A,A1,D), A is A1 + 1.
is_prime(A) :- gcd(A,A1,1),A1 is A-1,is_prime(A1).
is_prime(A) :- false.