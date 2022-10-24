% Ingles


sentence(s(S,V,O)) --> nominal_predicate(S,NUM), verb(V,NUM), nominal_predicate(O,_).
sentence(s(S,V)) --> nominal_predicate(S,NUM), verb(V,NUM).
nominal_predicate(det(M,S),NUM) --> modifier(M), noun(S,NUM).


modifier(a(art)) --> [the].
noun(sus(s1),singular) --> [stone].
noun(sus(s2),singular) --> [paper].
noun(sus(s3),plural) --> [scissors].
verb(v(v1),singular) --> [cuts].
verb(v(v2),singular) --> [wraps].
verb(v(v3),singular) --> [breaks].
verb(v(v1),plural) --> [cut].
verb(v(v2),plural) --> [wrap].
verb(v(v3),plural) --> [break].


% Español

oracion(s(S,V,O)) --> sintagma_nominal(S,NUM), verbo(V,NUM), sintagma_nominal(O,_).
oracion(s(S,V)) --> sintagma_nominal(S,NUM), verbo(V,NUM).
sintagma_nominal(det(M,S),NUM) --> articulo(M,GEN,NUM), sustantivo(S,GEN,NUM).


articulo(a(art),f,singular) --> [la].
articulo(a(art),m,singular) --> [el].
articulo(a(art),f,plural) --> [las].
sustantivo(sus(s1),f,singular) --> [piedra].
sustantivo(sus(s2),m,singular) --> [papel].
sustantivo(sus(s3),f,plural) --> [tijeras].
verbo(v(v1),singular) --> [corta].
verbo(v(v2),singular) --> [envuelven].
verbo(v(v3),singular) --> [rompe].
verbo(v(v1),plural) --> [cortan].
verbo(v(v2),plural) --> [envuelven].
verbo(v(v3),plural) --> [rompen].
