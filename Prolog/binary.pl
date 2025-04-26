b2d(Bits, Result) :-
    b2d(Bits, 0, Result).

b2d([], Acc, Acc).

b2d([H|T], Acc, Result) :-
    char_code(H, Code),
    Digit is Code - 48,
    between(0, 1, Digit),
    length(T, Pow),
    Partial is Digit * 2^Pow,
    NewAcc is Acc + Partial,
    b2d(T, NewAcc, Result).

binary(X, Dec) :-
    atom_chars(X, Y),
    b2d(Y, Dec).
