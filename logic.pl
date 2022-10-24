:-[gramatica].


%Integracion 

consulta():-
    write("Para traducir en ingles digite 1 / To translate in spanish write 2 "),
    read(LENGUAJE),
    consulta_leng(LENGUAJE).


clasificacion(X,Y):- X==Y.


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
    write(String).

consulta_leng(LENGUAJE):-
    clasificacion(LENGUAJE,2),
    write("Write down phrase"),
    read(FRASE),
    string_lower(FRASE, FRASE_MIN),
    split_string(FRASE_MIN, " ", " ", LIST),
    phrase(sentence(A), LIST),
    phrase(oracion(A), RESULT),
    atomic_list_concat(RESULT, " ", ATOM),
    atom_string(ATOM, String),
    write(String).
        