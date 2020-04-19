pt(X,Y,Z):- X>=1,X=<Y,Y=<Z,Z=<100.
ptformula(X,Y,Z):-A is X*X,B is Y*Y,D is Z*Z,D is A+B.
ptprint(X,Y,Z):-pt(X,Y,Z),ptformula(X,Y,Z),write(X),write(','),write(Y),write(','),write(Z),write(','),D is Z*Z,write(=),write(D).

for1(I,I,I):-!.
for1(I,I,H).
for1(I,L,H):-L1 is L+1,for1(I,L1,H).

printall(L,H):-for1(I,L,H),for1(J,L,H),for1(K,L,H),ptprint(I,J,K),nl,fail.