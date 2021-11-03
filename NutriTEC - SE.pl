% Se importan los archivos que contienen la base de datos y el BNF
:-consult('NutriTEC - BNF').
:-consult('NutriTEC - DataBase').
:-style_check(-singleton).


%******************************************************************************
%***********************    Operaciones basicas    ****************************
%******************************************************************************

% Descripción		:	Se verifica si una lista esta vacia
% Nombre de Hecho	:	lista_vacia([],X)
% Parámetro			:	lista a verificar, resultado
% Salida            :   boolean que indica si la lista esta vacia o no
lista_vacia(List, Empty) :-
    length(List, Len),
    (   Len =< 1
    ->  Empty = true
    ;   Empty = false
    ).

% Descripción		:	Se convierte el parametro a lista
% Nombre de Hecho	:	input_to_list(X)
% Parámetro			:	resultado
% Salida            :   entrada convertida en lista
input_to_list(L):-
	read_line_to_codes(user_input,Cs),
	atom_codes(A,Cs),
	atomic_list_concat(L,' ',A).

% Descripción		:	Se convierte la entrada a string
% Nombre de Hecho	:	input_to_string(X)
% Parámetro			:	resultado
% Salida            :   entrada convertida en string
input_to_string(A):-
	read_line_to_codes(user_input,Cs),
	atom_codes(A,Cs).

% Descripción		:	Se convierte la entrada a string
% Nombre de Hecho	:	list_to_string([],X)
% Parámetro			:	lista, resultado
% Salida            :   lista ingresada convertida en string
list_to_string(List, String):-
	atomic_list_concat(List, ' ', String).

% Descripción		:	Se convierte la entrada a lista
% Nombre de Hecho	:	string_to_list_of_atoms(X,[])
% Parámetro			:	string, resultado
% Salida            :   entrada convertida en lista
string_to_list_of_atoms(X,L):-
	atom_codes(X,A),
	atomic_list_concat(L,' ',X).

% Descripción		:	Se verifica si un elemento pertenece a la lista ingresada
% Nombre de Hecho	:	miembro(X,[])
% Parámetro			:	elemento, lista
% Salida            :   boolean que indica si el elemento pertenece a la lista dada
miembro(X,[X|_]).
miembro(X,[_|T]):-miembro(X,T).



%******************************************************************************
%******************************************************************************
%******************************************************************************
