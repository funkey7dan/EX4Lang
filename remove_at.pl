% stop condition - if N2 equals to 1, return the head H1 in X, and return the tail T in R
remove_at(H1,[H1|T],N2,T) :- N2 = 1.
% Step - returns the value X from the recursion, the list stays the same, and R is the tail returns with all the heads appended
remove_at(X,[H|T],N,[H|R]) :- remove_at(X,T,N1,R), N is N1 + 1.
