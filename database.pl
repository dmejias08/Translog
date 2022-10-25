% ----------------------------- Ingles ----------------------------------------------------------------

gretting(sal(f1), id1) --> ["hello"].
gretting(sal(f2), id2) --> ["hello"].

modifier(a(art)) --> ["the"].

subjet(suj(su1), _) --> ["i"].
subjet(suj(su2), plural) --> ["we"].
subjet(suj(su3), plural) --> ["you"].
subjet(suj(su4), plural) --> ["they"].
subjet(suj(su5), singular) --> ["she"].
subjet(suj(su6), singular) --> ["he"].


noun(sus(s1),singular) --> ["stone"]. 
noun(sus(s2),singular) --> ["paper"]. 
noun(sus(s3),plural) --> ["scissors"]. 
noun(sus(s4), _) --> ["pasta"]. 

verb(v(v1),singular) --> ["cuts"].
verb(v(v1),plural) --> ["cut"].

verb(v(v2),plural) --> ["wrap"].
verb(v(v2),singular) --> ["wraps"].

verb(v(v3),singular) --> ["breaks"].
verb(v(v3),plural) --> ["break"].

verb(v(v5), plural) --> ["run"].

begin_sign(si(si1)) --> [""].
begin_sign(si(si2)) --> [" "].
end_sign(sf(sf1)) --> ["!"].
end_sign(sf(sf2)) --> ["?"].
end_sign(sf(sf3)) --> ["."].

% ----------------------------- Español ----------------------------------------------------------------

saludo(sal(f1), id1) --> ["pura"], saludo_auxiliar(id1). %ya
saludo_auxiliar(id1) --> ["vida"]. %ya
saludo(sal(f2), id2) --> ["hola"]. %ya

articulo(a(art),f,singular) --> ["la"]. %ya
articulo(a(art),m,singular) --> ["el"]. %ya
articulo(a(art),f,plural) --> ["las"]. %ya

sujeto(suj(su1), _, primera, _) --> ["yo"]. %ya
sujeto(suj(su2), f, primera, plural) --> ["nosotras"]. %ya
sujeto(suj(su2), m, primera, plural) --> ["nosotros"]. %ya

sujeto(suj(su3), _, segunda, singular) --> ["usted"]. %ya
sujeto(suj(su3), _, segunda, plural) --> ["ustedes"]. %ya

sujeto(suj(su5), f, tercera, singular) --> ["ella"]. %ya
sujeto(suj(su6), m, tercera, singular) --> ["él"]. %ya
sujeto(suj(su4), f, tercera, plural) --> ["ellas"]. %ya
sujeto(suj(su4), m, tercera, plural) --> ["ellos"]. %ya

sustantivo(sus(s1),f, tercera, singular) --> ["piedra"]. %ya
sustantivo(sus(s2),m, tecera, singular) --> ["papel"]. %ya
sustantivo(sus(s3),f, tercera, plural) --> ["tijeras"]. %ya
sustantivo(sus(s4), _, _, _) --> ["pasta"]. %ya

verbo(v(v1), tercera, singular) --> ["corta"].
verbo(v(v1), primera, singular) --> ["corto"].
verbo(v(v1), tercera, plural) --> ["cortan"].

verbo(v(v2), tercera, singular) --> ["envuelve"].
verbo(v(v2), tercera, plural) --> ["envuelven"].

verbo(v(v3), tercera, singular) --> ["rompe"].
verbo(v(v3), tercera, plural) --> ["rompen"].
verbo(v(v3), primera, plural) --> ["rompemos"].

verbo(v(v5), primera, singular) --> ["corro"].

signo_inicio(si(si1)) --> ["¡"].
signo_inicio(si(si2)) --> ["¿"].
signo_finalizacion(sf(sf1)) --> ["!"].
signo_finalizacion(sf(sf2)) --> ["?"].
signo_finalizacion(sf(sf3)) --> ["."].
