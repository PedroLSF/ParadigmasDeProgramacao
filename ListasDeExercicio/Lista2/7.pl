divisors(_, Curr, Max, Count) :-
    Curr > Max,
    write(Count).

divisors(N, Curr, Max, Count) :-
    Curr =< Max,
    Resto is rem(N,Curr),
    Resto = 0,
    NewCount is Count + 1,
    divisors(N, Curr + 1, Max, NewCount).

divisors(N, Curr, Max, Count) :-
    Curr =< Max,
    Resto is rem(N,Curr),
    Resto \= 0,
    divisors(N, Curr + 1, Max, Count).