% Regra para verificar se um número é par
pi(X, R) :-
    0 is X mod 2,
    R = 'par'.

% Regra para verificar se um número é ímpar
pi(X, R) :-
    1 is X mod 2,
    R = 'impar'.
