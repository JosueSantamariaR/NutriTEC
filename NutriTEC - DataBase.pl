
% Se definen las dietas con todos los atributos correspondientes.
% La conforma la siguiente estructura:
% diet[NombreDieta,TipoDieta,Calorías,[padecimientos NO recomendados], [padecimiento recomendados], [Actividades NO recomendadas],[Actividades recomendadas], [Detalle Dieta]]
%Dietas proteicas
diet(['proteica1',proteica,'2000',intermedio,[diabetes],[obesidad],ciclismo,pesas,menuProte1]).
diet(['proteica2',proteica,'2500',intermedio,[diabetes],[obesidad],ciclismo,pesas,menuProte2]).

%Dietas alcalinas
diet(['alcalina1',alcalina,'1800',inicial,[phalto],[phbajo],pesas,cardio,menuAlca1]).
diet(['alcalina2',alcalina,'1500',inicial,[phalto],[phbajo],pesas,cardio,menuAlca2]).

%Dietas Mediterranea
diet(['mediterranea1',mediterranea,'3000',avanzado,[desnutricion],[enfermedad,cardiovascular],natacion,fondos,menuMedi1]).
diet(['mediterranea2',mediterranea,'1500',inicial,[desnutricion],[enfermedad,cardiovascular],natacion,fondos,menuMedi2]).

%Dietas Vegetarianas
diet(['vegetariana1',vegetariana,'1800',inicial,[fatiga],[colesterol],futbol,correr,menuVege1]).
diet(['vegetariana2',vegetariana,'2500',intermedio,[fatiga],[colesterol],futbol,correr,menuVege2]).

%Dietas Keto
diet(['keto1',keto,'1800',inicial,[hiperlipidemia],[hipertension],hit,suiza,menuKeto1]).
diet(['keto2',keto,'1400',inicial,[hiperlipidemia],[hipertension],hit,suiza,menuKeto2]).


%Dietas Detox

diet(['detox1',detox,'1400',inicial,[diabetes],[fibromialgia],crossfit,caminata,menuDetox1]).
diet(['detox2',detox,'1600',inicial,[diabetes],[fibromialgia],crossfit,caminata,menuDetox2]).

%Dieta Hipercalorica.
diet(['hipercalorica1',hipercalorica,'2500',intermedio,[obesidad],[desnutricion],powerlifting,triatlon,menuHiper1]).
diet(['hipercalorica2',hipercalorica,'3500',avanzado,[obesidad],[desnutricion],powerlifting,triatlon,menuHiper2]).

%Dieta Hipocalorica.
diet(['hipocalorica1',hipocalorica,'1200',inicial,[desnutricion],[sobrepeso],triatlon,yoga,menuHipo1]).
diet(['hipocalorica2',hipocalorica,'1500',inicial,[desnutricion],[sobrepeso],triatlon,yoga,menuHipo2]).

%frecuencia
frecuencia([inicial]).
frecuencia([intermedio]).
frecuencia([avanzado]).

actividades([yoga]).
actividades([triatlon]).
actividades([powerlifting]).
actividades([caminata]).
actividades([crossfit]).
actividades([hit]).
actividades([suiza]).
actividades([futbol]).
actividades([correr]).
actividades([natacion]).
actividades([fondos]).
actividades([cardio]).
actividades([pesas]).
actividades([ciclismo]).



calorias(['1200']).
calorias(['1400']).
calorias(['1500']).
calorias(['1600']).
calorias(['1800']).
calorias(['2000']).
calorias(['2500']).
calorias(['3000']).
calorias(['3500']).

%dietas
dietType([proteica]).
dietType([hipocalorica]).      % sobrepeso u obesidad  diabetes, el colesterol o la hipertensi?n arterial
dietType([hipercalorica]).     % desnutricion - subir masa muscular
dietType([detox]).             % trastornos del sistema digestivo, enfermedades autoinmunes, fibromialgia, sindrome de fatiga cr?nica y la tan temida inflamaci?n
dietType([mediterranea]).      % enfermedades cardiovasculares, enfermedades cerebrovasculares
dietType([keto]).              % no diabeticos, bajar de peso
dietType([vegetariana]).       %
dietType([alcalina]).          %bajar de peso y regular ph

%Padecimientos de las dietas
%hipocalorica
padecimientos([sobrepeso]).             %si
padecimientos([obesidad]).              %si
padecimientos([diabetes]).              %si
padecimientos([colesterol]).            %si
padecimientos([hipertension]).          %si

%hipercalorica.
padecimientos([desnutricion]).          %si
padecimientos([cancer]).                %si
padecimientos([sida]).                  %si

%detox
padecimientos([fibromialgia]).          %si
padecimientos([fatiga]).                %si
padecimientos([inflamacion]).           %si
padecimientos([enfermedadautoinmune]). %si
padecimientos([transtornossistemadigestivo]).  %si

%mediterranea
padecimientos([enfermedadcardiovascular]).     %si

%keto
padecimientos([obesidad]).              %si
padecimientos([epilepsiainfantil]).    %si
padecimientos([hiperlipidemia]).       %si

%vegetariana
padecimientos([hipertension]).       %si
padecimientos([diabetestipo2]).     %si
padecimientos([obesidad]).           %si

%alcalina
padecimientos([phalto]).        %si
padecimientos([phbajo]).        %si

%Ejemplo
%Padecimientos [[Dislipidemia?Problemas del control del colesterol? ?Dieta baja en grasas?]
%Padecimientos [Hipercolesterolemia ?aumento de los niveles considerados normales de colesterol en la sangre? ?Dieta vegana?]
%NivelesActividad [Inicial (0-2 veces)|Intermedio (3-4 veces)|Avanzado (5 o mas veces)]
%Dietas [NombreDieta TipoDieta Calorias [padecimientos NO recomendados] [padecimiento recomendados] [Actividades NO recomendadas][Actividades recomendadas] [Detalle Dieta]]

%Menu de cada dieta, que se muestra en el detalle.


%Detalles de la dieta Proteica 2000kcal (Enfocada en el consumo de proteina y pocos )
menuProte1():-
nl, writeln('Desayuno'), nl, 
 writeln('Avena con leche banano y frutas.'), nl,
 writeln('2 jamon.'), nl,
 writeln('2 queso'), nl,
 writeln('****************'), nl,
 writeln('Merienda'), nl,
 writeln('Emparedado con batido de frutas'), nl,
 writeln('****************'), nl,
 writeln('Almuerzo'), nl,
 writeln('150g carne de res'), nl,
 writeln('150g verduras'), nl,
 writeln('100g de frijoles'), nl,
 writeln('****************'), nl,
 writeln('Merienda'), nl,
 writeln('Fruta y 10 almendras'), nl,
 writeln('****************'), nl,
 writeln('Cena'), nl,
 writeln('100g carne de cerdo'), nl,
 writeln('2 huevos'), nl,
 writeln('50g de lentejas'), nl,
 writeln('Ensalada'), nl,
 writeln('****************'), nl,
 writeln('Que lo disfrute'), nl.
                                                                                                                                                                                                                                                                                                                     
%Detalles de la dieta Proteica 2500.
menuProte2():-
nl, writeln('Desayuno'), nl,
 writeln('2 huevos revueltos poco aceite.'),nl,
 writeln('4 tostadas'),nl,
 writeln('cafe con leche sin grasa.'),nl,
 writeln('****************'),nl,
 writeln('Merienda'),nl,
 writeln('200g Avena con leche'),nl,
 writeln('1 fruta'),nl,
 writeln('****************'),nl,
 writeln('Almuerzo'),nl,
 writeln('Garbanzos'),nl,
 writeln('2 huevos'),nl,
 writeln('200g Pollo'),nl,
 writeln('50g gramos de arroz'),nl,
 writeln('****************'),nl,
 writeln('Merienda'),nl,
 writeln('Emparedado de jamon'),nl,
 writeln('2 rebanadas de queso'),nl,
 writeln('****************'),nl,
 writeln('Cena'),nl,
 writeln('150g de salmon'),nl,
 writeln('Verduras al vapor'),nl,
 writeln('200g arroz'),nl,
 writeln('Ensalada'),nl,
 writeln('****************'),nl,
 writeln('Que lo disfrute'),nl. 
                                                                                                           
                
%Detalles de la dieta Alcalina 1800kcal
menuAlca1():-
  nl, writeln('Desayuno'),nl,
  writeln('Zumo de tomate'),nl,
  writeln('200g de cereales de avena con leche de almendras'),nl,
  writeln('200 ml de te verde'),nl,
  writeln('****************'),nl,
  writeln('Merienda'),nl,
  writeln('80g de fruta'),nl,
  writeln('****************'),nl,
  writeln('Almuerzo'),nl,
  writeln('350g de sopa de garbanzos'),nl,
  writeln('150ml de manzanilla'),nl,
  writeln('****************'),nl,
  writeln('Merienda'),nl,
  writeln('300ml Batido de leche de almendras con fresas'),nl,
  writeln('****************'),nl,
  writeln('Cena'),nl,
  writeln('400g de sopa de pollo con arroz integral y cebolla'),nl,
  writeln('200ml de te de tilo.'),nl,
  writeln('****************'),nl,
  writeln('Que lo disfrute'),nl.
                                                                                                                                                                                                                                                                          
%Detalles de la dieta Alcalina 1500kcal
menuAlca2():-
  nl, writeln('Desayuno'),nl,
 writeln('250 ml Batido verde de aguacate, limón y acelgas'),nl,
 writeln('150g Tostada de pan integral con pechuga de pavo'),nl,
 writeln('150 ml Té verde'),nl,
 writeln('****************'),nl,
 writeln('Merienda'),nl,
 writeln('200ml de infusión'),nl,
 writeln('Almuerzo'),nl,
 writeln('300g de pasta integral con salteado de pescado'),nl,
 writeln('200ml de manzanilla'),nl,
 writeln('****************'),nl,
 writeln('Merienda'),nl,
 writeln('200ml Zumo de naranja'),nl,
 writeln('****************'),nl,
 writeln('Cena'),nl,
 writeln('300g Hervido de verduras con patata, cebolla y brocoli'),nl,     
 writeln('****************'),nl,
 writeln('Que lo disfrute'),nl. 
                                         
%Detalles de la dieta Mediterranea 3000kcal
menuMedi1():-
  nl, writeln('Desayuno'),nl,
  writeln('1 tortilla francesa'),nl,
  writeln('1 kiwi'),nl,
  writeln('cafe o infusion'),nl,
  writeln('****************'),nl,
  writeln('Merienda'),nl,
  writeln('2 Tostadas'),nl,
  writeln('50g de Queso fresco'),nl,
  writeln('25g de nueces'),nl,
  writeln('****************'),nl,
  writeln('Almuerzo'),nl,
  writeln('250g de Gazpacho'),nl,
  writeln('100g Pescado a la plancha'),nl,
  writeln('50g de Frutos secos'),nl,
  writeln('****************'),nl,
  writeln('Merienda'),nl,
  writeln('150g de Taboule a la plancha'),nl,
  writeln('30g de platano'),nl,
  writeln('****************'),nl,
  writeln('Cena'),nl,
  writeln('150g de Verduras asadas'),nl,
  writeln('100g de Pulpo a la brasa'),nl,
  writeln('1 manzana con canela'),nl,
  writeln('****************'),nl,
  writeln('Que lo disfrute'),nl.
                 

%Detalles de la dieta Mediterranea 1500kcal
menuMedi2():-
nl, writeln('Desayuno'),nl,
  writeln('60 g de jamon cerrano.'),nl,
  writeln('Cafe sin azucar.'),nl,
  writeln('1 mandarina.'),nl,
  writeln('****************'),nl,
  writeln('Merienda'),nl,
  writeln('100g de yogurt.'),nl,
  writeln('50g de fruta fresca.'),nl,
  writeln('****************'),nl,
  writeln('Almuerzo'),nl,
  writeln('200g de Espinacas con garbanzos.'),nl,
  writeln('1 manzana.'),nl,
  writeln('****************'),nl,
  writeln('Merienda'),nl,
  writeln('100g de mecedonia.'),nl,
  writeln('Cafe sin azucar.'),nl,
  writeln('****************'),nl,
  writeln('Cena'),nl,
  writeln('150g de Ensalada(Tomate, lechuga y cebolla).'),nl,
  writeln('50g de Sardinas.'),nl,
  writeln('25g de Cuajada con miel.'),nl,
  writeln('****************'),nl,
  writeln('Que lo disfrute'),nl.

%Detalles de la dieta Vegetariana 1800kcal
menuVege1():-
nl, writeln('Desayuno'),nl,
  writeln('120g de yogurt de soja con miel y fruta.'),nl,
  writeln('****************'),nl,
  writeln('Merienda'),nl,
  writeln('40g Pan integral con mermelada'),nl,        
  writeln('****************'),nl,
  writeln('Almuerzo'),nl,
  writeln('80g de lentejas cocidas'),nl,
  writeln('120g de calabacin'),nl,
  writeln('25g de cebolla'),nl,
  writeln('Aceite de oliva'),nl,
  writeln('70g de pan integral'),nl,
  writeln('80g de tomate picado'),nl,
  writeln('40g de fruta'),nl,
  writeln('****************'),nl,
  writeln('Merienda'),nl,
  writeln('Frutos secos'),nl,
  writeln('****************'),nl,
  writeln('Cena'),nl,
  writeln('200g de tomate con 5 nueces'),nl,
  writeln('50g de tofu'),nl,
  writeln('20g de cebolla'),nl,
  writeln('20g de calabacin'),nl,
  writeln('200g de papas al horno'),nl,
  writeln('****************'),nl,
  writeln('Que lo disfrute'),nl.
    
%Detalles de la dieta Vegetariana 2500kcal
menuVege2():-
  nl, writeln('Desayuno'),nl,
  writeln('40g tostadas integrales'),nl,
  writeln('200 ml de batido de soja con cacao en polvo'),nl,
  writeln('40g de fruta'),nl,
  writeln('****************'),nl,
  writeln('Merienda'),nl,
  writeln('40 gramos de frutos secos'),nl,
  writeln('****************'),nl,
  writeln('Almuerzo'),nl,
  writeln('80g de arroz'),nl,
  writeln('30g de hongos'),nl,
  writeln('30g de cebolla'),nl,
  writeln('3 canelones'),nl,
  writeln('100 de bechamel'),nl,
  writeln('200g de vegetales salteados'),nl,
  writeln('****************'),nl,
  writeln('Merienda'),nl,
  writeln('2 yogures de soja (150g)'),nl,
  writeln('40g de galletas integrales'),nl,
  writeln('****************'),nl,
  writeln('Cena'),nl,
  writeln('60g de arroz'),nl,
  writeln('100 g de espárragos'),nl,
  writeln('45g de cebolla'),nl,
  writeln('30g de zanahoria'),nl,
  writeln('120g de tomate'),nl,
  writeln('100ml de vino blanco'),nl,
  writeln('70g de pan integral'),nl,
  writeln('40g  de fruta'),nl,
  writeln('****************'),nl,
  writeln('Que lo disfrute'),nl.

%Detalles de la dieta keto 1800kcal
menuKeto1():-
  nl, writeln('Desayuno'),nl,
  writeln('Tortitas'),nl,
  writeln('2 huevos'),nl,
  writeln('2 cucharadas de aceite de oliva'),nl,
  writeln('2 cucharadas de jarabe de arce'),nl,
  writeln('Esencia de vainilla'),nl,
  writeln('1 cucharada de levadura en polvo'),nl,
  writeln('120g de harina'),nl,
  writeln('leche de almendra'),nl,
  writeln('2 cucharadas de mantequilla'),nl,
  writeln('****************'),nl,
  writeln('Merienda'),nl,
  writeln('Chips de parmesano'),nl,
  writeln('50g queso parmesano '),nl,
  writeln('Albahaca'),nl,
  writeln('Sal'),nl,
  writeln('Pimienta'),nl,
  writeln('****************'),nl,
  writeln('Almuerzo'),nl,
  writeln('1 filete de salmon'),nl,
  writeln('100g de brocoli'),nl,
  writeln('3 cucharadas de almendras'),nl,
  writeln('Pimienta'),nl,
  writeln('Nuez moscada'),nl,
  writeln('Canela'),nl,
  writeln('20g de kale'),nl,
  writeln('****************'),nl,
  writeln('Merienda'),nl,
  writeln('100g de cecina o jamon'),nl,
  writeln('****************'),nl,
  writeln('Cena'),nl,
  writeln('150g de ternera'),nl,
  writeln('60g de col pak choi'),nl,
  writeln('2 unidades de citronela'),nl,
  writeln('1 manzana con canela'),nl,
  writeln('Medio pimiento rojo'),nl,
  writeln('50g de kale'),nl,
  writeln('Caldo de huesos'),nl,
  writeln('****************'),nl,
  writeln('Que lo disfrute'),nl.
    
    
%Detalles de la dieta keto 1400kcal
menuKeto2():-
  nl, writeln('Desayuno'),nl,
  writeln('250 gr de yogur de coco'),nl,
  writeln('1 cucharada de proteína'),nl,
  writeln('30g de almendras'),nl,
  writeln('20g de mantequilla'),nl,
  writeln('****************'),nl,
  writeln('Merienda'),nl,
  writeln('100g de cecina o jamón'),nl,
  writeln('****************'),nl,
  writeln('Almuerzo'),nl,
  writeln('Ensalada de pastrami'),nl,                
  writeln('50 gr de crema de queso'),nl,                        
  writeln('****************'),nl,
  writeln('Merienda'),nl,
  writeln('Brócoli picante'),nl,
  writeln('80g de brócoli asado'),nl,
  writeln('10g de chile cortados en trozos y asados'),nl,
  writeln('****************'),nl,
  writeln('Cena'),nl,
  writeln('Gambas con arroz de coliflor'),nl,
  writeln('100g de coliflor'),nl,
  writeln('1 cucharada de aceite de coco'),nl,
  writeln('50g de judías verdes'),nl,
  writeln('150g de gambas'),nl,
  writeln('50g de crema de queso'),nl,
  writeln('1 puñado de cacahuetes machacados'),nl,
  writeln('10g de cebollino'),nl,
  writeln('****************'),nl,
  writeln('Que lo disfrute'),nl.
                                                                                                                                                                                                                                                                                                                                                

%Detalles de la dieta Detox 1400kcal
menuDetox1():-
  nl, writeln('Desayuno'),nl,
  writeln('Té verde.'),nl,
  writeln('Avena con leche de soja.'),nl,
  writeln('Arandanos.'),nl,
  writeln('****************'),nl,
  writeln('Merienda'),nl,
  writeln('Tomate natural con perejil.'),nl,
  writeln('****************'),nl,
  writeln('Almuerzo'),nl,
  writeln('Alcachofas al vapor'),nl,
  writeln('Batido de apio y piña'),nl,
  writeln('infusion te verde'),nl,
  writeln('****************'),nl,
  writeln('Merienda'),nl,
  writeln('Zumo de naranja y piña'),nl,
  writeln('****************'),nl,
  writeln('Cena'),nl,
  writeln('Batido detox(apio,tamte,pepino,zumo de arandano'),nl,
  writeln('****************'),nl,
  writeln('Que lo disfrute'),nl. 

%Detalles de la dieta Detox 1600kcal
menuDetox2():-
  nl, writeln('Desayuno'),nl,
  writeln('Té verde.'),nl,
  writeln('30g de pan con tomate y aceite de oliva'),nl,
  writeln('Arandanos.'),nl,
  writeln('****************'),nl,
  writeln('Merienda'),nl,
  writeln('Té verde.'),nl,
  writeln('10 almendras.'),nl,
  writeln('****************'),nl,
  writeln('Almuerzo'),nl,
  writeln('Ensalada de espinacas con ajo.'),nl,
  writeln('Semillas de mostaza al vapor.'),nl,
  writeln('Merluza a la plancha'),nl,
  writeln('Zumo de naranja.'),nl,
  writeln('****************'),nl,
  writeln('Merienda'),nl,
  writeln('Batido de papaya y piña'),nl,
  writeln('****************'),nl,
  writeln('Cena'),nl,
  writeln('Batido detox(pepino, piña,semillas de sesamo,uvas)'),nl,
  writeln('****************'),nl,
  writeln('Que lo disfrute'),nl.
                     
              
%Detalles de la dieta Hipercalorica 2500kcal
menuHiper1():-
  nl, writeln('Desayuno'),nl,
 writeln('200 ml de leche'),nl,
 writeln('60 g de cereales integrales.'),nl,
 writeln('1 yogurt.'),nl,
 writeln('2 piezas de fruta.'),nl,
 writeln('Cafe solo o infusion.'),nl,
 writeln('****************'),nl,
 writeln('Merienda'),nl,
 writeln('60 g de pan.'),nl,
 writeln('90 g de jamón york.'),nl,
 writeln('150 g de tomate.'),nl,
 writeln('Cafe o infusion con 100 ml de leche.'),nl,
 writeln('****************'),nl,
 writeln('Almuerzo'),nl,
 writeln('300 g de coliflor hervida'),nl,
 writeln('15 g de jamon serrano en tacos.'),nl,
 writeln('150 g de pollo asado.'),nl,
 writeln('150 g de patatas.'),nl,
 writeln('60 g de pan.'),nl,
 writeln('400 g de melon.'),nl,
 writeln('****************'),nl,
 writeln('Merienda'),nl,
 writeln('30 g de cereales de desayuno'),nl,
 writeln('75 g de nueces'),nl,
 writeln('160 g de manzana'),nl,
 writeln('200 ml de leche.'),nl,
 writeln('Cafe solo o infusion.'),nl,
 writeln('****************'),nl,
 writeln('Cena'),nl,
 writeln('300 g de verduras'),nl,
 writeln('50 g de guisantes'),nl,
 writeln('35 g de requeson.'),nl,
 writeln('150 g de sardinas a la plancha.'),nl,
 writeln('150 g de esparragos'),nl,
 writeln('100 g de patatas cocidas.'),nl,
 writeln('40 g de pan.'),nl,
 writeln('300 g de mandarinas.'),nl,
 writeln('****************'),nl,
 writeln('Que lo disfrute'),nl.
            
            
%Detalles de la dieta Hipercalorica 3500kcal
menuHiper2():-
nl, writeln('Desayuno'),nl,
 writeln('2 yogures desnatados.'),nl,
 writeln('100 g de galletas.'),nl,
 writeln('3 piezas de fruta.'),nl,
 writeln('Cafe con 100 ml de leche.'),nl,
 writeln('****************'),nl,
 writeln('Merienda'),nl,
 writeln('100 g de galletas.'),nl,
 writeln('100 g de almendras.'),nl,
 writeln('100 g de zanahoria cruda.'),nl,
 writeln('2 yogurt.'),nl,
 writeln('Cafe solo o infusion'),nl,
 writeln('****************'),nl,
 writeln('Almuerzo'),nl,
 writeln('100 g de arroz'),nl,
 writeln('3 huevo frito'),nl,
 writeln('150 g de tomate.'),nl,
 writeln('200 g de pollo a la plancha'),nl,
 writeln('100 g de pan.'),nl,
 writeln('150 g de verduras al horno.'),nl,
 writeln('100 g de cerezas.'),nl,
 writeln('****************'),nl,
 writeln('Merienda'),nl,
 writeln('100 g de pan.'),nl,
 writeln('100 g de jamon york.'),nl,
 writeln('Cafe solo o infusion con 200 ml de leche.'),nl,
 writeln('2 pieza de fruta peq.'),nl,
 writeln('****************'),nl,
 writeln('Cena'),nl,
 writeln('250 g de alcachofas.'),nl,
 writeln('250 g de salmon a la plancha.'),nl,
 writeln('150 g de pure de patatas (con 100 ml de leche).'),nl,
 writeln('100 g de pan.'),nl,
 writeln('240 g de manzana.'),nl,
 writeln('****************'),nl,
 writeln('Que lo disfrute'),nl.
        
   
%Detalles de la dieta Hipocalorica 1200kcal
menuHipo1():-
  nl, writeln('Desayuno'),nl,
  writeln('1 vaso de leche desnatada.'),nl,
  writeln('40 g de cereales.'),nl,
  writeln('cafe o infusion'),nl,
  writeln('****************'),nl,
  writeln('Merienda'),nl,
  writeln('20 g de pan.'),nl,
  writeln('60 g de jamón york.'),nl,
  writeln('Cafe o infusion'),nl,
  writeln('****************'),nl,
  writeln('Almuerzo'),nl,
  writeln('150 g de coliflor hervida.'),nl,
  writeln('75 g de pollo asado.'),nl,
  writeln('100 g de patatas.'),nl,
  writeln('20 g de pan.'),nl,
  writeln('200 g de pinia natural.'),nl,
  writeln('****************'),nl,
  writeln('Merienda'),nl,
  writeln('20 g de pan'),nl,
  writeln('50 g de queso.'),nl,
  writeln('Cafe o infusion.'),nl,
  writeln('****************'),nl,
  writeln('Cena'),nl,
  writeln('15 g de pasta'),nl,
  writeln('50 g de puerros'),nl,
  writeln('25 g de zanahorias.'),nl,
  writeln('110 g de pescado'),nl,
  writeln('75 g de lechuga'),nl,
  writeln('75 g de tomate.'),nl,
  writeln('20 g de pan.'),nl,
  writeln('50 g de cerezas.'),nl,
  writeln('****************'),nl,
  writeln('Que lo disfrute'),nl.

%Detalles de la dieta Hipocalorica 1500kcal
menuHipo2():- 
  nl, writeln('Desayuno'),nl,
  writeln('2 yogures desnatados.'),nl,
  writeln('50 g de galletas.'),nl,
  writeln('Cafe o infusion.'),nl,
  writeln('****************'),nl,
  writeln('Merienda'),nl,
  writeln('50 g de biscotes.'),nl,
  writeln('100 g de queso fresco.'),nl,
  writeln('Cafe o infusion.'),nl,
  writeln('****************'),nl,
  writeln('Almuerzo'),nl,
  writeln('150 g de verduras.'),nl,
  writeln('100 g de albondigas.'),nl,
  writeln('50 g de arroz.'),nl,
  writeln('50 g de pan.'),nl,
  writeln('200 g de fresas.'),nl,
  writeln('****************'),nl,
  writeln('Merienda'),nl,
  writeln('25 g de galletas.'),nl,
  writeln('Cafe con 100 ml de leche desnatada.'),nl,
  writeln('****************'),nl,
  writeln('Cena'),nl,
  writeln('150 g de lechuga'),nl,
  writeln('150 g de tomate.'),nl,
  writeln('100 g de patatas'),nl,
  writeln('200 g de naranja.'),nl,
  writeln('3 huevos'),nl,
  writeln('****************'),nl,
  writeln('Que lo disfrute'),nl.
                                                   
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
