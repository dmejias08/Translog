gretting(sal(f1)) --> ["hello"].
gretting(sal(f2)) --> ["hello"].
gretting(sal(f3)) --> ["dude"].
gretting(sal(f4)) --> ["bye"].
getting(sal(f5)) --> ["good"], gretting_aux().
gretting_aux() --> ["morning"].
gretting(sal(f6)) --> ["good"], gretting_aux1().
gretting_aux1() --> ["night"].

modifier(a(art)) --> ["the"].
modifier(a(art1)) --> ["a"].
modifier(a(art2)) --> ["some"].
modifier(a(art3)) --> ["that"].
modifier(a(art4)) --> ["those"].

auxiliarEsp(au(aux1)) --> ["how"].
auxiliar(au(aux2)) --> ["when"].
auxiliar(au(aux3)) --> ["what"].
auxiliar(au(aux4)) --> ["where"].
auxiliar(au(aux5)) --> ["why"].
auxiliar(au(aux6)) --> ["which"].

quantifiers(quant(qt1)) --> ["much"].
quantifiers(quant(qt2)) --> ["many"].
quantifiers(quant(qt3)) --> ["old"].

tobe(t(tb1), singular, primera) --> ["am"].
tobe(t(tb2), plural, _) --> ["are"].
tobe(t(tb3), singular,_) --> ["is"].

subjet(suj(su1), _, primera) --> ["i"].
subjet(suj(su2), plural, primera) --> ["we"].
subjet(suj(su3), _, second ) --> ["you"].
subjet(suj(su4), plural, tercera) --> ["they"].
subjet(suj(su5), singular, tercera) --> ["she"].
subjet(suj(su6), singular, tercera) --> ["he"].
subjet(suj(su7), singular, tercera) --> ["it"].
subjet(suj(su8), singular, tercera) --> ["this"].
subjet(suj(su9), singular, tercera) --> ["that"].
subjet(suj(su10), plural, tercera) --> ["these"].
subjet(suj(su11), plural, tercera) --> ["those"].

pronoun(suj(su1), _) --> ["mine"].
pronoun(suj(su2), plural) --> ["ours"].
pronoun(suj(su3), plural) --> ["yours"].
pronoun(suj(su4), plural) --> ["them"].
pronoun(suj(su5), singular) --> ["hers"].
pronoun(suj(su6), singular) --> ["his"].

noun(sus(s1),singular) --> ["school"]. 
noun(sus(s2),singular) --> ["book"]. 
noun(sus(s3),plural) --> ["dogs"]. 
noun(sus(s4), singular) --> ["pasta"]. 
noun(sus(s5), singular) --> ["shirt"]. 
noun(sus(s6),plural) --> ["books"]. 

verb(v(v1),singular) --> ["walks"].
verb(v(v2),plural) --> ["walk"].

verb(v(v3),singular) --> ["has"].
verb(v(v4),plural) --> ["have"].

verb(v(v5), singular) --> ["runs"].
verb(v(v6), plural) --> ["run"].

verb(v(v7), singular) --> ["is"].
verb(v(v6), plural) --> ["are"].

begin_sign(si(si1)) --> [""].
begin_sign(si(si2)) --> [" "].
end_sign(sf(sf1)) --> ["!"].
end_sign(sf(sf2)) --> ["?"].
end_sign(sf(sf3)) --> ["."].

preposition(p(p1)) --> ["to"].
preposition(p(p2)) --> ["until"].
preposition(p(p3)) --> ["with"].
preposition(p(p4)) --> ["of"].
preposition(p(p5)) --> ["on"].
preposition(p(p6)) --> ["about"].

adjective(adj(adj1)) --> ["red"].
adjective(adj(adj2)) --> ["pretty"].
adjective(adj(adj3)) --> ["ugly"].
