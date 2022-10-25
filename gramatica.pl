:-[espanol].
:-[ingles].

% Ingles
sentence(s(S,V,O)) --> nominal_predicate(S,NUM), verb(V,NUM), nominal_predicate(O,_).
sentence(s(S,V)) --> nominal_predicate(S,NUM), verb(V,NUM).
sentence(s(S)) --> nominal_predicate(S,NUM).
sentence(s(S)) --> grettings(S).
sentence(s(S, F)) --> grettings(S), end_sign(F).
sentence(s(I, S, F)) --> begin_sign(I), grettings(S), end_sign(F).

nominal_predicate(det(A,S),NUM) --> modifier(A), noun(S,NUM).
nominal_predicate(det(S),NUM) --> subjet(S,NUM).
nominal_predicate(det(S),NUM) --> noun(S,NUM).
nominal_predicate(det(P,S),NUM) --> preposition(P), noun(S,NUM).
nominal_predicate(det(P,A,S),NUM) --> preposition(P), modifier(A), noun(S,NUM).
nominal_predicate(det(P,S),NUM) --> preposition(P), subjet(S,NUM).

grettings(sal(S, ID)) --> gretting(S, ID).

% Español
oracion(s(S,V,O)) --> sintagma_nominal(S,PERS,NUM), verbo(V,PERS,NUM), sintagma_nominal(O, _, _).
oracion(s(S,V)) --> sintagma_nominal(S,PERS,NUM), verbo(V,PERS,NUM).
oracion(s(S)) --> sintagma_nominal(S,PERS,NUM).
oracion(s(S)) --> saludos(S).
oracion(s(S,V)) --> saludos(S), signo_finalizacion(V).
oracion(s(S,V, O)) -->  signo_inicio(V), saludos(S), signo_finalizacion(O).

sintagma_nominal(det(A,S), PERS,NUM) --> articulo(A,GEN,NUM), sustantivo(S,GEN, PERS, NUM).
%sintagma_nominal(det(A,S,V), PERS,NUM) --> articulo(A,GEN,NUM), sustantivo(S,GEN, PERS, NUM), adjetivo(V).
sintagma_nominal(det(A,S), PERS,NUM) --> sustantivo(S,GEN, PERS, NUM).
%sintagma_nominal(det(A,S), PERS,NUM) --> sustantivo(S,GEN, PERS, NUM), adjetivo(A).
sintagma_nominal(det(S), PERS,NUM) --> sujeto(S,GEN,PERS,NUM).
sintagma_nominal(det(P,A,S), PERS,NUM) --> preposiciones(P), articulo(A,GEN,NUM), sustantivo(S,GEN, PERS, NUM).
sintagma_nominal(det(P,S), PERS,NUM) --> preposiciones(P), sustantivo(S,GEN, PERS, NUM).
sintagma_nominal(det(P,S), PERS,NUM) --> preposiciones(P), sujeto(S,GEN,PERS,NUM).
%sintagma_nominal(det(P,A,S,V), PERS,NUM) --> preposiciones(P), articulo(A,GEN,NUM), sustantivo(S,GEN, PERS, NUM), adjetivo(V).
%sintagma_nominal(det(P,S,A), PERS,NUM) --> preposiciones(P), sustantivo(S,GEN, PERS, NUM), adjetivo(A).

saludos(sal(S, ID)) --> saludo(S, ID).


    