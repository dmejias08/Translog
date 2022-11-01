:-style_check(-singleton).

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Esta sección correspone los saludos
% del idioma ingles
% gretting(IDEN)    
% IDEN: Id  para ese saludo                
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

gretting(sal(f1)) --> ["hello"].
gretting(sal(f2)) --> ["hello"].
gretting(sal(f3)) --> ["dude"].
gretting(sal(f4)) --> ["bye"].
gretting(sal(f5)) --> ["good"], gretting_aux().
gretting(sal(f6)) --> ["good"], gretting_aux1().

gretting_aux() --> ["morning"].
gretting_aux1() --> ["night"].

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Esta sección correspone los determinantes
% del idioma ingles
% modifier(IDEN)    
% IDEN: Id  para ese determinante                 
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

modifier(a(art)) --> ["the"]. % modifier? -> determiner
modifier(a(art1)) --> ["a"].
modifier(a(art2)) --> ["some"].
modifier(a(art3)) --> ["that"].
modifier(a(art4)) --> ["those"].

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Esta sección correspone los auxiliares
% del idioma ingles
% auxiliar(IDEN)    
% IDEN: Id  para ese auxiliar                 
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

auxiliar(au(aux)) --> ["how"].
auxiliar(au(aux1)) --> ["how"], auxiliar_auxiliar1(ID).
auxiliar(au(aux2)) --> ["how"], auxiliar_auxiliar2(ID).
auxiliar(au(aux4)) --> ["when"].
auxiliar(au(aux5)) --> ["what"].
auxiliar(au(aux6)) --> ["where"].
auxiliar(au(aux7)) --> ["why"].
auxiliar(au(aux8)) --> ["which"].
auxiliar(au(aux9)) --> ["who"].
auxiliar_auxiliar1(id1) -->["much"].
auxiliar_auxiliar2(id1) -->["many"].

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Esta sección correspone al caso especial del verbo To Be
% del idioma ingles
% tobe(IDEN, PERS, NUM)      
% IDEN: Id  para ese verbo
% PERS: persona 
% NUM: singular o plural                   
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

tobe(t(tb1), singular, primera) --> ["am"].
tobe(t(tb2), plural, _) --> ["are"].
tobe(t(tb3), singular,_) --> ["is"].

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Esta sección correspone los indicadores de lugar
% del idioma ingles
% modifier(IDEN)    
% IDEN: Id  para ese determinante                 
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
indicator(in(ind1)) --> ["there"].
indicator(in(ind2)) --> ["here"].

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Esta sección correspone a los sujetos
% del idioma ingles
% subjet(IDEN, PERS, NUM)      
% IDEN: Id  para ese sujeto
% PERS: persona 
% NUM: singular o plural                   
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

subjet(suj(su1), _, primera) --> ["i"].
subjet(suj(su2), plural, primera) --> ["we"].
subjet(suj(su3), plural, segunda ) --> ["you"].
subjet(suj(su4), plural, tercera) --> ["they"].
subjet(suj(su5), singular, tercera) --> ["she"].
subjet(suj(su6), singular, tercera) --> ["he"].
subjet(suj(su7), singular, tercera) --> ["it"].
subjet(suj(su8), singular, tercera) --> ["this"].
subjet(suj(su9), singular, tercera) --> ["that"].
subjet(suj(su10), plural, tercera) --> ["these"].
subjet(suj(su11), plural, tercera) --> ["those"].

subjet(suj(su12), singular, tercera) --> ["diana"].
subjet(suj(su13), singular, tercera) --> ["martinez"].
subjet(suj(su14), singular, tercera) --> ["kenichi"].
subjet(suj(su15), singular, tercera) --> ["garcia"].
subjet(suj(su16), singular, tercera) --> ["jesus"].
subjet(suj(su17), singular, tercera) --> ["costa rica"].
subjet(suj(su18), singular, tercera) --> ["cartago"].
subjet(suj(su19), singular, tercera) --> ["anuel"].
subjet(suj(su20), singular, tercera) --> ["badbunny"].
subjet(suj(su21), singular, tercera) --> ["messi"].
subjet(suj(su22), singular, tercera) --> ["cristiano"].
subjet(suj(su23), singular, tercera) --> ["google"].
subjet(suj(su24), singular, tercera) --> ["samsung"].
subjet(suj(su25), singular, tercera) --> ["papá"].
subjet(suj(su26), singular, tercera) --> ["mamá"].

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Esta sección correspone a los pronombres posesivos
% del idioma ingles
% pronoun(IDEN, PERS, NUM)      
% IDEN: Id  para ese pronombre
% PERS: persona 
% NUM: singular o plural                   
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

pronoun(suj(su1), _) --> ["mine"].
pronoun(suj(su2), plural) --> ["ours"].
pronoun(suj(su3), plural) --> ["yours"].
pronoun(suj(su4), plural) --> ["them"].
pronoun(suj(su5), singular) --> ["hers"].
pronoun(suj(su6), singular) --> ["his"].

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Esta sección correspone a los sustantivos
% del idioma ingles
% noun(IDEN, NUM)      
% IDEN: Id  para ese sustantivo
% NUM: singular o plural                   
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

noun(sus(s1), singular) --> ["god"]. 
noun(sus(s2), singular) --> ["elbow"]. 
noun(sus(s3), singular) --> ["book"]. 
noun(sus(s4), singular) --> ["dog"]. 
noun(sus(s5), singular) --> ["cat"]. 
noun(sus(s6), singular) --> ["arm"]. 
noun(sus(s7), singular) --> ["building"]. 
noun(sus(s8), singular) --> ["hair"]. 
noun(sus(s9), singular) --> ["lightbulb"].

noun(sus(s10), singular) --> ["table"]. 
noun(sus(s11), singular) --> ["live"]. 
noun(sus(s12), singular) --> ["school"]. 
noun(sus(s13), singular) --> ["food"].
noun(sus(s14), singular) --> ["shirt"].
noun(sus(s15), singular) --> ["bottle"]. 
noun(sus(s16), singular) --> ["straw"]. 
noun(sus(s17), singular) --> ["cow"]. 
noun(sus(s18), singular) --> ["light"]. 

noun(sus(s19), plural) --> ["tractors"]. 
noun(sus(s20), plural) --> ["dogs"]. 
noun(sus(s21), plural) --> ["books"]. 
noun(sus(s22), plural) --> ["men"]. 
noun(sus(s23), plural) --> ["actors"]. 
noun(sus(s24), plural) --> ["diamonds"]. 
noun(sus(s25), plural) --> ["players"]. 
noun(sus(s26), plural) --> ["rings"]. 
noun(sus(s27), plural) --> ["cables"]. 

noun(sus(s28), plural) --> ["spoons"].
noun(sus(s29), plural) --> ["women"]. 
noun(sus(s30), plural) --> ["pills"]. 
noun(sus(s31), plural) --> ["subjects"]. 
noun(sus(s32), plural) --> ["parties"]. 
noun(sus(s33), plural) --> ["flags"]. 
noun(sus(s34), plural) --> ["calculators"]. 
noun(sus(s35), plural) --> ["stickers"]. 

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Esta sección correspone a los verbos
% del idioma ingles
% verb(IDEN, NUM)      
% IDEN: Id  para ese verbo
% NUM: singular o plural                   
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

verb(v(v1),singular) --> ["walks"]. % He /  She / It
verb(v(v2),plural) --> ["walk"]. % I / You / They /  We  

verb(v(v3),singular) --> ["has"]. % He /  She / It
verb(v(v4),plural) --> ["have"]. % I / You / They /  We 

verb(v(v5), singular) --> ["runs"]. % He /  She / It
verb(v(v6), plural) --> ["run"]. % I / You / They /  We 

verb(v(v7), singular) --> ["is"]. % He /  She / It
verb(v(v8), plural) --> ["are"]. % I / You / They /  We 

verb(v(v9), singular) --> ["goes"]. % He /  She / It
verb(v(v10), plural) --> ["go"]. % I / You / They /  We 

verb(v(v11), singular) --> ["opens"]. % He /  She / It
verb(v(v12), plural) --> ["open"]. % I / You / They /  We 

verb(v(v13), singular) --> ["drinks"]. % He /  She / It
verb(v(v14), plural) --> ["drink"]. % I / You / They /  We 

verb(v(v15), singular) --> ["eats"]. % He /  She / It
verb(v(v16), plural) --> ["eat"]. % I / You / They /  We 

verb(v(v17), singular) --> ["says"]. % He /  She / It
verb(v(v18), plural) --> ["say"]. % I / You / They /  We 

verb(v(v19), singular) --> ["writes"]. % He /  She / It
verb(v(v20), plural) --> ["write"]. % I / You / They /  We 

verb(v(v21), singular) --> ["learns"]. % He /  She / It
verb(v(v22), plural) --> ["learn"]. % I / You / They /  We 

verb(v(v23), singular) --> ["does"]. % He /  She / It
verb(v(v24), plural) --> ["doe"]. % I / You / They /  We 

verb(v(v25), singular) --> ["plays"]. % He /  She / It
verb(v(v26), plural) --> ["play"]. % I / You / They /  We 

verb(v(v27), singular) --> ["reads"]. % He /  She / It
verb(v(v28), plural) --> ["read"]. % I / You / They /  We 

verb(v(v29), singular) --> ["pays"]. % He /  She / It
verb(v(v30), plural) --> ["pay"]. % I / You / They /  We 

verb(v(v31), singular) --> ["thinks"]. % He /  She / It
verb(v(v32), plural) --> ["think"]. % I / You / They /  We 

verb(v(v33), singular) --> ["wants"]. % He /  She / It
verb(v(v34), plural) --> ["want"]. % I / You / They /  We 

verb(v(v35), singular) --> ["knows"]. % He /  She / It
verb(v(v36), plural) --> ["know"]. % I / You / They /  We 

verb(v(v37), singular) --> ["feels"]. % He /  She / It
verb(v(v38), plural) --> ["feel"]. % I / You / They /  We 

verb(v(v39), singular) --> ["sees"]. % He /  She / It
verb(v(v40), plural) --> ["see"]. % I / You / They /  We 

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Esta sección correspone a los signos de puntuacion iniciales
% del idioma ingles
% begin_sign(IDEN)      
% IDEN: Id  para ese signo de puntuacion
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

begin_sign(si(si1)) --> [""].
begin_sign(si(si2)) --> [" "].

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Esta sección correspone a los signos de puntuacion finales
% del idioma ingles
% end_sign(IDEN)      
% IDEN: Id  para ese signo de puntuacion
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

end_sign(sf(sf1)) --> ["!"].
end_sign(sf(sf2)) --> ["?"].
end_sign(sf(sf3)) --> ["."].

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Esta sección correspone a las preposiciones
% del idioma ingles
% preposition(IDEN)      
% IDEN: Id  para ese signo de preposicion
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

preposition(p(p1)) --> ["to"].
preposition(p(p2)) --> ["until"].
preposition(p(p3)) --> ["with"].
preposition(p(p4)) --> ["of"].
preposition(p(p5)) --> ["on"].
preposition(p(p6)) --> ["about"].

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Esta sección correspone a los adjetivos
% del idioma ingles
% adjective(IDEN)      
% IDEN: Id  para ese signo de adjetivo
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

adjective(adj(adj1)) --> ["red"].
adjective(adj(adj2)) --> ["pretty"].
adjective(adj(adj3)) --> ["ugly"].
