posi([],0).
posi([X,Y|Others],N):- posi(Others,L), N is L + 1.

list11(0,[]).
list11(N,L):- NN is N-1,list11(NN,LL),append([N],LL,L).

pos1([]).
pos1([X,Y|Others]):- posi([X,Y|Others],NN),list11(N1,L1), pos1(Others), member(Y,L1), noattack(X,Y,Others).

noattack(X,Y,[]).
noattack(X,Y,[X1,Y1|Others1]):- Y1 \= Y, X-X1 \=  Y-Y1, X-X1 \=  Y1-Y, noattack(X,Y,Others1).