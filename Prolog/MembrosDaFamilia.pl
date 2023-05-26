%BASE DE CONHECIMENTO
%swipl

familia(
    pessoa(pedro,silva,data(1,04,1930),empregado(cnn,1000), masculino),
    pessoa(maria,silva,data(1,05,1945),empregado(bnpp, 1230), feminino),
    [
        pessoa(manoel,silva,data(10,09,1975),desempregado, masculino),
        pessoa(ana,silva,data(12,11,1981),empregado(bcc,800), feminino)
    ]
).
familia(
    pessoa(paulo,santos,data(1,01,1955),empregado(abb,1200), masculino),
    pessoa(ana,santos,data(1,05,1955),desempregado, feminino),
    [
        pessoa(manoela,santos,data(10,09,1981),desempregado, feminino),
        pessoa(andre,santos,data(18,11,1978),empregado(bb,1100), masculino),
        pessoa(carlos,santos,data(02,02,1981),empregado(cc,3200), masculino)
    ]
).
familia(
    pessoa(eddard, stark, data(31, 03, 1948), morto, masculino),
    pessoa(catelyn, stark, data(11, 08, 1953), morto, feminino),
    [
        pessoa(robb, stark, data(09, 12, 1977), morto, masculino),
        pessoa(sansa, stark, data(01, 06, 1979), empregado(conselheira,11000), feminino),
        pessoa(arya, stark, data(06, 01, 1991), empregado(assasina, 8800), feminino),
        pessoa(bran, stark, data(23, 10, 1993), empregado(vidente, 1), masculino),
        pessoa(rickon, stark, data(29, 04, 1999), morto, masculino)
    ]
).

%Regras

marido(X) :- familia(X,_,_).

esposa(X) :- familia(_,X,_).

filhos(X) :- familia(_,_,Filhos),member(X,Filhos).

existe(Pessoa) :- marido(Pessoa); esposa(Pessoa); filhos(Pessoa).

%Questões

nomeCompleto(NC,N,S) :- concat(NC, " ", Z), concat(Z, N, S).

%1
nomes(X) :- existe(pessoa(Nome, Sobrenome,_,_)), nomeCompleto(Nome,Sobrenome,X).

%2
filhosBydt(X,Y) :- filhos(pessoa(Nome,Sobrenome,data(_,_,Y),_)), nomeCompleto(Nome,Sobrenome,X).

%3
esposaEmpregada(X) :- esposa(pessoa(Nome,Sobrenome,_,empregado(_,_))), nomeCompleto(Nome,Sobrenome,X).

%4.
pessoasDesempregada(X,Y) :- existe(pessoa(Nome,Sobrenome,data(_,_,Z),desempregado)), Z < Y, nomeCompleto(Nome,Sobrenome,X).

%5.
nascidoAntesSalario(X,Y,Z) :- existe(pessoa(Nome,Sobrenome,data(_,_,Ano),empregado(_,Salario))), Ano < Y, Salario < Z, nomeCompleto(Nome,Sobrenome,X).

%6.
familiaMinimFilhos(X,Y) :- familia(pessoa(_,X,_,_),_,Filhos), length(Filhos, T), Y =< T.

%8.
familiaSemFilhos(X) :- familia(pessoa(_,X,_,_),_,Filhos), length(Filhos, T), T = 0.

%9.
filhosDesempregados(X) :- filhos(pessoa(Nome,Sobrenome,_,desempregado)), nomeCompleto(Nome,Sobrenome,X).

%10.
paisIdade(X,Z) :- familia(pessoa(_,_,data(_,_,I),_), pessoa(_,_,data(_,_,J),_),Filhos), Z =< (I-J), member(X, Filhos).

