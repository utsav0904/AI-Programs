%N : Number of queens, S is Solution List
sol([],[],DY,DU,DV).

sol([Y|YT],[X|DX],DY,DU,DV):-
		remove(Y,DY,DY1),
		Temp1 is X-Y,
		Temp2 is X+Y,
		remove(Temp1,DU,DU1),
		remove(Temp2,DV,DV1),
		sol(YT,DX,DY1,DU1,DV1).


solution(N,S):- gen(1,N,DX),gen(1,N,DY),X is (N-1),gen(-X,X,DU),Y is 2*N,gen(2,Y,DV),
		sol(S,DX,DY,DU,DV).

gen(N,N,[N]).
gen(N1,N2,[N1|T]):-N1<N2,NN is N1+1,gen(NN,N2,T).

remove(E,[E|T],T).
remove(E,[H|T],[H|T1]):-remove(E,T,T1).