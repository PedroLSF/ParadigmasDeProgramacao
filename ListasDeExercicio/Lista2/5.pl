male(abraham).
male(clancy).
male(herb).
male(homer).
male(bart).

female(mona).
female(jackie).
female(marge).
female(patty).
female(selma).
female(lisa).
female(maggie).
female(ling).

father(abraham, herb).
father(abraham, homer).
father(clancy, marge).
father(clancy, patty).
father(clancy, selma).
father(homer, bart).
father(homer, lisa).
father(homer, maggie).

mother(mona, herb).
mother(mona, homer).
mother(jackie, marge).
mother(jackie, patty).
mother(jackie, selma).
mother(marge, bart).
mother(marge, lisa).
mother(marge, maggie).
mother(selma, ling).

uncle(Tio, Pessoa) :-
    father(PaiDaPessoa, Pessoa),
    father(Avo, PaiDaPessoa),
    father(Avo, Tio),
    Tio \= PaiDaPessoa.

uncle(Tia, Pessoa) :-
    mother(PaiDaPessoa, Pessoa),
    mother(Avo, PaiDaPessoa),
    mother(Avo, Tia),
    Tia \= PaiDaPessoa.

grandmother(Avo, Pessoa) :-
    father(Pai, Pessoa),
    mother(Avo,Pai).

grandmother(Avo, Pessoa) :-
    mother(Mae, Pessoa),
    mother(Avo,Mae).