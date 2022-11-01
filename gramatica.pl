% Agregar base de datos
:-[espanol].
:-[ingles].

:-style_check(-singleton).

% ####################################################
%                      Ingles
% ####################################################

sentence(s(S,V,O)) --> nominal_predicate(S,NUM), verbal_predicate(V, NUM), nominal_predicate(O,_).
sentence(s(S,V)) --> nominal_predicate(S,NUM), verbal_predicate(V, NUM).
sentence(s(S)) --> nominal_predicate(S,NUM).
sentence(s(S)) --> grettings(S).
sentence(s(S)) --> question(S, NUM, PERS).
sentence(s(S, F)) --> grettings(S), end_sign(F).
sentence(s(I, S, F)) --> begin_sign(I), grettings(S), end_sign(F).

% Hecho para formas sintagma verbal
verbal_predicate(V, NUM) --> verb(V,NUM).

% Cojunto de hechos base para formar un sintagma nominal
nominal_predicate(det(A,S),NUM) --> modifier(A), noun(S,NUM).
nominal_predicate(det(S), NUM) --> subjet(S,NUM,PERS).
nominal_predicate(det(S),NUM) --> noun(S,NUM).

% Conjunto de hechos con preposiciones
nominal_predicate(det(P,A,S),NUM) --> preposition(P), modifier(A), noun(S,NUM).
nominal_predicate(det(P,S),NUM) --> preposition(P), pronoun(S,NUM).
nominal_predicate(det(P,S),NUM) --> preposition(P), subjet(S,NUM,PERS).
nominal_predicate(det(P,S),NUM) --> subjet(P,NUM,PERS), noun(S,NUM).

% Conjunto de hechos con adjetivos
nominal_predicate(det(P,A,S,V),NUM) --> preposition(P), modifier(A), adjective(V), noun(S,NUM).
nominal_predicate(det(A,S,V),NUM) --> modifier(A), adjective(V), noun(S,NUM).
nominal_predicate(det(S,V),NUM) --> adjective(V), noun(S,NUM).
nominal_predicate(det(V),NUM) --> adjective(V).

% Conjunto de hechos para saludos
grettings(sal(S)) --> gretting(S).
grettings(sal(S, D)) --> gretting(S), gretting(D).

% Conjunto de hechos para preguntas 
question(det(A, T, S), NUM, PERS) --> auxiliar(A), tobe(T,NUM,PERS), subjet(S,NUM,PERS).
question(det(A, Q, T, S), NUM, PERS) --> auxiliarEsp(A), quantifiers(Q), tobe(T,NUM,PERS), subjet(S,NUM,PERS).

% ####################################################
%                     Español
% ####################################################

% Conjunto de hechos base para formar un sitagma nominal
oracion(s(S,V,O)) --> sintagma_nominal(S,PERS,NUM, GEN), sintagma_verbal(V, PERS, NUM), sintagma_nominal(O, PERS1, NUM1,GEN).
oracion(s(S,V,O)) --> sintagma_nominal(S,PERS,NUM, GEN), sintagma_verbal(V, PERS, NUM), sintagma_nominal(O, PERS, NUM, GEN).
oracion(s(S,V,O)) --> sintagma_nominal(S,PERS,NUM, GEN), sintagma_verbal(V, PERS, NUM), sintagma_nominal(O, NUM, GEN).
oracion(s(S,V,O)) --> sintagma_nominal(S,PERS,NUM, GEN), sintagma_verbal(V, PERS, NUM), sintagma_nominal(O,_,_, GEN2).
oracion(s(S,V)) --> sintagma_nominal(S,PERS,NUM, GEN), sintagma_verbal(V, PERS, NUM).
oracion(s(S)) --> sintagma_nominal(S,PERS,NUM, GEN).
oracion(s(S)) --> saludos(S).
oracion(s(S,V)) --> saludos(S), signo_finalizacion(V).
oracion(s(S,V, O)) -->  signo_inicio(V), saludos(S), signo_finalizacion(O).

% Hecho para sintagma verbal 
sintagma_verbal(V, PERS, NUM) --> verbo(V,PERS,NUM).
sintagma_verbal(V, PERS, NUM) --> verbo(V,PERS,NUM).

% Conjunto de hechos base para formar un sitagma nominal
sintagma_nominal(det(A,S), PERS,NUM,GEN) --> articulo(A,GEN,NUM), sustantivo(S,GEN, PERS, NUM).
sintagma_nominal(det(S), PERS,NUM,GEN) --> sustantivo(S,GEN, PERS, NUM).
sintagma_nominal(det(S), PERS,NUM,GEN) --> sujeto(S,GEN,PERS,NUM).
sintagma_nominal(det(S, SU), PERS,NUM,GEN) -->sujeto(S,GEN,PERS,NUM), sustantivo(SU,GEN, PERS, NUM).

% Conjunto de hechos para sintagmas nominales con preposiciones
sintagma_nominal(det(P,A,S), PERS,NUM,GEN) --> preposiciones(P), articulo(A,GEN,NUM), sustantivo(S,GEN, PERS, NUM).
sintagma_nominal(det(P,S), PERS,NUM,GEN) --> preposiciones(P), sustantivo(S,GEN, PERS, NUM).
sintagma_nominal(det(P,S), PERS,NUM,GEN) --> preposiciones(P), sujeto(S,GEN,PERS,NUM).

% Conjunto de hechos para sintagmas nominales con adjetivos
sintagma_nominal(det(P,A,S,V), PERS,NUM,GEN) --> preposiciones(P), articulo(A,GEN,NUM), sustantivo(S,GEN, PERS, NUM), adjetivo(V, GEN, NUM).
sintagma_nominal(det(P,S,A), PERS,NUM,GEN) --> preposiciones(P), sustantivo(S,GEN, PERS, NUM), adjetivo(A, GEN, NUM).
sintagma_nominal(det(A,S,V), PERS,NUM,GEN) --> articulo(A,GEN,NUM), sustantivo(S,GEN, PERS, NUM), adjetivo(V, GEN, NUM).
sintagma_nominal(det(S,A), PERS,NUM,GEN) --> sustantivo(S,GEN, PERS, NUM), adjetivo(A, GEN, NUM).
sintagma_nominal(det(S,A), PERS,NUM,GEN) --> sujeto(S,GEN,PERS,NUM), adjetivo(A, PERS, NUM).
sintagma_nominal(det(A), NUM,GEN) --> adjetivo(A, GEN, NUM).

% Conjunto de hechos para formar saludos
saludos(sal(S)) --> saludo(S).
saludos(sal(S, D)) --> saludo(S), saludo(D).


    