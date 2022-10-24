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
