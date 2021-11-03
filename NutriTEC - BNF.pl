%Palabras clave de usuario

:-style_check(-singleton).

% inicio de la conversación
start([hola|S],S).
start([iniciar|S],S).
start([buenas,tardes|S],S).
start([buenos,dias|S],S).
start([buenas,noches|S],S).
start([hola,nutritec|S],S).

%Finalizar la conversación
final([gracias|S],S).
final([muchas,gracias|S],S).
final([chao|S],S).
final([adios|S],S).

%Respuestas negativas
negative([no|S],S).
negative(['No'|S],S).
negative([nunca|S],S).
negative(['Nunca'|S],S).
negative([jamas|S],S).
negative(['Jamas'|S],S).
negative([nada|S],S).
negative(['Nada'|S],S).


%Respuestas positivas
positive([si|S],S).
positive([claro|S],S).

% Determinantes
determinante([yo|S],S).
determinante(['Yo'|S],S).

% Sustantivo
sustantivo_g([_|S],S).

% Verbos conjugados posibles
verb([deseo|S],S).
verb([tengo|S],S).
verb([gustaria|S],S).
verb([pensado|S],S).
verb([llevar|S],S).
verb([estoy|S],S).
verb([diagnosticado|S],S).
verb([habia|S],S).
verb([realizar|S],S).
verb([quiero|S],S).


verb([me,gustan|S],S).
verb([me,diagnosticaron|S],S).
verb([deseo,llevar|S],S).

verb(['Deseo'|S],S).
verb(['Tengo'|S],S).
verb(['Gustaria'|S],S).
verb(['Pensado'|S],S).
verb(['Llevar'|S],S).
verb(['Estoy'|S],S).
verb(['Diagnosticado'|S],S).
verb(['Habia'|S],S).
verb(['Realizar'|S],S).
verb(['Quiero'|S],S).

verb(['Me','gustan'|S],S).
verb(['Me','diagnosticaron'|S],S).
verb(['Deseo','llevar'|S],S).


% Verifica si es una oración gramaticalmente 
oracion(A,B):-
    sintagma_nominal(A,C).


% Recibe una lista de palabras y una lista vacía; elimina el primer sintagma nominal encontrado
sintagma_nominal(A,B):-
    determinante(A,C),
    sintagma_verbal(C,Z),
	sustantivo_g(Z,B).

sintagma_nominal(A,B):-
	sintagma_verbal(A,C),
    sustantivo_g(C,B).

sintagma_nominal(A,B):-
    sintagma_verbal(A,B).


% Recibe una lista de palabras y una lista vacía; elimina el primer sintagma verbal encontrado
sintagma_verbal(A,B):-
	verb(A,B).

% Valida si la oración digitada por el usuario está gramaticalmente correcta según el BNF establecido

validacion_gramatical(Oracion):-
    oracion(Oracion,[]),
	!.

validacion_gramatical(Oracion):-
	nl, writeln('Oracion gramaticalmente incorrecta'),
	writeln('Escriba de nuevo su oracion'),nl,
	input_to_list(Oracion2),
	validacion_gramatical(Oracion2).












