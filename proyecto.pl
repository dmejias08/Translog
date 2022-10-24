
oracion(S0,S,T0,T):- sintagma_nominal(NUM,_,PERS,S0,S1,T0,T1),
sintagma_verbal(NUM,_,PERS,S1,S,T1,T).
oracion(S0,S,T0,T):- pronombre(NUM,GEN,PERS,S0,S1,T0,T1),
sintagma_verbal(NUM,GEN,PERS,S1,S,T1,T).
%---------------------------------------------------------------
sintagma_nominal(NUM,GEN,PERS,S0,S,T0,T):-
determinante(NUM,GEN,PERS,S0,S1,T0,T1),
 nombre(NUM,GEN,S1,S,T1,T).
sintagma_nominal(NUM,GEN,PERS,S0,S,T0,T):-
determinante(NUM,GEN,PERS,S0,S1,T0,T1),
 nombre(NUM,GEN,S1,S2,T2,T),
 adjetivo(NUM,GEN,S2,S,T1,T2).
%---------------------------------------------------------------
sintagma_verbal(NUM,_,PERS,S0,S,T0,T):-
verbo(NUM,PERS,S0,S,T0,T).
sintagma_verbal(NUM,_,PERS,S0,S,T0,T):-
verbo(NUM,PERS,S0,S1,T0,T1),
sintagma_nominal(_,_,_,S1,S,T1,T).
%---------------------------------------------------------------
determinante(singular,masculino,tercera,[el|S],S,[the|T],T).
determinante(singular,femenino,tercera,[la|S],S,[the|T],T).
determinante(plural,masculino,tercera,[los|S],S,[the|T],T).
determinante(plural,femenino,tercera,[las|S],S,[the|T],T).
%---------------------------------------------------------------
nombre(singular,masculino,[hombre|S],S,[man|T],T).
nombre(plural,masculino,[hombres|S],S,[men|T],T).
nombre(singular,femenino,[manzana|S],S,[apple|T],T).
nombre(plural,femenino,[manzanas|S],S,[apples|T],T).
%---------------------------------------------------------------
verbo(singular,primera,[como|S],S,[eat|T],T).
verbo(plural,primera,[comemos|S],S,[eat|T],T).
verbo(singular,segunda,[comes|S],S,[eat|T],T).
verbo(plural,segunda,[comeis|S],S,[eat|T],T).
verbo(singular,tercera,[come|S],S,[eats|T],T).
verbo(plural,tercera,[comen|S],S,[eat|T],T).
%---------------------------------------------------------------
adjetivo(singular,masculino,[pequenyo|S],S,[little|T],T).
adjetivo(singular,femenino,[pequenya|S],S,[little|T],T).
adjetivo(plural,masculino,[pequenyos|S],S,[little|T],T).
adjetivo(plural,femenino,[pequenyas|S],S,[little|T],T).
%---------------------------------------------------------------
pronombre(singular,_,primera,[yo|S],S,[i|T],T).
pronombre(singular,_,segunda,[tu|S],S,[you|T],T).
pronombre(singular,masculino,tercera,[el|S],S,[he|T],T).
pronombre(singular,femenino,tercera,[ella|S],S,[she|T],T).
pronombre(plural,masculino,primera,[nosotros|S],S,[we|T],T).
pronombre(plural,masculino,segunda,[vosotros|S],S,[you|T],T).
pronombre(plural,masculino,tercera,[ellos|S],S,[they|T],T).
pronombre(plural,femenino,primera,[nosotras|S],S,[we|T],T).
pronombre(plural,femenino,segunda,[vosotras|S],S,[you|T],T).
pronombre(plural,femenino,tercera,[X|S],S,[Y|T],T):-traducir(X,Y).

traducir(ellas, they).
