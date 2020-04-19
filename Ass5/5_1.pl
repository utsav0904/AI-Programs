sol([],[],DY,DU,DV).

sol([Y|YT],[X|DX],DY,DU,DV):-
		remove(Y,DY,DY1),
		Temp1 is X-Y,
		Temp2 is X+Y,
		remove(Temp1,DU,DU1),
		remove(Temp2,DV,DV1),
		sol(YT,DX,DY1,DU1,DV1).

solution(YList):-sol(YList,[1,2,3,4,5,6,7,8],[1,2,3,4,5,6,7,8],[-7,-6,-5,-4,-3,-2,-1,0,1,2,3,4,5,6,7],[2,3,4,5,6,7,8,9,10,11,12,13,14,15,16]).

remove(E,[E|T],T).
remove(E,[H|T],[H|T1]):-remove(E,T,T1).