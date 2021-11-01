%dietas
diet([hipocalorica|S],S).   % sobrepeso u obesidad  diabetes, el colesterol o la hipertensi�n arterial

diet([hipercalorica|S],S).  % desnutricion - subir masa muscular





% elimina grasas y azucares, no se puede cocinar fritos
% se permite la comida hervida y a la plancha



% hipocalorica 1  a 1200 calorias

Desayuno
1 vaso de leche desnatada.
40 g de cereales.
Caf� solo o infusi�n

Merienda medio
20 g de pan.
60 g de jam�n york.
Caf� o infusi�n

Almuerzo
150 g de coliflor hervida.
75 g de pollo asado.
100 g de patatas.
20 g de pan.
200 g de pi�a natural.

Merienda tarde
20 g de pan
50 g de queso.
Caf� o infusi�n.

Cena
15 g de pasta
50 g de puerros
25 g de zanahorias.
110 g de pescado
75 g de lechuga
75 g de tomate.
20 g de pan.
100 g de cerezas.



% hipocalorica 2  a 1200 calorias

Desayuno
2 yogures desnatados.
30 g de galletas.
Caf� o infusi�n.

Merienda medio
15 g de biscotes.
40 g de queso fresco.
Caf� o infusi�n.

Almuerzo
150 g de verduras.
75 g de alb�ndigas.
30 g de arroz.
20 g de pan.
200 g de fresas.

Merienda tarde
15 g de galletas.
Caf� con 100 ml de leche desnatada.

Cena
150 g de lechuga
150 g de tomate.
100 g de patatas
1 huevo
200 g de naranja.




%hipercalorica 2500 calorias
Desayuno
200 ml de leche.
60 g de cereales integrales.
1 yogurt.
2 piezas de fruta.
Caf� solo o infusi�n.


Merienda medio
60 g de pan.
90 g de jam�n york.
150 g de tomate.
Caf� o infusi�n con 100 ml de leche.


Almuerzo
300 g de coliflor hervida
15 g de jam�n serrano en tacos.
150 g de pollo asado.
150 g de patatas.
60 g de pan.
400 g de mel�n.


Merienda tarde
30 g de cereales de desayuno
75 g de nueces
160 g de manzana
200 ml de leche.
Caf� solo o infusi�n.


Cena
300 g de verduras
50 g de guisantes
35 g de reques�n.
150 g de sardinas a la plancha.
150 g de esp�rragos
100 g de patatas cocidas.
40 g de pan.
300 g de mandarinas.


%hipercalorica 2 3500 calorias
Desayuno
2 yogures desnatados.
100 g de galletas.
3 piezas de fruta.
Caf� con 100 ml de leche.


Merienda medio
100 g de galletas.
100 g de almendras.
100 g de zanahoria cruda.
2 yogurt.
Caf� solo o infusi�n



Almuerzo
100 g de arroz
3 huevo frito
150 g de tomate.
200 g de pollo a la plancha
150 g de verduras al horno.
100 g de pan.
100 g de cerezas.


Merienda tarde
100 g de pan.
100 g de jam�n york.
Caf� solo o infusi�n con 200 ml de leche.
2 pieza de fruta peque�a.



Cena
250 g de alcachofas.
250 g de salm�n a la plancha.
150 g de pur� de patatas (con 100 ml de leche).
100 g de pan.
240 g de manzana.






diet([detox|S],S).
diet([proteica|S],S).
diet([vegetariana|S],S).
diet([paleo|S],S).
diet([alcalina|S],S).
diet([mediterranea|S],S). %enfermedades cardiovasculares
diet([vegana|S],S).
diet([keto|S],S).

Padecimientos [[Dislipidemia�Problemas del control del colesterol� �Dieta baja en grasas�]
Padecimientos [Hipercolesterolemia �aumento de los niveles considerados normales de colesterol en la sangre� �Dieta vegana�]
NivelesActividad [Inicial (0-2 veces)|Intermedio (3-4 veces)|Avanzado (5 � m�s veces)]
Dietas [NombreDieta TipoDieta Calor�as[padecimientos NO recomendados] [padecimiento recomendados] [Actividades NO recomendadas][Actividades recomendadas] [Detalle Dieta]]
