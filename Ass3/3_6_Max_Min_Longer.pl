maxlist([H],H).
maxlist([H|T],M):-maxlist(T,MM),MM>=H,M is MM,!.
maxlist([H|T],M):-maxlist(T,MM),MM<H,M is H,!.

minlist([H],H).
minlist([H|T],M):-minlist(T,MM),H=<MM,M is H,!.
minlist([H|T],M):-minlist(T,MM),H>MM,M is MM,!.

longerlist([],_):-write('Second list is longer.'),!.
longerlist(_,[]):-write('First list is longer.'),!.
longerlist([_],[_]):-write('Both lists have equal length.'),!.
longerlist([_|T],[_|P]):-longerlist(T,P).