%Palabras clave de usuario


%
%Inicio de la conversación
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
%Agregar otras si se considera, como nunca, jamas, etc.


%Respuestas positivas
positive([si|S],S).
positive([claro|S],S).

%verbos conjugados posibles
verb([deseo|S],S).
verb([tengo|S],S).
verb([gustaria|S],S).
verb([deseo|S],S).
verb([me,gustan|S],S).
verb([realizar|S],S).
verb([habia|S],S).
verb([quiero|S],S).
%falta

%dietas
diet([hipocalorica|S],S).
diet([hipercalorica|S],S).
diet([detox|S],S).
diet([proteica|S],S).
diet([vegetariana|S],S).
diet([paleo|S],S).
diet([alcalina|S],S).
diet([mediterranea|S],S).%enfermedades cardiovasculares
diet([vegana|S],S).
diet([keto|S],S).








