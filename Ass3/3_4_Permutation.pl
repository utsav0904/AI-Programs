takeout(X,[X|R],R).
takeout(X,[F|R],[F|S]):-takeout(X,R,S).

perm([],[]).
perm([X|Y],Z):-perm(Y,W),takeout(X,Z,W).
