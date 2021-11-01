%dietas
diet([hipocalorica|S],S).   % sobrepeso u obesidad  diabetes, el colesterol o la hipertensión arterial

diet([hipercalorica|S],S).  % desnutricion - subir masa muscular





% elimina grasas y azucares, no se puede cocinar fritos
% se permite la comida hervida y a la plancha



% hipocalorica 1  a 1200 calorias

Desayuno
1 vaso de leche desnatada.
40 g de cereales.
Café solo o infusión

Merienda medio
20 g de pan.
60 g de jamón york.
Café o infusión

Almuerzo
150 g de coliflor hervida.
75 g de pollo asado.
100 g de patatas.
20 g de pan.
200 g de piña natural.

Merienda tarde
20 g de pan
50 g de queso.
Café o infusión.

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
Café o infusión.

Merienda medio
15 g de biscotes.
40 g de queso fresco.
Café o infusión.

Almuerzo
150 g de verduras.
75 g de albóndigas.
30 g de arroz.
20 g de pan.
200 g de fresas.

Merienda tarde
15 g de galletas.
Café con 100 ml de leche desnatada.

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
Café solo o infusión.


Merienda medio
60 g de pan.
90 g de jamón york.
150 g de tomate.
Café o infusión con 100 ml de leche.


Almuerzo
300 g de coliflor hervida
15 g de jamón serrano en tacos.
150 g de pollo asado.
150 g de patatas.
60 g de pan.
400 g de melón.


Merienda tarde
30 g de cereales de desayuno
75 g de nueces
160 g de manzana
200 ml de leche.
Café solo o infusión.


Cena
300 g de verduras
50 g de guisantes
35 g de requesón.
150 g de sardinas a la plancha.
150 g de espárragos
100 g de patatas cocidas.
40 g de pan.
300 g de mandarinas.


%hipercalorica 2 3500 calorias
Desayuno
2 yogures desnatados.
100 g de galletas.
3 piezas de fruta.
Café con 100 ml de leche.


Merienda medio
100 g de galletas.
100 g de almendras.
100 g de zanahoria cruda.
2 yogurt.
Café solo o infusión



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
100 g de jamón york.
Café solo o infusión con 200 ml de leche.
2 pieza de fruta pequeña.



Cena
250 g de alcachofas.
250 g de salmón a la plancha.
150 g de puré de patatas (con 100 ml de leche).
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

Padecimientos [[Dislipidemia“Problemas del control del colesterol” “Dieta baja en grasas”]
Padecimientos [Hipercolesterolemia “aumento de los niveles considerados normales de colesterol en la sangre” “Dieta vegana”]
NivelesActividad [Inicial (0-2 veces)|Intermedio (3-4 veces)|Avanzado (5 ó más veces)]
Dietas [NombreDieta TipoDieta Calorías[padecimientos NO recomendados] [padecimiento recomendados] [Actividades NO recomendadas][Actividades recomendadas] [Detalle Dieta]]
