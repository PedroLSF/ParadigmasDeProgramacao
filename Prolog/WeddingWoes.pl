% Participantes
guest('Jaime').
guest('Gustavo').
guest('Valeria').
guest('Esteban').
guest('Malena').

% Pessoas tagarelas
chatty('Gustavo').
chatty('Valeria').

% Afinidades
likes('Esteban', 'Malena').
likes('Malena', 'Esteban').
likes('Gustavo', 'Valeria').

% Regras de emparelhamento
pairing(X, Y) :- likes(X, Y), likes(Y,X).
pairing(X, Y) :- chatty(X), guest(Y).
pairing(X, Y) :- chatty(Y), guest(X).


% Regra de assentos em círculo com 5 pessoas diferentes
seating(A, B, C, D, E) :-
    pairing(A, B),
    pairing(B, C),
    pairing(C, D),
    pairing(D, E),
    pairing(E, A),
    is_set([A, B, C, D, E]),
    nl.
