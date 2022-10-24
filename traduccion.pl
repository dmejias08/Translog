% Ingles
sentence(s(S,V,O)) --> nominal_predicate(S,NUM), verb(V,NUM), nominal_predicate(O,_).
sentence(s(S,V)) --> nominal_predicate(S,NUM), verb(V,NUM).
sentence(s(S)) --> phrases(S).


nominal_predicate(det(A,S),NUM) --> modifier(A), noun(S,NUM).
nominal_predicate(det(S),NUM) --> subjet(S,NUM).

phrases(det(S, ID)) --> popular_phrase(S, ID).
phrases(det(S, S1, ID)) --> popular_phrase(S, ID), popular_phrase(S1, ID).

popular_phrase(f(f1), id1) --> ["hello"].
popular_phrase(f(f12), id1) --> [""].


modifier(a(art)) --> ["the"].

subjet(suj(su1), _) --> ["i"].
subjet(suj(su2), plural) --> ["we"].
subjet(suj(su3), plural) --> ["they"].

noun(sus(s1),singular) --> ["stone"].
noun(sus(s2),singular) --> ["paper"].
noun(sus(s3),plural) --> ["scissors"].

verb(v(v1),singular) --> ["cuts"].
verb(v(v1),plural) --> ["cut"].

verb(v(v2),plural) --> ["wrap"].
verb(v(v2),singular) --> ["wraps"].

verb(v(v3),singular) --> ["breaks"].
verb(v(v3),plural) --> ["break"].

verb(v(v5), plural) --> ["run"].



% Español
oracion(s(S,V,O)) --> sintagma_nominal(S,PERS,NUM), verbo(V,PERS,NUM), sintagma_nominal(O, _, _).
oracion(s(S,V)) --> sintagma_nominal(S,PERS,NUM), verbo(V,PERS,NUM).
oracion(s(S)) --> frases(S).


sintagma_nominal(det(A,S), PERS,NUM) --> articulo(A,GEN,NUM), sustantivo(S,GEN, PERS, NUM).
sintagma_nominal(det(A,S), PERS,NUM) --> sustantivo(S,GEN, PERS, NUM).
sintagma_nominal(det(S), PERS,NUM) --> sujeto(S,GEN,PERS,NUM).

frases(det(S, ID)) --> frase_popular(S, ID).
frases(det(S, S1, ID)) --> frase_popular(S, ID), frase_popular(S1, ID).

frase_popular(f(f1), id1) --> ["pura"].
frase_popular(f(f12), id1) --> ["vida"].

articulo(a(art),f,singular) --> ["la"].
articulo(a(art),m,singular) --> ["el"].
articulo(a(art),f,plural) --> ["las"].

sujeto(suj(su1), f, primera, _) --> ["yo"].
sujeto(suj(su2), f, primera, plural) --> ["nosotras"].
sujeto(suj(su3), m, primera, plural) --> ["nosotros"].

sustantivo(sus(s1),f, tercera, singular) --> ["piedra"].
sustantivo(sus(s2),m, tecera, singular) --> ["papel"].
sustantivo(sus(s3),f, tercera, plural) --> ["tijeras"].
sustantivo(sus(s4), _, _, _) --> ["pasta"].

verbo(v(v1), tercera, singular) --> ["corta"].
verbo(v(v1), primera, singular) --> ["corto"].
verbo(v(v1), tercera, plural) --> ["cortan"].

verbo(v(v2), tercera, singular) --> ["envuelve"].
verbo(v(v2), tercera, plural) --> ["envuelven"].

verbo(v(v3), tercera, singular) --> ["rompe"].
verbo(v(v3), tercera, plural) --> ["rompen"].
verbo(v(v3), primera, plural) --> ["rompemos"].

verbo(v(v5), primera, singular) --> ["corro"].



%Integracion 

consulta():-
    write("Para traducir en ingles digite 1 / To translate in spanish write 2 "),
    read(LENGUAJE),
    consulta_leng(LENGUAJE).


clasificacion(X,Y):- X==Y.


consulta_leng(LENGUAJE):-
    clasificacion(LENGUAJE,1),
    writeln("Escriba frase"),
    read(FRASE),
    string_lower(FRASE, FRASE_MIN),
    split_string(FRASE_MIN, " ", " ", LIST),
    phrase(oracion(A), LIST),
    phrase(sentence(A), RESULT),
    atomic_list_concat(RESULT, " ", ATOM),
    atom_string(ATOM, String),
    write(String).

consulta_leng(LENGUAJE):-
    clasificacion(LENGUAJE,2),
    write("Write down phrase"),
    read(FRASE),
    string_lower(FRASE, FRASE_MIN),
    split_string(FRASE_MIN, " ", " ", LIST),
    phrase(sentence(A), LIST),
    phrase(oracion(A), RESULT),
    atomic_list_concat(RESULT, " ", ATOM),
    atom_string(ATOM, String),
    write(String).
        
    