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

% Descripción		:	Se busca la palabra de inicio
% Nombre de Hecho	:	compareInicio([])
% Parámetro			:	lista oracion
% Salida            :   llamar a la funcion inicio
checkerStart([]):- input_to_list(Oracion1),
	checkerStart(Oracion1).
checkerStart([H|_]):- listStart(L),
	miembro(H,L), 
	ingresarDatos(NombreDieta, Padecimientos, Calorias, Actividad, Frecuencia, TipoDieta, MenuDieta), !.
checkerStart([H|T], X):- listStart(L),
	\+miembro(H,L),
	compareInicio(T,X).

% Descripción		:	Se obtiene la lista de comidas disponibles
% Nombre de Hecho	:	listStart(L)
% Parámetro			:	resultado
% Salida            :   lista de comidas disponibles
listStart(L) :- findall(X, (start([X|_])), L).


%******************************************************************************
%******************************************************************************
%******************************************************************************

% Descripción		:	Se piden los datos al usuario
% Nombre de Hecho	:	ingresarDatos(NombreDieta,Padecimientos,Calorias,Actividad,Frecuencia,TipoDieta,MenuDieta)
% Parámetro			:	-------------
% Salida            :   
ingresarDatos(NombreDieta,Padecimientos,Calorias,Actividad,Frecuencia,TipoDieta,MenuDieta):-
	% Se busca la enfermedad
	nl, writeln('¿Tienes alguna enfermedad por la que ha iniciado este proceso?'),
	input_to_list(Oracion1),
	validacion_gramatical(Oracion1),
	comparePadecimientos(Oracion1, PadTemp),
	Padecimientos = PadTemp,

	% Se buscan las calorias
	nl, write('¿Tienes pensado una cantidad específica de calorías diarias por consumir?'), nl,
	input_to_list(Oracion2),
	validacion_gramatical(Oracion2),
	compareKcal(Oracion2, KcalTemp),
	Calorias = KcalTemp,

	% Se busca tipo actividad fisica
	nl, writeln('¿Practicas algún deporte?'),
	input_to_list(Oracion3),
	validacion_gramatical(Oracion3),
	compareActividad(Oracion3, ActividadTemp),
	Actividad = ActividadTemp,

	% Se busca frecuencia actividad fisica
	nl, writeln('¿Eres activo físicamente?'),
	input_to_list(Oracion4),
	validacion_gramatical(Oracion4),
	compareFrecuencia(Oracion4, FrecuenciaTemp),
	Frecuencia = FrecuenciaTemp,

	% Se busca el tipo de dieta
	nl, write('¿Tienes un tipo de dieta te gustaría realizar?'), nl,
	input_to_list(Oracion5),
	validacion_gramatical(Oracion5),
	compareTipoDieta(Oracion5, TipoDietaTemp),
	TipoDieta = TipoDietaTemp,

	% Se validan los datos y se busca la referencia en caso de existir
	buscarDietaConDatosIngresados(NombreTemp, Padecimientos, Calorias, Actividad, Frecuencia, TipoDieta, MenuDietaTemp).


% Descripción   : Se verifican los datos ingresados por el usuario
% Nombre de Hecho : verificarDatos(NombreRest, NombreIngresado, NombreIngresado2, SaborComida, SaboresDisponibles)
% Parámetro     : NombreRestaurante, NombreIngresado, NombreIngresado2, SaborComida, SaboresDisponibles
% Salida            :   boolean que indica si los datos se encuentran en la base de datos o no
verificarDatos(NombreDieta, NombreIngresado, NombreIngresado2, MenuDieta, MenuDietaDisponibles):-
	miembro(NombreDieta, NombreIngresado),
	miembro(NombreDieta, NombreIngresado2),
	miembro(MenuDieta, MenuDietaDisponibles).


% Descripción   : Busca el mejor restaurante segun los parametros dados.
% Nombre de Hecho : buscarRestauranteConDatosIngresados(NombreRest, TipoMenu, TipoComida, SaborComida, TipoBebida, LugarDeseado, CantidadDeseada)
% Parámetro     : NombreRestaurante, TipoMenu, TipoComida, SaborComida, TipoBebida, LugarDeseado, CantidadDeseada
% Salida            :   referencia generada si se encuentran los datos ingresados
buscarDietaConDatosIngresados(NombreDieta,Padecimientos,Calorias,Actividad,Frecuencia,TipoDieta,MenuDieta):-
	diet([NombreDieta,TipoDieta,Calorias,[Padecimientos],[Padecimientos],[Actividad],[Actividad], [MenuDieta]]),
	padecimientos([NombreIngresado]),
	calorias([NombreIngresado2]),
	verificarDatos(NombreDieta, NombreIngresado, NombreIngresado2, MenuDieta, MenuDietaDisponibles),
	crearReferencia(NombreDieta,MenuDieta),
	buscarNuevamente(), !.

buscarDietaConDatosIngresados(NombreDieta,Padecimientos,Calorias,Actividad,Frecuencia,TipoDieta,MenuDieta):-
	diet([NombreDieta,TipoDieta,Calorias,[Padecimientos],[Padecimientos],[Actividad],[Actividad], [MenuDieta]]),
	write('Intente de nuevo'), nl, nl,
	input_to_list(Oracion),
	validacion_gramatical(Oracion),
	buscarDietaConDatosIngresados(NombreDieta,Padecimientos,Calorias,Actividad,Frecuencia,TipoDieta,MenuDieta).

buscarDietaConDatosIngresados(NombreDieta,Padecimientos,Calorias,Actividad,Frecuencia,TipoDieta,MenuDieta):-
	diet([NombreDieta,TipoDieta,Calorias,[Padecimientos],[Padecimientos],[Actividad],[Actividad], [MenuDieta]]),
	+verificarDatos(NombreDieta, NombreIngresado, NombreIngresado2, MenuDieta, MenuDietaDisponibles),
	nl, writeln('**'), nl,
	nl, writeln('--> No se pudo encuentrar ninguna dieta con los datos ingresados. Lo sentimos <--'), nl,
	nl, writeln('**'), nl,
	buscarNuevamente(), !.

% Descripción   : Se crea la referencia para el mejor restaurante segun los parametros dados.
% Nombre de Hecho : crearReferencia(NombreRest, DireccionTemp, Obligaciones)
% Parámetro     : NombreRestaurante, DireccionTemporal, Obligaciones
% Salida            :   referencia generada si se encuentran los datos ingresados
crearReferencia(NombreDieta, Calorias,MenuDieta):-
	nl, writeln('**'), nl,
	write('--> Nuestra sugerencia de dieta es: '), write(NombreDieta), writeln(' <--'),
	write('--> Las calorias: '), write(Calorias), writeln(' <--'),
	write(MenutDieta),
	nl, writeln('**'), nl.


% Descripción   : Se pregunta al usuario si desea buscar nuevamente.
% Nombre de Hecho : buscarNuevamenteAux(Respuesta)
% Parámetro     : respuesta del usuario si desea buscar nuevamente o no
% Salida            :   mensaje de despedida en caso de no querer volver a buscar
buscarNuevamenteAux(Respuesta):- miembro('si',Respuesta),
	ingresarDatos(A,B,C,D,E,F,G).
buscarNuevamenteAux(Respuesta):- +miembro('si',Respuesta),
	despedida(), !.
buscarNuevamente():- nl, writeln('--> Desea buscar nuevamente? (Debe responder con si o no a la pregunta) <--'), nl,
	input_to_list(Respuesta),
	buscarNuevamenteAux(Respuesta), !.


% Descripción		:	Regla principal que ejecuta el programa.
% Nombre de Hecho	:	inicio()
% Parámetro			:	-
% Salida            :   -
inicio():-
	input_to_list(Oracion),
	checkerStart(Oracion).
