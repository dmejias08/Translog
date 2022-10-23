traducir(S0, S, T0, T,Lenguaje):- 
    Lenguaje is 1,
    oracion(S0, S, T0, T),
    write(T0).

traducir(S0, S, Lenguaje):- 
    Lenguaje is 2,
    oracion(S0, S, T0, T),
    write(S0).

oracion(S0, S, T0, T):-sintagma_nominal(S0, S1, T0, T1), sintagma_verbal(S1, S, T1, T).

sintagma_nominal(S0, S1, T0, T1):- articulo(singular, mas, S0, S1, T0, T1), sustantivo(singular, mas,S1, S, T0, T1).  
sintagma_nominal(S0, S1, T0, T1):- articulo(singular, fem, S0, S1, T0, T1), sustantivo(singular, fem, S1, S, T0, T1).  

sintagma_verbal(S0, S1, T0, T1):- verbo(singular, S0,S, T0, T).
sintagma_verbal(S0, S1, T0, T1):- verbo(singular, S0,S1, T0, T), sintagma_nominal(S1, S, T1, T).


articulo(singular, mas, [el|S], S, [the|T], T).
articulo(singular, fem, [la|S], S, [the|T], T).

sustantivo(singular, mas,  [hombre|S], S, [men|T], T).
sustantivo(singular, fem, [manzana|S], S, [apple| T], T).

verbo(singular, [corre|S], S, [run|T], T).

% English
sentence(S0, S):-subject(S0, S1), predicate(S1, S).

subject(S0, S):- determiner(S0, S1), noun(S1, S).  

predicate(S0, S):- verb(S0, S).
predicate(S0, S):- verb(S0, S1), subject(S1, S).

determiner([the|S], S).

noun([Y|S], S):- traducir_noun(singular, X, Y).

verb([Y|S], S) :- traducir_verb(singular, X, Y).


% DataBase

% traducir (ingles , español)
traducir_verb(run, corre).
traducir_verb(eat, comen).
traducir_verb(plural, eat, comen).
traducir_verb(singular, eats, come).
traducir_noun(singular, women, mujer).