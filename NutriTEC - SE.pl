% Importación de los archivos que contienen la base de datos y el BNF

:-consult('NutriTEC - BNF').
:-consult('NutriTEC - DataBase').
:-style_check(-singleton).


%Función para verificar si una lista se encuentra vacía.
lista_vacia(List, Empty) :-
	length(List, Len),
	(   Len =< 1
	->  Empty = true
	;   Empty = false).


%Recibe un parametro para introducirlo en una lista.
input_to_list(L):-
	read_line_to_codes(user_input,Cs),
	atom_codes(A,Cs),
	atomic_list_concat(L,' ',A).


%Función para convertir el parametro en un string.
input_to_string(A):-
	read_line_to_codes(user_input,Cs),
	atom_codes(A,Cs).


%Función que convierte una lista en string.
list_to_string(List, String):-
	atomic_list_concat(List, ' ', String).


%Función para convertir una entrada en lista.
string_to_list_of_atoms(X,L):-
	atom_codes(X,A),
	atomic_list_concat(L,' ',X).


%Verifica si la entrada pertenece a la lista. 
miembro(X,[X|_]).
miembro(X,[_|T]):-miembro(X,T).


%Función de Busqueda de palabras de inicio.
%Realiza una busqueda de las posibles palabras con las que se puede iniciar 
checkerStart([]):- input_to_list(Oracion1),
	checkerStart(Oracion1).
checkerStart([H|_]):- listStart(L),
	miembro(H,L), 
	ingresarDatos(NombreDieta, Padecimientos, Calorias, Actividad, Frecuencia, TipoDieta, MenuDieta), !.
checkerStart([H|T], X):- listStart(L),
	\+miembro(H,L),
	compareInicio(T,X).


%Busca las palabras dentro de nuestra deficnicón de elementos que inician la conversación.
listStart(L) :- findall(X, (start([X|_])), L).


comparePadecimientos([],X):- nl, writeln('No se encuentra el padecimiento'),
              writeln('Intente de nuevo'),nl,
              input_to_list(Oracion),
              comparePadecimientos(Oracion,X).
comparePadecimientos([H|_], X):- listaTipoDePadecimientos(L),
                miembro(H,L),
                X = H, !.
comparePadecimientos([H|T], X):- listaTipoDePadecimientos(L),
                            \+miembro(H,L),
                            comparePadecimientos(T,X).
listaTipoDePadecimientos(L) :- findall(X, (diet([_,_,_,_,_,[X|_],_,_,_])) , L).


compareCalorias([],X):- nl, writeln('No hay dietas con este tipo de calorias'),
          writeln('Intente de nuevo'),nl,
          input_to_list(Oracion),
          compareCalorias(Oracion,X).
compareCalorias([H|_], X):- listaCalorias(L),
            miembro(H,L),
            X = H, !.
compareCalorias([H|T], X):- listaCalorias(L),
                      \+miembro(H,L),
                      compareCalorias(T,X).

listaCalorias(L) :- findall(X, (diet([_,_,X,_,_,_,_,_,_])) , L).


compareActividad([],X):- nl, writeln('La actividad no se encuentra'),
            writeln('Intente de nuevo'),nl,
            input_to_list(Oracion),
            compareActividad(Oracion,X).
compareActividad([H|_], X):- listaActividad(L),
              miembro(H,L),
              X = H, !.
compareActividad([H|T], X):- listaActividad(L),
                        \+miembro(H,L),
                        compareActividad(T,X).

listaActividad(L) :- findall(X, (diet([_,_,_,_,_,_,_,X,_])) , L).




compareFrecuencia([],X):- nl, writeln('La frecuencia no corresponde'),
            writeln('Intente de nuevo'),nl,
            input_to_list(Oracion),
            compareFrecuencia(Oracion,X).
compareFrecuencia([H|_], X):- listaFrecuencia(L),
              miembro(H,L),
              X = H, !.
compareFrecuencia([H|T], X):- listaFrecuencia(L),
                        \+miembro(H,L),
                        compareFrecuencia(T,X).

listaFrecuencia(L) :- findall(X, (diet([_,_,_,X,_,_,_,_,_])) , L).



compareTipoDieta([],X):- nl, writeln('El tipo de dieta no corresponde'),
            writeln('Intente de nuevo'),nl,
            input_to_list(Oracion),
            compareTipoDieta(Oracion,X).
compareTipoDieta([H|_], X):- listaTipoDieta(L),
              miembro(H,L),
              X = H, !.
compareTipoDieta([H|T], X):- listaTipoDieta(L),
                        \+miembro(H,L),
                        compareTipoDieta(T,X).

listaTipoDieta(L) :- findall(X, (diet([_,X,_,_,_,_,_,_,_])) , L).

%Función de ingreso y lectura de los datos que introduce el usuario.
ingresarDatos(NombreDieta,Padecimientos,Calorias,Actividad,Frecuencia,TipoDieta,MenuDieta):-
	sleep(0.5), write('Hola encantado de que verlo mejorar su estilo de vida. Cuenteme ¿en que lo 
	puedo ayudar?'),nl,
	sleep(0.5),
	input_to_list(OracionX),
	nl, writeln('Excelente iniciativa. Estamos para asesorarte en todo lo que necesites.'),
	sleep(0.5),

	% Se busca la enfermedad
	nl, writeln('¿Tienes alguna enfermedad por la que ha iniciado este proceso?'),
	input_to_list(Oracion1),%Se ingresa lo introducido por el usuario a una lista para compararlo.
	validacion_gramatical(Oracion1), %Se valida que la oración sea gramaticalmente correcta.
	nl,writeln(Oracion1),
	comparePadecimientos(Oracion1, PadTemp), %Llama a la función para buscar los padecimientos relacionados.
	Padecimientos = PadTemp,


	% Se buscan las calorias
	nl, write('¿Tienes pensado una cantidad especifica de calorias diarias por consumir?'), nl,
	input_to_list(Oracion2),
	validacion_gramatical(Oracion2),
	compareCalorias(Oracion2, KcalTemp), %Llama a la función para comparar con respecto a las calorías de las dietas.
	Calorias = KcalTemp,


	% Se busca tipo actividad fisica
	nl, writeln('¿Practicas algun deporte?'),
	input_to_list(Oracion3),
	validacion_gramatical(Oracion3),
	compareActividad(Oracion3, ActividadTemp), %Llama a la función para comparar con respecto a las actividades que realiza.
	Actividad = ActividadTemp,


	% Se busca frecuencia actividad fisica
	nl, writeln('¿Eres activo fisicamente?'),
	nl, writeln('Inicial | Intermedio | Avanzado'),nl,
	input_to_list(Oracion4),
	%validacion_gramatical(Oracion4),
	compareFrecuencia(Oracion4, FrecuenciaTemp), %Llama a la función para comparar con respecto a la frecuencia de su actividad.
	Frecuencia = FrecuenciaTemp,


	% Se busca el tipo de dieta
	nl, write('¿Tienes un tipo de dieta te gustaria realizar?'), nl,
	input_to_list(Oracion5),
	validacion_gramatical(Oracion5),
	compareTipoDieta(Oracion5, TipoDietaTemp), %Llama a la función para buscar el tipo de dietas según lo obtenido.
	TipoDieta = TipoDietaTemp,


	% Se validan los datos y se busca la referencia en caso de existir
	buscarDietaConDatosIngresados(NombreTemp, Padecimientos, Calorias, Actividad, Frecuencia, TipoDieta, MenuDietaTemp).
	
	


%Función para verificar que los datos ingresados por el usuario se encuentren en la base de datos.
verificarDatos(NombreDieta, NombreIngresado, NombreIngresado2, MenuDieta, MenuDietaDisponibles):-
	miembro(NombreDieta, NombreIngresado),
	miembro(NombreDieta, NombreIngresado2).
	

	%miembro(MenuDieta, MenuDietaDisponibles).



%Realiza una busqueda de la dietaa recomendar según los datos que obtuvo del usuario.

buscarDietaConDatosIngresados(NombreDieta,Padecimientos,Calorias,Actividad,Frecuencia,TipoDieta,MenuDieta):-
	
	findall(X, (diet([_,TipoDieta,Calorias,_,_,_,_,_,X]),X),L),
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


%Si no hay comprobaciones verdaderas tira un mensaje de error.
buscarDietaConDatosIngresados(NombreDieta,Padecimientos,Calorias,Actividad,Frecuencia,TipoDieta,MenuDieta):-
	diet([NombreDieta,TipoDieta,Calorias,[Padecimientos],[Padecimientos],[Actividad],[Actividad], [MenuDieta]]),
	+verificarDatos(NombreDieta, NombreIngresado, NombreIngresado2, MenuDieta, MenuDietaDisponibles),
	nl, writeln('**'), nl,
	nl, writeln('--> No se pudo encuentrar ninguna dieta con los datos ingresados. Lo sentimos <--'), nl,
	nl, writeln('**'), nl,
	buscarNuevamente(), !.


%Crea una referencia a la dieta que se va entregar y la muestra según los resultados obtenidos.
crearReferencia(NombreDieta, Calorias,MenuDieta):-
	nl, writeln('**'), nl,
	write('--> Nuestra sugerencia de dieta es: '), write(NombreDieta), writeln(' <--'),
	write('--> Las calorias: '), write(Calorias), writeln(' <--'),
	write(MenutDieta),
	nl, writeln('**'), nl.


%En caso de no encontrar comprobaciones pregunta al usuario si desea buscar nuevamente.
buscarNuevamenteAux(Respuesta):- miembro('si',Respuesta),
	ingresarDatos(A,B,C,D,E,F,G).
buscarNuevamenteAux(Respuesta):- +miembro('si',Respuesta),
	despedida(), !.
buscarNuevamente():- nl, writeln('--> Desea buscar nuevamente? (Debe responder con si o no a la pregunta) <--'), nl,
	input_to_list(Respuesta),
	buscarNuevamenteAux(Respuesta), !.


%Función principal para la ejecución del programa.
inicio():-
	input_to_list(Oracion),
	checkerStart(Oracion).
