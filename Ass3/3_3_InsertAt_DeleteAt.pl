insertat(T,E,1,[E|T]).
insertat([H|T],E,P,[H|T1]):-PP is P-1,insertat(T,E,PP,T1),!.

deleteitem(E,[E|T],T).
deleteitem(E,[H|T],[H|T1]):-deleteitem(E,T,T1),!.