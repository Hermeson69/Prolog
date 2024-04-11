nasceu(joao, pelotas).
nasceu(jean, paris).

fica(pelotas, rio_grande_do_sul).
fica(paris, franca).

gaúcho(Pessoa) :-
    nasceu(Pessoa, Cidade),
    fica(Cidade, rio_grande_do_sul).
