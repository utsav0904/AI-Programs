appnd(T,[],T).
appnd([],T,T).
appnd([H|T],L,[H|T3]) :- appnd(T,L,T3).