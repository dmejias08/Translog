saludo(sal(f1), id1) --> ["pura"], saludo_auxiliar(id1). %ya
saludo_auxiliar(id1) --> ["vida"]. %ya
saludo(sal(f2), id2) --> ["hola"]. %ya

articulo(a(art),f,singular) --> ["la"]. %ya
articulo(a(art),m,singular) --> ["el"]. %ya
articulo(a(art),f,plural) --> ["las"]. %ya
articulo(a(art),m,plural) --> ["los"]. %ya
articulo(a(art1),f,singular) --> ["una"]. %ya
articulo(a(art1),m,singular) --> ["un"]. %ya
articulo(a(art2),f,plural) --> ["unas"]. %ya
articulo(a(art2),m,plural) --> ["unos"]. %ya
articulo(a(art3),f,singular) --> ["esa"]. %ya
articulo(a(art3),m,singular) --> ["eso"]. %ya
articulo(a(art4),f,plural) --> ["esas"]. %ya
articulo(a(art4),m,plural) --> ["esos"]. %ya

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
sustantivo(sus(s1),f, tercera, singular) --> ["escuela"]. %ya
sustantivo(sus(s2),m, tercera, singular) --> ["libro"]. %ya
sustantivo(sus(s3),m, tercera, plural) --> ["perros"]. %ya
sustantivo(sus(s4), f, tercera, singular) --> ["pasta"]. %ya
sustantivo(sus(s5), f, tercera, singular) --> ["camisa"]. %ya
sustantivo(sus(s6),m, tercera, plural) --> ["libros"]. %ya
sustantivo(sus(s6),m, tercera, singular) --> ["perro"]. %ya

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
verbo(v(v4), tercera, plural) --> ["tienen"]. %ya
verbo(v(v3), tercera, singular) --> ["tiene"]. %ya

verbo(v(v6), primera, singular) --> ["corro"]. %ya
verbo(v(v6), primera, plural) --> ["corremos"]. %ya
verbo(v(v6), segunda, singular) --> ["corre"]. %ya
verbo(v(v6), segunda, plural) --> ["corren"]. %ya
verbo(v(v6), tercera, plural) --> ["corren"]. %ya
verbo(v(v5), tercera, singular) --> ["corre"]. %ya

verbo(v(v8), primera, singular) --> ["soy"]. %ya
verbo(v(v8), primera, plural) --> ["somos"]. %ya
verbo(v(v8), segunda, singular) --> ["es"]. %ya
verbo(v(v8), segunda, plural) --> ["son"]. %ya
verbo(v(v8), tercera, plural) --> ["es"]. %ya
verbo(v(v7), tercera, singular) --> ["son"]. %ya

signo_inicio(si(si1)) --> ["¡"].
signo_inicio(si(si2)) --> ["¿"].
signo_finalizacion(sf(sf1)) --> ["!"].
signo_finalizacion(sf(sf2)) --> ["?"].
signo_finalizacion(sf(sf3)) --> ["."].

preposiciones(p(p1)) --> ["hacia"].
preposiciones(p(p2)) --> ["hasta"].
preposiciones(p(p3)) --> ["con"].
preposiciones(p(p4)) --> ["de"].
preposiciones(p(p5)) --> ["en"].
preposiciones(p(p6)) --> ["sobre"].

