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