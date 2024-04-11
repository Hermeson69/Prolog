
aluno(joao, calculo). 
aluno(maria, calculo). 
aluno(joel, programacao). 
aluno(joel, estrutura). 
frequenta(joao, ufpi). 
frequenta(maria, ufpi). 
frequenta(joel, ufma). 
professor(carlos, calculo). 
professor(ana_paula, estrutura). 
professor(pedro, programacao). 
funcionario(pedro, ufma). 
funcionario(ana_paula, ufpi). 
funcionario(carlos, ufpi). 

ap(Aluno, Professor) :-
    aluno(Aluno, Disciplina),
    professor(Professor, Disciplina).

au(Pessoa, Universidade):-
    (aluno(Pessoa, _) ; professor(Pessoa, _) ; funcionario(Pessoa, _)),
    frequenta(Pessoa, Universidade).
