traducir1(S0, S):-  
    oracion(S0, S),
    writeln(S0).


oracion(S0,S):- sintagma_nominal(S0,S1),
sintagma_verbal(S1,S).


sintagma_nominal(S0,S):- 
determinante(S0,S1), 
nombre(S1,S).

sintagma_verbal(S0,S):- verbo(S0,S).
sintagma_verbal(S0,S):- verbo(S0,S1),
sintagma_nominal(S1,S).


determinante([el|S],S).
determinante([la|S],S).


nombre([hombre|S],S).
nombre([manzana|S],S).


verbo([Y|S], S):-traducir([Y|S]).

traducir(S)
traducir_verbo(come, eat).
