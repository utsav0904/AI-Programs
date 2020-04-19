pos1([]).
pos1([X,Y|Others]):- pos1(Others), member(Y,[1,2,3,4,5,6,7,8]), noattack(X,Y,Others).

noattack(X,Y,[]).
noattack(X,Y,[X1,Y1|Others1]):- Y1 \= Y, X-X1 \=  Y-Y1, X-X1 \=  Y1-Y, noattack(X,Y,Others1).