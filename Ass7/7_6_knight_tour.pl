add(X,Y,X1,Y1):- X1 is X+2, Y1 is Y+1.
add(X,Y,X1,Y1):- X1 is X+1, Y1 is Y+2.
add(X,Y,X1,Y1):- X1 is X+2, Y1 is Y-1.
add(X,Y,X1,Y1):- X1 is X+1, Y1 is Y-2.
add(X,Y,X1,Y1):- X1 is X-2, Y1 is Y+1.
add(X,Y,X1,Y1):- X1 is X-2, Y1 is Y-1.
add(X,Y,X1,Y1):- X1 is X-1, Y1 is Y+2.
add(X,Y,X1,Y1):- X1 is X-1, Y1 is Y-2.
check(X,Y):- member(X,[1,2,3,4,5,6,7,8]), member(Y,[1,2,3,4,5,6,7,8]).
knightjump(X1,Y1,X2,Y2):- add(X1,Y1,X2,Y2),check(X2,Y2).
knightpath([X1,Y1]).
knightpath([X1,Y1,X2,Y2|T]):-knightjump(X1,Y1,X2,Y2),knightpath([X2,Y2|T]).