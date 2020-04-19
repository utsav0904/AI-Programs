same(A,B,C):-A==B,B==C,A==C,A==0,write('Player 1 win'),!.
same(A,B,C):-A==B,B==C,A==C,A==1,write('Player 2 win'),!.
same(A,B,C):-write('not match').

game(A1,A2,A3,B1,B2,B3,C1,C2,C3):-same(A1,A2,A3);same(B1,B2,B3);same(C1,C2,C3);same(A1,B2,C3);same(A3,B2,C1);same(A1,B1,C1);same(A2,B2,C2);same(A3,B3,C3).