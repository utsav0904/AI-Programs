evenlength([]).
evenlength([H|T]):-oddlength(T).

oddlength([_]).
oddlength([H|T]):-evenlength(T).
