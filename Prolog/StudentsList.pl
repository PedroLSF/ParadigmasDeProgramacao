unb(X) :- fcte(X).

fcte('Ana').
fcte('Beto').
fcte('Carlos').
fcte('Diego').
fcte('Emanuel').
fcte('Fabio').
fcte('Glaucia').
fcte('Heitor').
fcte('Igor').
fcte('João').
fcte('Karla').

unb_report :-
    write('Estudantes da UnB: '), nl,
    unb(X),
    write(X), nl,
    fail.

unb_report.