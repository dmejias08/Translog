gretting(sal(f1), id1) --> ["hello"].
gretting(sal(f2), id2) --> ["hello"].

modifier(a(art)) --> ["the"].
modifier(a(art1)) --> ["a"].

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


subjet(suj(su1), singular, primera) --> ["i"].
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

noun(sus(s1),singular) --> ["stone"]. 
noun(sus(s2),singular) --> ["paper"]. 
noun(sus(s3),plural) --> ["scissors"]. 
noun(sus(s4), singular) --> ["pasta"]. 

verb(v(v1),singular) --> ["walks"].
verb(v(v2),plural) --> ["walk"].

verb(v(v3),singular) --> ["has"].
verb(v(v4),plural) --> ["have"].

verb(v(v5), singular) --> ["runs"].
verb(v(v6), plural) --> ["run"].

begin_sign(si(si1)) --> [""].
begin_sign(si(si2)) --> [" "].
end_sign(sf(sf1)) --> ["!"].
end_sign(sf(sf2)) --> ["?"].
end_sign(sf(sf3)) --> ["."].