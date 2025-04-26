same_parity(X, Y) :-
    Result1 is rem(X, 2),
    Result2 is rem(Y, 2),
    Result1 = Result2.
