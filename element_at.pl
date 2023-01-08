% stop condition - if N2 equals to 1, return the head H1 in X
element_at(H1,[H1|_],N2) :- N2 = 1.
% Recursion step, N1 = N-1
element_at(X,[_|T],N) :- element_at(X,T,N1), N is N1 + 1.


