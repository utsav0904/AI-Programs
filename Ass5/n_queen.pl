solution([],L).

solution([X/Y | Others],L) :-
	solution(Others,L),
	member(Y,L),
	noattack(X/Y, Others).


noattack(_, []).

noattack( X/Y,[X1/Y1 | Others]) :-
	Y \= Y1,
	Y1 - Y \= X1 - X,
	Y1 - Y \= X - X1,
	noattack(X/Y, Others).

sol([X/Y | Others]):-
len([X/Y | Others],L),LL is L+1,numlist(LL,List),solution([X/Y | Others],List).

numlist(1,[]):-!.
numlist(L,[LL|T]):-LL is L-1,numlist(LL,T).

len([],0).
len([H|T],L):-len(T,LL),L is LL+1.
