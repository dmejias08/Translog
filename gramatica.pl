:- [database].



% Ingles
sentence(s(S,V,O)) --> nominal_predicate(S,NUM), verb(V,NUM), nominal_predicate(O,_).
sentence(s(S,V)) --> nominal_predicate(S,NUM), verb(V,NUM).
sentence(s(S)) --> phrases(S).

nominal_predicate(det(A,S),NUM) --> modifier(A), noun(S,NUM).
nominal_predicate(det(S),NUM) --> subjet(S,NUM).

phrases(det(S, ID)) --> popular_phrase(S, ID).
phrases(det(S, S1, ID)) --> popular_phrase(S, ID), popular_phrase(S1, ID).




% Español
oracion(s(S,V,O)) --> sintagma_nominal(S,PERS,NUM), verbo(V,PERS,NUM), sintagma_nominal(O, _, _).
oracion(s(S,V)) --> sintagma_nominal(S,PERS,NUM), verbo(V,PERS,NUM).
oracion(s(S)) --> frases(S).

sintagma_nominal(det(A,S), PERS,NUM) --> articulo(A,GEN,NUM), sustantivo(S,GEN, PERS, NUM).
sintagma_nominal(det(A,S), PERS,NUM) --> sustantivo(S,GEN, PERS, NUM).
sintagma_nominal(det(S), PERS,NUM) --> sujeto(S,GEN,PERS,NUM).

frases(det(S, ID)) --> frase_popular(S, ID).
frases(det(S, S1, ID)) --> frase_popular(S, ID), frase_popular(S1, ID).




    