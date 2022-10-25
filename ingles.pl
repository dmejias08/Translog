gretting(sal(f1), id1) --> ["hello"].
gretting(sal(f2), id2) --> ["hello"].

modifier(a(art)) --> ["the"].
modifier(a(art1)) --> ["a"].
modifier(a(art2)) --> ["some"].
modifier(a(art3)) --> ["that"].
modifier(a(art4)) --> ["those"].

subjet(suj(su1), _) --> ["i"].
subjet(suj(su2), plural) --> ["we"].
subjet(suj(su3), plural) --> ["you"].
subjet(suj(su4), plural) --> ["they"].
subjet(suj(su5), singular) --> ["she"].
subjet(suj(su6), singular) --> ["he"].

pronoun(suj(su1), _) --> ["mine"].
pronoun(suj(su2), plural) --> ["our"].
pronoun(suj(su3), plural) --> ["yours"].
pronoun(suj(su4), plural) --> ["them"].
pronoun(suj(su5), singular) --> ["her"].
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
