:-[gramatica].

%Integracion 

consulta():-
    writeln("Para traducir en ingles digite 1 / To translate in spanish write 2 "),
    read(LENGUAJE),
    consulta_leng(LENGUAJE).

not(consulta_leng()):- write("Hello").

clasificacion(X,Y):- X==Y.

% Español a ingles
consulta_leng(LENGUAJE):-
    clasificacion(LENGUAJE,1),
    writeln("Escriba frase"),
    read(FRASE),
    string_lower(FRASE, FRASE_MIN),
    split_string(FRASE_MIN, " ", " ", LIST),
    phrase(oracion(A), LIST),
    phrase(sentence(A), RESULT),
    atomic_list_concat(RESULT, " ", ATOM),
    atom_string(ATOM, String),
    write(String), !.

% Ingles a español
consulta_leng(LENGUAJE):-
    clasificacion(LENGUAJE,2),
    writeln("Write down phrase"),
    read(FRASE),
    string_lower(FRASE, FRASE_MIN),
    split_string(FRASE_MIN, " ", " ", LIST),
    phrase(sentence(A), LIST),
    phrase(oracion(A), RESULT),
    atomic_list_concat(RESULT, " ", ATOM),
    atom_string(ATOM, String),
    write(String), !.
        