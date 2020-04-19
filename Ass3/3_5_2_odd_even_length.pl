listlength([]):-write('List has no elements.').
listlength([_|T]):-oddlength(T).

oddlength([]):-write('List has odd length.').
oddlength([_|T]):-evenlength(T).

evenlength([]):-write('List hss even lengtht').
evenlength([_|T]):-oddlength(T).