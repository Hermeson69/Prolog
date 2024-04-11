progenitor(filo, joao).
progenitor(pedro, joao).
progenitor(maria, jose).
progenitor(joao, jose).
progenitor(joao, ana).
progenitor(jose, julia).
progenitor(jose, iris).
progenitor(iris, jorge).
progenitor(joao, marta).
progenitor(joao, carlos).
progenitor(ana, marta).
progenitor(ana, carlos).
progenitor(marta, lucas).
progenitor(carlos, maria).
progenitor(carlos, pedro).

sexo(filo, feminino).
sexo(pedro, masculino).
sexo(jose, masculino).
sexo(maria, feminino).
sexo(joao, masculino).
sexo(ana, feminino).
sexo(iris, feminino).
sexo(julia, feminino).
sexo(jorge, masculino).
sexo(marta, feminino).
sexo(carlos, masculino).
sexo(lucas, masculino).
sexo(maria, feminino).
sexo(pedro, masculino).

pai(X, Y) :-
    progenitor(X, Y),
    sexo(X, masculino).
mae(X, Y) :-
    progenitor(X, Y),
    sexo(X, feminino).
filho(X, Y) :-
    progenitor(Y, X),
    sexo(X, masculino).
filha(X, Y) :-
    progenitor(Y, X),
    sexo(X, feminino).
irmao(X, Y) :-
    progenitor(Z, X),
    progenitor(Z, Y),
    sexo(X, masculino),
    X \= Y.
irma(X, Y) :-
    progenitor(Z, X),
    progenitor(Z, Y),
    sexo(X, feminino),
    X \= Y.
tio(X, Y) :-
    progenitor(Z, Y),
    irmao(X, Z),
    sexo(X, masculino).
tia(X, Y) :-
    progenitor(Z, Y),
    irma(X, Z),
    sexo(X, feminino).
avom(X, Z) :-
    progenitor(X, Y),
    progenitor(Y, Z),
    sexo(X, masculino).
avof(X, Z) :-
    progenitor(X, Y),
    progenitor(Y, Z),
    sexo(X, feminino).
bisavom(X, Y) :-
    progenitor(X, Z),
    progenitor(Z, W),
    progenitor(W, Y),
    sexo(X, masculino).
bisavof(X, Y) :-
    progenitor(X, Z),
    progenitor(Z, W),
    progenitor(W, Y),
    sexo(X, feminino).
antepassado(X, Z) :-
    progenitor(X, Y),
    antepassado(Y, Z).
sogra(X, Y) :-
    mulher(X),
    progenitor(Z, Y),
    progenitor(Z, X),
    X \= Y,
    X \= Z.
sogro(X, Y) :-
    homem(X),
    progenitor(Z, Y),
    progenitor(Z, X),
    X \= Y,
    X \= Z.
cunhado(X, Y) :-
    progenitor(Z, X),
    progenitor(W, Y),
    irmao(Z, W),
    sexo(X, masculino),
    X \= Y.
cunhada(X, Y) :-
    progenitor(Z, X),
    progenitor(W, Y),
    irma(Z, W),
    sexo(X, feminino),
    X \= Y.

mulher(X) :-
    sexo(X, feminino).
homem(X) :-
    sexo(X, masculino).
