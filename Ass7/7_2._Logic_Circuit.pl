and1(0,0,0).
and1(0,1,0).
and1(1,0,0).
and1(1,1,1).

or1(0,0,0).
or1(0,1,1).
or1(1,0,1).
or1(1,1,1).

not1(1,0).
not1(0,1).

nand(A,B,F):-and1(A,B,C),not1(C,F).
nor(A,B,F):-or1(A,B,C),not1(C,F).
xor(A,B,F):-not1(A,AA),not1(B,BB),and1(AA,B,C),and1(BB,A,D),or1(C,D,F),!.
xnor(A,B,F):-not1(A,AA),not1(B,BB),and1(A,B,C),and1(AA,BB,D),or1(C,D,F),!.