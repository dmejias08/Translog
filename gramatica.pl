:-[espanol].
:-[ingles].

% Ingles
sentence(s(S,V,O)) --> nominal_predicate(S,NUM), verb(V,NUM), nominal_predicate(O,_).
sentence(s(S,V)) --> nominal_predicate(S,NUM), verb(V,NUM).
sentence(s(S)) --> nominal_predicate(S,NUM).
sentence(s(S)) --> grettings(S).
sentence(s(S)) --> question(S, NUM, PERS).
sentence(s(S, F)) --> grettings(S), end_sign(F).
sentence(s(I, S, F)) --> begin_sign(I), grettings(S), end_sign(F).

% Cojunto de hechos base para formar un sintagma nominal
nominal_predicate(det(A,S),NUM) --> modifier(A), noun(S,NUM).
nominal_predicate(det(S), NUM, PERS) --> subjet(S,NUM,PERS).

question(det(A, T, S), NUM, PERS) --> auxiliar(A), tobe(T,NUM,PERS), subjet(S,NUM,PERS).
question(det(A, Q, T, S), NUM, PERS) --> auxiliarEsp(A), quantifiers(Q), tobe(T,NUM,PERS), subjet(S,NUM,PERS).
nominal_predicate(det(S),NUM) --> noun(S,NUM).

% Conjunto de hechos con preposiciones
nominal_predicate(det(P,A,S),NUM) --> preposition(P), modifier(A), noun(S,NUM).
nominal_predicate(det(P,S),NUM) --> preposition(P), pronoun(S,NUM).

% Conjunto de hechos con adjetivos
nominal_predicate(det(P,A,S,V),NUM) --> preposition(P), modifier(A), adjective(V), noun(S,NUM).
nominal_predicate(det(A,S,V),NUM) --> modifier(A), adjective(V), noun(S,NUM).
nominal_predicate(det(S,V),NUM) --> adjective(V), noun(S,NUM).

grettings(sal(S)) --> gretting(S).
grettings(sal(S, D)) --> gretting(S), gretting(D).

% Español
oracion(s(S,V,O)) --> sintagma_nominal(S,PERS,NUM), verbo(V,PERS,NUM), sintagma_nominal(O, _, _).
oracion(s(S,V,O)) --> sintagma_nominal(S,PERS,NUM), verbo(V,PERS,NUM), sintagma_nominal(O, PERS1, NUM1).
oracion(s(S,V)) --> sintagma_nominal(S,PERS,NUM), verbo(V,PERS,NUM).
oracion(s(S)) --> sintagma_nominal(S,PERS,NUM).
oracion(s(S)) --> saludos(S).
oracion(s(S,V)) --> saludos(S), signo_finalizacion(V).
oracion(s(S,V, O)) -->  signo_inicio(V), saludos(S), signo_finalizacion(O).

% Conjunto de hechos base para formar un sitagma nominal
sintagma_nominal(det(A,S), PERS,NUM) --> articulo(A,GEN,NUM), sustantivo(S,GEN, PERS, NUM).
sintagma_nominal(det(A,S), PERS,NUM) --> sustantivo(S,GEN, PERS, NUM).
sintagma_nominal(det(S), PERS,NUM) --> sujeto(S,GEN,PERS,NUM).

% Conjunto de hechos para sintagmas nominales con preposiciones
sintagma_nominal(det(P,A,S), PERS,NUM) --> preposiciones(P), articulo(A,GEN,NUM), sustantivo(S,GEN, PERS, NUM).
sintagma_nominal(det(P,S), PERS,NUM) --> preposiciones(P), sustantivo(S,GEN, PERS, NUM).
sintagma_nominal(det(P,S), PERS,NUM) --> preposiciones(P), sujeto(S,GEN,PERS,NUM).

% Conjunto de hechos para sintagmas nominales con adjetivos
sintagma_nominal(det(P,A,S,V), PERS,NUM) --> preposiciones(P), articulo(A,GEN,NUM), sustantivo(S,GEN, PERS, NUM), adjetivo(V, GEN, NUM).
sintagma_nominal(det(P,S,A), PERS,NUM) --> preposiciones(P), sustantivo(S,GEN, PERS, NUM), adjetivo(A, GEN, NUM).
sintagma_nominal(det(A,S,V), PERS,NUM) --> articulo(A,GEN,NUM), sustantivo(S,GEN, PERS, NUM), adjetivo(V, GEN, NUM).
sintagma_nominal(det(S,A), PERS,NUM) --> sustantivo(S,GEN, PERS, NUM), adjetivo(A, GEN, NUM).
sintagma_nominal(det(S,A), PERS,NUM) --> sujeto(S,GEN,PERS,NUM), adjetivo(A, PERS, NUM).


saludos(sal(S)) --> saludo(S).
saludos(sal(S, D)) --> saludo(S), saludo(D).


    