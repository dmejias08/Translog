%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Esta sección correspone los saludos
% del idioma español
% saludo(IDEN)    
% IDEN: Id  para ese saludo                
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

saludo(sal(f1)) --> ["pura"], saludo_auxiliar(ID). 
saludo_auxiliar(id1) --> ["vida"]. 
saludo(sal(f2)) --> ["hola"]. 
saludo(sal(f3)) --> ["mae"]. 
saludo(sal(f4)) --> ["adios"]. 
saludo(sal(f5)) --> ["buenos"], saludo_auxiliar1(ID). 
saludo_auxiliar1(id1) --> ["dias"]. 
saludo(sal(f6)) --> ["buenas"], saludo_auxiliar2(ID).
saludo_auxiliar2(id1) --> ["noches"].

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Esta sección correspone los articulos
% del idioma español
% articulos(IDEN, GEN, NUM)     
% IDEN: Id  para ese articulo
% GEN: género
% NUM: singular o plural                     
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

articulo(a(art),f,singular) --> ["la"]. 
articulo(a(art),m,singular) --> ["el"]. 
articulo(a(art),f,plural) --> ["las"]. 
articulo(a(art),m,plural) --> ["los"]. 
articulo(a(art1),f,singular) --> ["una"]. 
articulo(a(art1),m,singular) --> ["un"]. 
articulo(a(art2),f,plural) --> ["unas"]. 
articulo(a(art2),m,plural) --> ["unos"]. 
articulo(a(art3),f,singular) --> ["esa"]. 
articulo(a(art3),m,singular) --> ["eso"]. 
articulo(a(art4),f,plural) --> ["esas"]. 
articulo(a(art4),m,plural) --> ["esos"]. 

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Esta sección correspone los sujetos
% del idioma español
% sujeto(IDEN, GEN, PERS, NUM)     
% IDEN: Id  para ese sujeto
% GEN: género
% PERS: persona 
% NUM: singular o plural                     
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

sujeto(suj(su1), _, primera, _) --> ["yo"]. 
sujeto(suj(su2), f, primera, plural) --> ["nosotras"]. 
sujeto(suj(su2), m, primera, plural) --> ["nosotros"]. 

sujeto(suj(su3), _, segunda, singular) --> ["usted"]. 
sujeto(suj(su3), _, segunda, plural) --> ["ustedes"]. 

sujeto(suj(su5), f, tercera, singular) --> ["ella"]. 
sujeto(suj(su6), m, tercera, singular) --> ["él"]. 
sujeto(suj(su4), f, tercera, plural) --> ["ellas"]. 
sujeto(suj(su4), m, tercera, plural) --> ["ellos"]. 

sujeto(suj(su7), _, tercera, singular) --> [""].

sujeto(suj(su8), m, tercera, singular) --> ["esto"].
sujeto(suj(su8), f, tercera, singular) --> ["esta"].

sujeto(suj(su9), m, tercera, singular) --> ["eso"].
sujeto(suj(su9), f, tercera, singular) --> ["esa"].

sujeto(suj(su10), m, tercera, plural) --> ["estos"].
sujeto(suj(su10), f, tercera, plural) --> ["estas"].

sujeto(suj(su11), m, tercera, plural) --> ["esos"]. 
sujeto(suj(su11), f, tercera, plural) --> ["esas"].

sujeto(suj(su12), _, tercera, singular) --> ["diana"].
sujeto(suj(su13), _, tercera, singular) --> ["martinez"].
sujeto(suj(su14), _, tercera, singular) --> ["kenichi"].
sujeto(suj(su15), _, tercera, singular) --> ["garcia"].
sujeto(suj(su16), _, tercera, singular) --> ["jesus"].
sujeto(suj(su17), _, tercera, singular) --> ["costa rica"].
sujeto(suj(su18), _, tercera, singular) --> ["cartago"].
sujeto(suj(su19), _, tercera, singular) --> ["anuel"].
sujeto(suj(su20), _, tercera, singular) --> ["badbunny"].
sujeto(suj(su21), _, tercera, singular) --> ["messi"].
sujeto(suj(su22), _, tercera, singular) --> ["cristiano"].
sujeto(suj(su23), _, tercera, singular) --> ["google"].
sujeto(suj(su24), _, tercera, singular) --> ["samsung"].
sujeto(suj(su25), _, tercera, singular) --> ["papá"].
sujeto(suj(su26), _, tercera, singular) --> ["mamá"].

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Esta sección correspone los sustantivos
% del idioma español
% sustantivo(IDEN, GEN, PERS, NUM)     
% IDEN: Id  para ese sustivo
% GEN: género
% PERS: persona 
% NUM: singular o plural                     
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

sustantivo(sus(s1), m, tercera, singular) --> ["dios"]. 
sustantivo(sus(s2), m, tercera, singular) --> ["codo"]. 
sustantivo(sus(s3), m, tercera, singular) --> ["libro"]. 
sustantivo(sus(s4), m, tercera, singular) --> ["perro"]. 
sustantivo(sus(s5), m, tercera, singular) --> ["gato"]. 
sustantivo(sus(s6), m, tercera, singular) --> ["brazo"]. 
sustantivo(sus(s7), m, tercera, singular) --> ["edificio"]. 
sustantivo(sus(s8), m, tercera, singular) --> ["pelo"]. 
sustantivo(sus(s9), m, tercera, singular) --> ["bombillo"].

sustantivo(sus(s10), f, tercera, singular) --> ["mesa"]. 
sustantivo(sus(s11), f, tercera, singular) --> ["vida"]. 
sustantivo(sus(s12), f, tercera, singular) --> ["escuela"]. 
sustantivo(sus(s13), f, tercera, singular) --> ["comida"].
sustantivo(sus(s14), f, tercera, singular) --> ["camisa"].
sustantivo(sus(s15), f, tercera, singular) --> ["botella"]. 
sustantivo(sus(s16), f, tercera, singular) --> ["pajilla"]. 
sustantivo(sus(s17), f, tercera, singular) --> ["vaca"]. 
sustantivo(sus(s18), f, tercera, singular) --> ["luz"]. 

sustantivo(sus(s19), m, tercera, plural) --> ["tractores"]. 
sustantivo(sus(s20), m, tercera, plural) --> ["perros"]. 
sustantivo(sus(s21), m, tercera, plural) --> ["libros"]. 
sustantivo(sus(s22), m, tercera, plural) --> ["hombres"]. 
sustantivo(sus(s23), m, tercera, plural) --> ["actores"]. 
sustantivo(sus(s24), m, tercera, plural) --> ["diamantes"]. 
sustantivo(sus(s25), m, tercera, plural) --> ["jugadores"]. 
sustantivo(sus(s26), m, tercera, plural) --> ["anillos"]. 
sustantivo(sus(s27), m, tercera, plural) --> ["cables"]. 

sustantivo(sus(s28), f, tercera, plural) --> ["cucharas"].
sustantivo(sus(s29), f, tercera, plural) --> ["mujeres"]. 
sustantivo(sus(s30), f, tercera, plural) --> ["pastillas"]. 
sustantivo(sus(s31), f, tercera, plural) --> ["materias"]. 
sustantivo(sus(s32), f, tercera, plural) --> ["fiestas"]. 
sustantivo(sus(s33), f, tercera, plural) --> ["banderas"]. 
sustantivo(sus(s34), f, tercera, plural) --> ["calculadoras"]. 
sustantivo(sus(s35), f, tercera, plural) --> ["postales"]. 

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Esta sección correspone los verbos
% del idioma español
% verbo(IDEN, PERS, NUM)
% IDEN: Id para ese verbo
% PERS: persona 
% NUM: singular o plural                     
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

verbo(v(v2), primera, singular) --> ["camino"]. % Yo
verbo(v(v2), primera, plural) --> ["caminamos"]. % Nosotros / Nosotras
verbo(v(v2), segunda, singular) --> ["camina"]. % Usted (no se toma Vos / Tu)
verbo(v(v2), segunda, plural) --> ["caminan"]. % Ustedes (no se toma Vosotros)
verbo(v(v2), tercera, plural) --> ["caminan"]. % Ellos / Ellas
verbo(v(v1), tercera, singular) --> ["camina"]. % El / Ella

verbo(v(v4), primera, singular) --> ["tengo"]. % Yo
verbo(v(v4), primera, plural) --> ["tenemos"]. % Nosotros / Nosotras
verbo(v(v4), segunda, singular) --> ["tiene"]. % Usted (no se toma Vos / Tu)
verbo(v(v4), segunda, plural) --> ["tienen"]. % Ustedes (no se toma Vosotros)
verbo(v(v4), tercera, plural) --> ["tienen"]. % Ellos / Ellas
verbo(v(v3), tercera, singular) --> ["tiene"]. % El / Ella

verbo(v(v6), primera, singular) --> ["corro"]. % Yo
verbo(v(v6), primera, plural) --> ["corremos"]. % Nosotros / Nosotras
verbo(v(v6), segunda, singular) --> ["corre"]. % Usted (no se toma Vos / Tu)
verbo(v(v6), segunda, plural) --> ["corren"]. % Ustedes (no se toma Vosotros)
verbo(v(v6), tercera, plural) --> ["corren"]. % Ellos / Ellas
verbo(v(v5), tercera, singular) --> ["corre"]. % El / Ella

verbo(v(v8), primera, singular) --> ["soy"]. % Yo
verbo(v(v8), primera, plural) --> ["somos"]. % Nosotros / Nosotras
verbo(v(v8), segunda, singular) --> ["es"]. % Usted (no se toma Vos / Tu)
verbo(v(v8), segunda, plural) --> ["son"]. % Ustedes (no se toma Vosotros)
verbo(v(v8), tercera, plural) --> ["son"]. % Ellos / Ellas
verbo(v(v7), tercera, singular) --> ["es"]. % El / Ella

verbo(v(v10), primera, singular) --> ["voy"]. % Yo
verbo(v(v10), primera, plural) --> ["vamos"]. % Nosotros / Nosotras
verbo(v(v10), segunda, singular) --> ["va"]. % Usted (no se toma Vos / Tu)
verbo(v(v10), segunda, plural) --> ["van"]. % Ustedes (no se toma Vosotros)
verbo(v(v10), tercera, plural) --> ["van"]. % Ellos / Ellas
verbo(v(v9), tercera, singular) --> ["va"]. % El / Ella

verbo(v(v12), primera, singular) --> ["abro"]. % Yo
verbo(v(v12), primera, plural) --> ["abrimos"]. % Nosotros / Nosotras
verbo(v(v12), segunda, singular) --> ["abre"]. % Usted (no se toma Vos / Tu)
verbo(v(v12), segunda, plural) --> ["abren"]. % Ustedes (no se toma Vosotros)
verbo(v(v12), tercera, plural) --> ["abren"]. % Ellos / Ellas
verbo(v(v11), tercera, singular) --> ["abre"]. % El / Ella

verbo(v(v14), primera, singular) --> ["bebo"]. % Yo
verbo(v(v14), primera, plural) --> ["bebemos"]. % Nosotros / Nosotras
verbo(v(v14), segunda, singular) --> ["bebe"]. % Usted (no se toma Vos / Tu)
verbo(v(v14), segunda, plural) --> ["beben"]. % Ustedes (no se toma Vosotros)
verbo(v(v14), tercera, plural) --> ["beben"]. % Ellos / Ellas
verbo(v(v13), tercera, singular) --> ["bebe"]. % El / Ella

verbo(v(v16), primera, singular) --> ["como"]. % Yo
verbo(v(v16), primera, plural) --> ["comemos"]. % Nosotros / Nosotras
verbo(v(v16), segunda, singular) --> ["come"]. % Usted (no se toma Vos / Tu)
verbo(v(v16), segunda, plural) --> ["comen"]. % Ustedes (no se toma Vosotros)
verbo(v(v16), tercera, plural) --> ["comen"]. % Ellos / Ellas
verbo(v(v15), tercera, singular) --> ["come"]. % El / Ella

verbo(v(v18), primera, singular) --> ["digo"]. % Yo
verbo(v(v18), primera, plural) --> ["decimos"]. % Nosotros / Nosotras
verbo(v(v18), segunda, singular) --> ["dice"]. % Usted (no se toma Vos / Tu)
verbo(v(v18), segunda, plural) --> ["dicen"]. % Ustedes (no se toma Vosotros)
verbo(v(v18), tercera, plural) --> ["dicen"]. % Ellos / Ellas
verbo(v(v17), tercera, singular) --> ["dice"]. % El / Ella

verbo(v(v20), primera, singular) --> ["escribo"]. % Yo
verbo(v(v20), primera, plural) --> ["escribimos"]. % Nosotros / Nosotras
verbo(v(v20), segunda, singular) --> ["escribe"]. % Usted (no se toma Vos / Tu)
verbo(v(v20), segunda, plural) --> ["escriben"]. % Ustedes (no se toma Vosotros)
verbo(v(v20), tercera, plural) --> ["escriben"]. % Ellos / Ellas
verbo(v(v19), tercera, singular) --> ["escribe"]. % El / Ella

verbo(v(v22), primera, singular) --> ["aprendo"]. % Yo
verbo(v(v22), primera, plural) --> ["aprendemos"]. % Nosotros / Nosotras
verbo(v(v22), segunda, singular) --> ["aprende"]. % Usted (no se toma Vos / Tu)
verbo(v(v22), segunda, plural) --> ["aprenden"]. % Ustedes (no se toma Vosotros)
verbo(v(v22), tercera, plural) --> ["aprenden"]. % Ellos / Ellas
verbo(v(v21), tercera, singular) --> ["aprende"]. % El / Ella

verbo(v(v24), primera, singular) --> ["hago"]. % Yo
verbo(v(v24), primera, plural) --> ["hacemos"]. % Nosotros / Nosotras
verbo(v(v24), segunda, singular) --> ["hace"]. % Usted (no se toma Vos / Tu)
verbo(v(v24), segunda, plural) --> ["hacen"]. % Ustedes (no se toma Vosotros)
verbo(v(v24), tercera, plural) --> ["hacen"]. % Ellos / Ellas
verbo(v(v23), tercera, singular) --> ["hace"]. % El / Ella

verbo(v(v26), primera, singular) --> ["juego"]. % Yo
verbo(v(v26), primera, plural) --> ["jugamos"]. % Nosotros / Nosotras
verbo(v(v26), segunda, singular) --> ["juega"]. % Usted (no se toma Vos / Tu)
verbo(v(v26), segunda, plural) --> ["juegan"]. % Ustedes (no se toma Vosotros)
verbo(v(v26), tercera, plural) --> ["juegan"]. % Ellos / Ellas
verbo(v(v25), tercera, singular) --> ["juega"]. % El / Ella

verbo(v(v28), primera, singular) --> ["leo"]. % Yo
verbo(v(v28), primera, plural) --> ["leemos"]. % Nosotros / Nosotras
verbo(v(v28), segunda, singular) --> ["lee"]. % Usted (no se toma Vos / Tu)
verbo(v(v28), segunda, plural) --> ["leen"]. % Ustedes (no se toma Vosotros)
verbo(v(v28), tercera, plural) --> ["leen"]. % Ellos / Ellas
verbo(v(v27), tercera, singular) --> ["lee"]. % El / Ella

verbo(v(v30), primera, singular) --> ["pago"]. % Yo
verbo(v(v30), primera, plural) --> ["pagamos"]. % Nosotros / Nosotras
verbo(v(v30), segunda, singular) --> ["paga"]. % Usted (no se toma Vos / Tu)
verbo(v(v30), segunda, plural) --> ["pagan"]. % Ustedes (no se toma Vosotros)
verbo(v(v30), tercera, plural) --> ["pagan"]. % Ellos / Ellas
verbo(v(v31), tercera, singular) --> ["paga"]. % El / Ella

verbo(v(v32), primera, singular) --> ["pienso"]. % Yo
verbo(v(v32), primera, plural) --> ["pensamos"]. % Nosotros / Nosotras
verbo(v(v32), segunda, singular) --> ["piensa"]. % Usted (no se toma Vos / Tu)
verbo(v(v32), segunda, plural) --> ["piensan"]. % Ustedes (no se toma Vosotros)
verbo(v(v32), tercera, plural) --> ["piensan"]. % Ellos / Ellas
verbo(v(v31), tercera, singular) --> ["piensa"]. % El / Ella

verbo(v(v34), primera, singular) --> ["quiero"]. % Yo
verbo(v(v34), primera, plural) --> ["queremos"]. % Nosotros / Nosotras
verbo(v(v34), segunda, singular) --> ["quiere"]. % Usted (no se toma Vos / Tu)
verbo(v(v34), segunda, plural) --> ["quieren"]. % Ustedes (no se toma Vosotros)
verbo(v(v34), tercera, plural) --> ["quieren"]. % Ellos / Ellas
verbo(v(v33), tercera, singular) --> ["quiere"]. % El / Ella

verbo(v(v36), primera, singular) --> ["se"]. % Yo
verbo(v(v36), primera, plural) --> ["sabemos"]. % Nosotros / Nosotras
verbo(v(v36), segunda, singular) --> ["sabe"]. % Usted (no se toma Vos / Tu)
verbo(v(v36), segunda, plural) --> ["saben"]. % Ustedes (no se toma Vosotros)
verbo(v(v36), tercera, plural) --> ["saben"]. % Ellos / Ellas
verbo(v(v35), tercera, singular) --> ["sabe"]. % El / Ella

verbo(v(v38), primera, singular) --> ["siento"]. % Yo
verbo(v(v38), primera, plural) --> ["sentimos"]. % Nosotros / Nosotras
verbo(v(v38), segunda, singular) --> ["siente"]. % Usted (no se toma Vos / Tu)
verbo(v(v38), segunda, plural) --> ["sienten"]. % Ustedes (no se toma Vosotros)
verbo(v(v38), tercera, plural) --> ["sienten"]. % Ellos / Ellas
verbo(v(v37), tercera, singular) --> ["siente"]. % El / Ella

verbo(v(v40), primera, singular) --> ["veo"]. % Yo
verbo(v(v40), primera, plural) --> ["vemos"]. % Nosotros / Nosotras
verbo(v(v40), segunda, singular) --> ["ve"]. % Usted (no se toma Vos / Tu)
verbo(v(v40), segunda, plural) --> ["ven"]. % Ustedes (no se toma Vosotros)
verbo(v(v40), tercera, plural) --> ["ven"]. % Ellos / Ellas
verbo(v(v39), tercera, singular) --> ["ve"]. % El / Ella

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Esta sección correspone los signos de puntuacion iniciales
% del idioma español
% signo_inicio(IDEN)
% IDEN: Id para ese signo de puntuacion               
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

signo_inicio(si(si1)) --> ["¡"].
signo_inicio(si(si2)) --> ["¿"].

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Esta sección correspone los signos de puntuacion finales
% del idioma español
% signo_finalizacion(IDEN)
% IDEN: Id para ese signo de puntuacion               
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

signo_finalizacion(sf(sf1)) --> ["!"].
signo_finalizacion(sf(sf2)) --> ["?"].
signo_finalizacion(sf(sf3)) --> ["."].

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Esta sección correspone las preposiciones
% del idioma español
% preposiciones(IDEN)
% IDEN: Id para esa preposicion                 
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

preposiciones(p(p1)) --> ["hacia"].
preposiciones(p(p2)) --> ["hasta"].
preposiciones(p(p3)) --> ["con"].
preposiciones(p(p4)) --> ["de"].
preposiciones(p(p5)) --> ["en"].
preposiciones(p(p6)) --> ["sobre"].

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Esta sección correspone los adjetivos
% del idioma español
% adjetivo(IDEN, GEN, NUM)     
% IDEN: Id  para ese adjetivo
% GEN: género
% NUM: singular o plural                     
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

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