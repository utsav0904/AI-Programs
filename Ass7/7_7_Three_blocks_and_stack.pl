on(b,a).
on(c,b).
on(d,c).
on(f,e).
on(g,f).
on(i,h).
left(e,h).
left(f,i).
left(a,e).
left(b,f).
left(c,g).


onblock(X,Y):-on(X,Y);on(Z,Y),onblock(X,Z).
onleft(X,Y):-left(Z,Y),onblock(X,Z).

%onblock(X,b) ----- all block on b.
%onblock(a,X) ----- op:no.
%onblock(X,Y) ----- all on blocks.
%onleft(X,Y) ----- all block on to the left of Y.
