change(0,_,[]).
change(N,L,[H|T]):- member(H,L), N>=H, N1 is N-H, change(N1,L,T).