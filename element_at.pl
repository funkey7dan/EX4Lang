element_at(H1,[H1|_],N2) :- N2 = 1.
element_at(X,[_|T],N) :- element_at(X,T,N1), N is N1 + 1.


