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

% sustantivo( IDEN, GEN, PERS, NUM)                         
sustantivo(sus(s1),f, tercera, singular) --> ["piedra"]. %ya
sustantivo(sus(s2),m, tercera, singular) --> ["papel"]. %ya
sustantivo(sus(s3),f, tercera, plural) --> ["tijeras"]. %ya
sustantivo(sus(s4), f, tercera, singular) --> ["pasta"]. %ya

verbo(v(v2), primera, singular) --> ["camino"]. %ya
verbo(v(v2), primera, plural) --> ["caminamos"]. %ya
verbo(v(v2), segunda, singular) --> ["camina"]. %ya
verbo(v(v2), segunda, plural) --> ["caminan"]. %ya
verbo(v(v2), tercera, plural) --> ["caminan"]. %ya
verbo(v(v1), tercera, singular) --> ["camina"]. %ya

verbo(v(v4), primera, singular) --> ["tengo"]. %ya
verbo(v(v4), primera, plural) --> ["tenemos"]. %ya
verbo(v(v4), segunda, singular) --> ["tiene"]. %ya
verbo(v(v4), segunda, plural) --> ["tienen"]. %ya
verbo(v(v4), tercera, plural) --> ["cortan"]. %ya
verbo(v(v3), tercera, singular) --> ["corta"]. %ya

verbo(v(v6), primera, singular) --> ["corro"].

signo_inicio(si(si1)) --> ["¡"].
signo_inicio(si(si2)) --> ["¿"].
signo_finalizacion(sf(sf1)) --> ["!"].
signo_finalizacion(sf(sf2)) --> ["?"].
signo_finalizacion(sf(sf3)) --> ["."].
