:-style_check(-singleton).

% Se agrega archivo de gramatica libre de contexto
:-[gramatica].

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Integracion de translog con ambas gramaticas en ingles y español
% En esta regla se requeiere ejecuturar una regla mas 
% que indica el lenguaje que se va a tratar                
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

translog():-
    writeln("Para traducir en ingles digite: 1. / To translate in spanish write 2. / To quit write 3 / Para finalizar digite 3."),
    read(LENGUAJE),
    translog_lenguaje(LENGUAJE).

% Ayuda a clasificar los statements entre ingles e español 
clasificacion(X,Y):- X==Y.

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Integracion de translog con idioma español
% para traducir a ingles
% translog_lenguaje(LENGUAJE)
% LENGUAJE : el numero que indico el usuario
% si LENGUAJE = 1 entonces es español               
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

translog_lenguaje(LENGUAJE):-
    clasificacion(LENGUAJE,1),
    writeln("Escriba frase"),
    read(FRASE),
    string_lower(FRASE, FRASE_MIN),
    split_string(FRASE_MIN, " ", " ", LIST),
    phrase(oracion(A), LIST),
    phrase(sentence(A), RESULT),
    atomic_list_concat(RESULT, " ", ATOM),
    atom_string(ATOM, String),
    write("translog: "),
    writeln(String),
    translog().

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Integracion de translog con idioma ingles 
% para traducir a español
% translog_lenguaje(LENGUAJE)
% LENGUAJE : el numero que indico el usuario
% si LENGUAJE = 2 entonces es ingles              
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

translog_lenguaje(LENGUAJE):-
    clasificacion(LENGUAJE,2),
    writeln("Write down phrase"),
    read(FRASE),
    string_lower(FRASE, FRASE_MIN),
    split_string(FRASE_MIN, " ", " ", LIST),
    phrase(sentence(A), LIST),  
    phrase(oracion(A), RESULT),
    atomic_list_concat(RESULT, " ", ATOM),
    atom_string(ATOM, String),
    write("translog: "),
    writeln(String),
    translog().

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Condicion de finalizacion
% translog_lenguaje(LENGUAJE)
% LENGUAJE : el numero que indico el usuario
% si LENGUAJE = 3 entonces termina el programa            
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

translog_lenguaje(LENGUAJE):-
    clasificacion(LENGUAJE,3),
    writeln("Thank you, bye / Gracias, chao").


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Regla general en caso de que las anteriores sean falsas
% translog_lenguaje(LENGUAJE)
% LENGUAJE : el numero que indico el usuario
% en este caso lenguaje esta vacio o es un numero no reconocido             
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
translog_lenguaje(LENGUAJE):-
    writeln("We did not understand try again / No entendimos la consulta intente de nuevo"),
    translog().