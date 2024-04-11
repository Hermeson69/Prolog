pot(_, 0, 1).

pot(B, E, R) :-
    E > 0,
    M is E - 1,
    pot(B, M, R1),
    R is B * R1.
