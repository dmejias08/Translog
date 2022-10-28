saludo(sal(f1)) --> ["pura"], saludo_auxiliar(ID). %ya
saludo_auxiliar(id1) --> ["vida"]. %ya
saludo(sal(f2)) --> ["hola"]. %ya
saludo(sal(f3)) --> ["mae"]. %ya
saludo(sal(f4)) --> ["adios"]. %ya
saludo(sal(f5)) --> ["buenos"], saludo_auxiliar1(ID). %ya
saludo_auxiliar1(id1) --> ["dias"]. %ya
saludo(sal(f6)) --> ["buenas"], saludo_auxiliar2(ID).
saludo_auxiliar2(id1) --> ["noches"].


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

sujeto(suj(su7), _, tercera, singular) --> [""].

sujeto(suj(su8), m, tercera, singular) --> ["esto"].
sujeto(suj(su8), f, tercera, singular) --> ["esta"].

sujeto(suj(su9), m, tercera, singular) --> ["eso"].
sujeto(suj(su9), f, tercera, singular) --> ["esa"].

sujeto(suj(su10), m, tercera, plural) --> ["estos"].
sujeto(suj(su10), f, tercera, plural) --> ["estas"].

sujeto(suj(su11), m, tercera, plural) --> ["esos"]. %ya
sujeto(suj(su11), f, tercera, plural) --> ["esas"]. %ya


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Esta sección correspone los sustantivos
% del idioma español
% sustantivo(IDEN, GEN, PERS, NUM)     
% IDEN: Id unico para ese sustivo
% GEN: género
% PERS: persona 
% NUM: singular o plural                     
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
sustantivo(sus(s1),f, tercera, singular) --> ["escuela"]. %ya
sustantivo(sus(s2),m, tercera, singular) --> ["libro"]. %ya
sustantivo(sus(s3),m, tercera, plural) --> ["perros"]. %ya
sustantivo(sus(s4), f, tercera, singular) --> ["pasta"]. %ya
sustantivo(sus(s5), f, tercera, singular) --> ["camisa"]. %ya
sustantivo(sus(s6),m, tercera, plural) --> ["libros"]. %ya
sustantivo(sus(s7),m, tercera, singular) --> ["perro"]. %ya

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
verbo(v(v8), tercera, plural) --> ["son"]. %ya
verbo(v(v7), tercera, singular) --> ["es"]. %ya


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

adjetivo(adj(adj1), f, singular) --> ["roja"].
adjetivo(adj(adj1), m, singular) --> ["rojo"].
adjetivo(adj(adj1), f, plural) --> ["rojas"].
adjetivo(adj(adj1), m, plural) --> ["rojos"].
adjetivo(adj(adj2), f, singular) --> ["bonita"].
adjetivo(adj(adj2), m, singular) --> ["bonito"].
adjetivo(adj(adj2), f, plural) --> ["bonitas"].
adjetivo(adj(adj2), m, plural) --> ["bonitos"].
adjetivo(adj(adj3), f, singular) --> ["fea"].
adjetivo(adj(adj3), m, singular) --> ["feo"].
adjetivo(adj(adj3), f, plural) --> ["feas"].
adjetivo(adj(adj3), m, plural) --> ["feos"].