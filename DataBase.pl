%dietas
diet([hipocalorica|S],S).   % sobrepeso u obesidad  diabetes, el colesterol o la hipertensi?n arterial
diet([hipercalorica|S],S).  % desnutricion - subir masa muscular
diet([detox|S],S).   % trastornos del sistema digestivo, enfermedades autoinmunes, fibromialgia, síndrome de fatiga crónica y la tan temida inflamación






% hipocalorica 1  a 1200 calorias
% elimina grasas y azucares, no se puede cocinar fritos
% se permite la comida hervida y a la plancha
Desayuno
1 vaso de leche desnatada.
40 g de cereales.
Cafe solo o infusion

Merienda medio
20 g de pan.
60 g de jam?n york.
Cafe o infusion

Almuerzo
150 g de coliflor hervida.
75 g de pollo asado.
100 g de patatas.
20 g de pan.
200 g de pinia natural.

Merienda tarde
20 g de pan
50 g de queso.
Cafe o infusion.

Cena
15 g de pasta
50 g de puerros
25 g de zanahorias.
110 g de pescado
75 g de lechuga
75 g de tomate.
20 g de pan.
100 g de cerezas.



% hipocalorica 2  a 1500 calorias

Desayuno
2 yogures desnatados.
50 g de galletas.
Cafe o infusion.

Merienda medio
50 g de biscotes.
100 g de queso fresco.
Cafe o infusion.

Almuerzo
150 g de verduras.
100 g de albondigas.
50 g de arroz.
50 g de pan.
200 g de fresas.

Merienda tarde
25 g de galletas.
Cafe con 100 ml de leche desnatada.

Cena
150 g de lechuga
150 g de tomate.
100 g de patatas
3 huevo
200 g de naranja.




%hipercalorica 2500 calorias
Desayuno
200 ml de leche.
60 g de cereales integrales.
1 yogurt.
2 piezas de fruta.
Cafe solo o infusion.


Merienda medio
60 g de pan.
90 g de jam?n york.
150 g de tomate.
Cafe o infusion con 100 ml de leche.


Almuerzo
300 g de coliflor hervida
15 g de jamon serrano en tacos.
150 g de pollo asado.
150 g de patatas.
60 g de pan.
400 g de melon.


Merienda tarde
30 g de cereales de desayuno
75 g de nueces
160 g de manzana
200 ml de leche.
Cafe solo o infusion.


Cena
300 g de verduras
50 g de guisantes
35 g de requeson.
150 g de sardinas a la plancha.
150 g de esparragos
100 g de patatas cocidas.
40 g de pan.
300 g de mandarinas.


%hipercalorica 2 3500 calorias
Desayuno
2 yogures desnatados.
100 g de galletas.
3 piezas de fruta.
Cafe con 100 ml de leche.


Merienda medio
100 g de galletas.
100 g de almendras.
100 g de zanahoria cruda.
2 yogurt.
Cafe solo o infusion



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
100 g de jamon york.
Cafe solo o infusion con 200 ml de leche.
2 pieza de fruta peq.



Cena
250 g de alcachofas.
250 g de salmon a la plancha.
150 g de pure de patatas (con 100 ml de leche).
100 g de pan.
240 g de manzana.



%detox 1 1400 calorias

Desayuno
Te verde.
Avena con leche de soja.
Arandanos.




Merienda medio
tomate natural con perejil.


Almuerzo
Alcachofas al vapor
Batido de apio y piña
infusion te verde



Merienda tarde
zumo de naranja y piña




Cena
Batido detox.
1 apio.
1 tomate.
1 pepino.
1L de agua.
zumo de arandano .



%detox 2 1600 calorias
Desayuno
Te verde.
30g de pan con tomate y aceite de oliva
Arandanos.



Merienda medio
te verde.
10 almendras.


Almuerzo
Ensalada de espinacas con ajo.
semillas de mostaza al vapor.
merluza a la plancha .
zumo de naranja.



Merienda tarde
papaya y piña.

Cena
Batido detox.
3 pepinos.
1 piña.
semillas de sesamo.
3 vasos de agua.
zumo de uvas rojas.


Keto 1
Desayuno
tortitas
2 huevos
2 cucharadas de aceite de oliva
2 cucharadas de jarabe de arce
Esencia de vainilla
Sal del himalaya
1 cucharada de levadura en polvo
120 gr. de harina
Media cucharada de leche de almendra
2 cucharadas de mantequilla

Merienda Media
chips de parmesano
1 triángulo de queso parmesano por ración
Albahaca
Sal
Pimienta

Almuerzo
salmón con brócoli y kale
1 filete de salmón
100 gr de brócoli
3 cucharadas de almendras
Pimienta
Nuez moscada
Canela
2 puñados de kale
Merienda Media
100 gr de cecina o jamón

Cena
ramen de ternera
150 gr de ternera
60 gr de col pak choi
2 unidades de citronela
Medio pimiento rojo
30 gr de nueces
50 gr de kale
Caldo de huesos

Keto 2
Desayuno 
250 gr de yogur de coco
1 cucharada de proteína
30 gr de almendras
20 gr de mantequilla

Merienda Media
100 gr de cecina o jamón

Almuerzo
Ensalada de pastrami
80 gr de pastrami
80 gr de espinacas
60 gr de kimchi
50 gr de crema de queso

Merienda Media
brócoli picante
80 gr de brócoli asado
10 gr de chile cortados en trozos y asados

Cena
gambas con arroz de coliflor
100 gr de coliflor
1 cucharada de aceite de coco
50 gr de judías verdes
150 gr de gambas
50 gr de crema de queso
1 puñado de cacahuetes machacados
10 gr de cebollino




diet([detox|S],S).
diet([proteica|S],S).
diet([vegetariana|S],S).
diet([paleo|S],S).
diet([alcalina|S],S).
diet([mediterranea|S],S). %enfermedades cardiovasculares
diet([vegana|S],S).
diet([keto|S],S).%no diabeticos, bajar de peso

Padecimientos [[Dislipidemia?Problemas del control del colesterol? ?Dieta baja en grasas?]
Padecimientos [Hipercolesterolemia ?aumento de los niveles considerados normales de colesterol en la sangre? ?Dieta vegana?]
NivelesActividad [Inicial (0-2 veces)|Intermedio (3-4 veces)|Avanzado (5 ? m?s veces)]
Dietas [NombreDieta TipoDieta Calor?as[padecimientos NO recomendados] [padecimiento recomendados] [Actividades NO recomendadas][Actividades recomendadas] [Detalle Dieta]]
