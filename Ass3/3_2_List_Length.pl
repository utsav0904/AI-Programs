leng([],0).
leng([H|T],L) :- leng(T,LL),L is LL+1.

len([],L1,L1).
len([H|T],L,RL) :- LL is L + 1, len(T, LL,RL).