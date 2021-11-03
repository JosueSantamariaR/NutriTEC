%dietas
diet([hipocalorica|S],S).   % sobrepeso u obesidad  diabetes, el colesterol o la hipertensi?n arterial
diet([hipercalorica|S],S).  % desnutricion - subir masa muscular
diet([detox|S],S).   % trastornos del sistema digestivo, enfermedades autoinmunes, fibromialgia, sindrome de fatiga cr?nica y la tan temida inflamaci?n
diet([mediterranea|S],S). % enfermedades cardiovasculares, enfermedades cerebrovasculares
diet([keto|S],S). % no diabeticos, bajar de peso
diet([vegetariana|S],S). %
diet([alcalina|S],S). %bajar de peso y regular ph

%hipocalorica
padecimientos([sobrepeso]).
padecimientos([obesidad]).
padecimientos([diabetes]).
padecimientos([colesterol]).
padecimientos([hipertension]).

%hipercalorica.
padecimientos([desnutricion]).
padecimientos([cancer]).
padecimientos([sida]).

%detox
padecimientos([fibromialgia]).
padecimientos([fatiga]).
padecimientos([inflamacion abdominal]).
padecimientos([inflamacion]).
padecimientos([enfermedada autoinmune]).
padecimientos([transtornos sistema digestivo]).


%mediterranea
padecimientos([enfermedad cardiovascular]).
padecimientos([enfermedad cerebrovascular]).


%keto
padecimientos([obesidad]).
padecimientos([epilepsia infantil]).
padecimientos([hiperlipidemia]).


%vegetariana
padecimientos([hipertensión]).
padecimientos([diabetes tipo2]).
padecimientos([obesidad]).

%alcalina
padecimientos([ph alto]).

% hipocalorica 1  a 1200 calorias
% elimina grasas y azucares, no se puede cocinar fritos
% se permite la comida hervida y a la plancha


Padecimientos [[Dislipidemia?Problemas del control del colesterol? ?Dieta baja en grasas?]
Padecimientos [Hipercolesterolemia ?aumento de los niveles considerados normales de colesterol en la sangre? ?Dieta vegana?]
NivelesActividad [Inicial (0-2 veces)|Intermedio (3-4 veces)|Avanzado (5 ? m?s veces)]
Dietas [NombreDieta TipoDieta Calor?as[padecimientos NO recomendados] [padecimiento recomendados] [Actividades NO recomendadas][Actividades recomendadas] [Detalle Dieta]]

%Detalles de la dieta Proteica 3000kcal
menuProte1():-nl, writeln("Desayuno"),nl,
                nl, writeln("Avena con leche banano y frutas."),nl,
                nl, writeln("2 jamon."),nl,
                nl, writeln("2 queso"),nl,
                nl, writeln("****************"),nl,

                nl, writeln("Merienda"),nl,
                nl, writeln("Emparedado con batido de frutas"),nl,
                nl, writeln("****************"),nl,

                nl, writeln("Almuerzo"),nl,
                nl, writeln("150g carne de res"),nl,
                nl, writeln("150g verduras"),nl,
                nl, writeln("100g de frijoles"),nl,
                nl, writeln("****************"),nl,

                nl, writeln("Merienda"),nl,
                nl, writeln("Fruta y 10 almendras"),nl,
                nl, writeln("****************"),nl,

                nl, writeln("Cena"),nl,
                nl, writeln("100g carne de cerdo"),nl,
                nl, writeln("2 huevos"),nl,
                nl, writeln("50g de lentejas"),nl,
                nl, writeln("Ensalada"),nl,

                nl, writeln("****************"),nl,
                nl, writeln("Que lo disfrute"),nl,!.


%Detalles de la dieta Proteica
menuProte2():-nl, writeln("Desayuno"),nl,
                nl, writeln("2 huevos revueltos poco aceite."),nl,
                nl, writeln("2 tostadas"),nl,
                nl, writeln("cafe con leche sin grasa."),nl,
                nl, writeln("****************"),nl,

                nl, writeln("Merienda"),nl,
                nl, writeln("Avena con leche"),nl,
                nl, writeln("1 fruta"),nl,
                nl, writeln("****************"),nl,

                nl, writeln("Almuerzo"),nl,
                nl, writeln("Garbanzos"),nl,
                nl, writeln("2 huevos"),nl,
                nl, writeln("200g Pollo"),nl,
                nl, writeln("50g gramos de arroz"),nl,
                nl, writeln("****************"),nl,

                nl, writeln("Merienda"),nl,
                nl, writeln("Emparedado de jamon"),nl,
                nl, writeln("2 rebanadas de queso"),nl,
                nl, writeln("****************"),nl,

                nl, writeln("Cena"),nl,
                nl, writeln("150g de salmon"),nl,
                nl, writeln("Verduras al vapor"),nl,
                nl, writeln("50g arroz"),nl,
                nl, writeln("Ensalada"),nl,

                nl, writeln("****************"),nl,
                nl, writeln("Que lo disfrute"),nl,!.

                
%Detalles de la dieta Alcalina
menuAlca1():-nl, writeln("Desayuno"),nl,
                nl, writeln("Zumo de tomate"),nl,
                nl, writeln("200g de cereales de avena con leche de almendras"),nl,
                nl, writeln("200 ml de te verde"),nl,
                nl, writeln("****************"),nl,

                nl, writeln("Merienda"),nl,
                nl, writeln("80g de fruta"),nl,
                nl, writeln("****************"),nl,

                nl, writeln("Almuerzo"),nl,
                nl, writeln("350g de sopa de garbanzos"),nl,
                nl, writeln("150ml de manzanilla"),nl,
                nl, writeln("****************"),nl,

                nl, writeln("Merienda"),nl,
                nl, writeln("300ml Batido de leche de almendras con fresas"),nl,
                nl, writeln("****************"),nl,

                nl, writeln("Cena"),nl,
                nl, writeln("400g de sopa de pollo con arroz integral y cebolla"),nl,
                nl, writeln("200ml de te de tilo."),nl,
               
                nl, writeln("****************"),nl,
                nl, writeln("Que lo disfrute"),nl,!.


%Detalles de la dieta Alcalina
menuProte2():-nl, writeln("Desayuno"),nl,
                nl, writeln("250 ml Batido verde de aguacate, limón y acelgas"),nl,
                nl, writeln("150g Tostada de pan integral con pechuga de pavo"),nl,
                nl, writeln("150 ml Té verde"),nl,
                nl, writeln("****************"),nl,

                nl, writeln("Merienda"),nl,
                nl, writeln("200ml de infusión"),nl,
                nl, writeln("Almuerzo"),nl,
                nl, writeln("300g de pasta integral con salteado de pescado"),nl,
                nl, writeln("200ml de manzanilla"),nl,
                nl, writeln("****************"),nl,

                nl, writeln("Merienda"),nl,
                nl, writeln("200ml Zumo de naranja"),nl,
                nl, writeln("****************"),nl,

                nl, writeln("Cena"),nl,
                nl, writeln("300g Hervido de verduras con patata, cebolla y brocoli"),nl,      
                
                nl, writeln("****************"),nl,
                nl, writeln("Que lo disfrute"),nl,!.

               
%Detalles de la dieta Mediterranea 3000kcal
menuMedi1():-nl, writeln("Desayuno"),nl,
                nl, writeln("1 tortilla francesa"),nl,
                nl, writeln("1 kiwi"),nl,
                nl, writeln("cafe o infusion"),nl,
                nl, writeln("****************"),nl,

                nl, writeln("Merienda"),nl,
                nl, writeln("2 Tostadas"),nl,
                nl, writeln("50g de Queso fresco"),nl
                nl, writeln("25g de nueces"),nl
                nl, writeln("****************"),nl,

                nl, writeln("Almuerzo"),nl,
                nl, writeln("250g de Gazpacho"),nl,
                nl, writeln("100g Pescado a la plancha"),nl,
                nl, writeln("50g de Frutos secos"),nl,
                nl, writeln("****************"),nl,

                nl, writeln("Merienda"),nl,
                nl, writeln("150g de Taboule a la plancha"),nl,
                nl, writeln("30g de platano"),nl,
                nl, writeln("****************"),nl,

                nl, writeln("Cena"),nl,
                nl, writeln("150g de Verduras asadas"),nl,
                nl, writeln("100g de Pulpo a la brasa"),nl,
                nl, writeln("1 manzana con canela"),nl,

                nl, writeln("****************"),nl,
                nl, writeln("Que lo disfrute"),nl,!.

%Detalles de la dieta Mediterranea 1500kcal
menuMedi2():-nl, writeln("Desayuno"),nl,
                nl, writeln("60 g de jamon cerrano."),nl,
                nl, writeln("Cafe sin azucar."),nl,
                nl, writeln("1 mandarina."),nl,
                nl, writeln("****************"),nl,

                nl, writeln("Merienda"),nl,
                nl, writeln("100g de yogurt."),nl,
                nl, writeln("50g de fruta fresca."),nl,
                nl, writeln("****************"),nl,

                nl, writeln("Almuerzo"),nl,
                nl, writeln("200g de Espinacas con garbanzos."),nl,
                nl, writeln("1 manzana."),nl,
                nl, writeln("****************"),nl,

                nl, writeln("Merienda"),nl,
                nl, writeln("100g de mecedonia."),nl,
                nl, writeln("Cafe sin azucar."),nl,
                nl, writeln("****************"),nl,

                nl, writeln("Cena"),nl,
                nl, writeln("150g de Ensalada(Tomate, lechuga y cebolla)."),nl,
                nl, writeln("50g de Sardinas."),nl,
                nl, writeln("25g de Cuajada con miel."),nl,

                nl, writeln("****************"),nl,
                nl, writeln("Que lo disfrute"),nl,!.

%Detalles de la dieta Vegetariana 1800kcal
menuVege1():-nl, writeln("Desayuno"),nl,
                nl, writeln("120g de yogurt de soja con miel y fruta."),nl,
                nl, writeln("****************"),nl,

                nl, writeln("Merienda"),nl,
                nl, writeln("40g Pan integral con mermelada"),nl,        
                nl, writeln("****************"),nl,

                nl, writeln("Almuerzo"),nl,
                nl, writeln("80g de lentejas cocidas"),nl,
                nl, writeln("120g de calabacin"),nl,
                nl, writeln("25g de cebolla"),nl,
                nl, writeln("Aceite de oliva"),nl,
                nl, writeln("70g de pan integral"),nl,
                nl, writeln("80g de tomate picado"),nl,
                nl, writeln("40g de fruta"),nl,
                nl, writeln("****************"),nl,

                nl, writeln("Merienda"),nl,
                nl, writeln("Frutos secos"),nl,
                nl, writeln("****************"),nl,

                nl, writeln("Cena"),nl,
                nl, writeln("200g de tomate con 5 nueces"),nl,
                nl, writeln("50g de tofu"),nl,
                nl, writeln("20g de cebolla"),nl,
                nl, writeln("20g de calabacin"),nl,
                nl, writeln("200g de papas al horno"),nl,

                nl, writeln("****************"),nl,
                nl, writeln("Que lo disfrute"),nl,!.

%Detalles de la dieta Vegetariana 2500kcal
menuVege2():-nl, writeln("Desayuno"),nl,
                nl, writeln("40g tostadas integrales"),nl,
                nl, writeln("200 ml de batido de soja con cacao en polvo"),nl,
                nl, writeln("40g de fruta"),nl,
                nl, writeln("****************"),nl,

                nl, writeln("Merienda"),nl,
                nl, writeln("40 gramos de frutos secos"),nl,
                nl, writeln("****************"),nl,

                nl, writeln("Almuerzo"),nl,
                nl, writeln("80g de arroz"),nl,
                nl, writeln("30g de hongos"),nl,
                nl, writeln("30g de cebolla"),nl,
                nl, writeln("3 canelones"),nl,
                nl, writeln("100 de bechamel"),nl,
                nl, writeln("200g de vegetales salteados"),nl,
                nl, writeln("****************"),nl,

                nl, writeln("Merienda"),nl,
                nl, writeln("2 yogures de soja (150g)"),nl,
                nl, writeln("40g de galletas integrales"),nl,
                nl, writeln("****************"),nl,

                nl, writeln("Cena"),nl,
                nl, writeln("60g de arroz"),nl,
                nl, writeln("100 g de espárragos"),nl,
                nl, writeln("45g de cebolla"),nl,
                nl, writeln("30g de zanahoria"),nl,
                nl, writeln("120g de tomate"),nl,
                nl, writeln("100ml de vino blanco"),nl,
                nl, writeln("70g de pan integral"),nl,
                nl, writeln("40g  de fruta"),nl,

                nl, writeln("****************"),nl,
                nl, writeln("Que lo disfrute"),nl,!.

%Detalles de la dieta keto kcal
menuKeto1():-nl, writeln("Desayuno"),nl,
                nl, writeln("tortitas"),nl,
                nl, writeln("2 huevos"),nl,
                nl, writeln("2 cucharadas de aceite de oliva"),nl,
                nl, writeln("2 cucharadas de jarabe de arce"),nl,
                nl, writeln("Esencia de vainilla"),nl,
                nl, writeln("1 cucharada de levadura en polvo"),nl,
                nl, writeln("120 gr. de harina"),nl,
                nl, writeln("leche de almendra"),nl,
                nl, writeln("2 cucharadas de mantequilla"),nl,

                nl, writeln("****************"),nl,

                nl, writeln("Merienda"),nl,
                nl, writeln("chips de parmesano"),nl,
                nl, writeln("50g queso parmesano "),nl
                nl, writeln("Albahaca"),nl
                nl, writeln("Sal"),nl
                nl, writeln("Pimienta"),nl
                nl, writeln("****************"),nl,

                nl, writeln("Almuerzo"),nl,
                nl, writeln("1 filete de salmon"),nl,
                nl, writeln("100 gr de brocoli"),nl,
                nl, writeln("3 cucharadas de almendras"),nl,
                nl, writeln("Pimienta"),nl,
                nl, writeln("nuez moscada"),nl,
                nl, writeln("Canela"),nl,
                nl, writeln("20g de kale"),nl,

                nl, writeln("****************"),nl,

                nl, writeln("Merienda"),nl,
                nl, writeln("100 gr de cecina o jamon"),nl,

                nl, writeln("****************"),nl,

                nl, writeln("Cena"),nl,
                nl, writeln("150 gr de ternera"),nl,
                nl, writeln("60 gr de col pak choi"),nl,
                nl, writeln("2 unidades de citronela"),nl,
                nl, writeln("1 manzana con canela"),nl,
                nl, writeln("Medio pimiento rojo"),nl,
                nl, writeln("50 gr de kale"),nl,
                nl, writeln("Caldo de huesos"),nl,

                nl, writeln("****************"),nl,
                nl, writeln("Que lo disfrute"),nl,!.
%Hacer keto2222

%Detalles de la dieta keto kcal
menuKeto1():-nl, writeln("Desayuno"),nl,
                nl, writeln("tortitas"),nl,
                nl, writeln("2 huevos"),nl,
                nl, writeln("2 cucharadas de aceite de oliva"),nl,
                nl, writeln("2 cucharadas de jarabe de arce"),nl,
                nl, writeln("Esencia de vainilla"),nl,
                nl, writeln("1 cucharada de levadura en polvo"),nl,
                nl, writeln("120 gr. de harina"),nl,
                nl, writeln("leche de almendra"),nl,
                nl, writeln("2 cucharadas de mantequilla"),nl,

                nl, writeln("****************"),nl,

                nl, writeln("Merienda"),nl,
                nl, writeln("chips de parmesano"),nl,
                nl, writeln("50g queso parmesano "),nl
                nl, writeln("Albahaca"),nl
                nl, writeln("Sal"),nl
                nl, writeln("Pimienta"),nl
                nl, writeln("****************"),nl,

                nl, writeln("Almuerzo"),nl,
                nl, writeln("1 filete de salmon"),nl,
                nl, writeln("100 gr de brocoli"),nl,
                nl, writeln("3 cucharadas de almendras"),nl,
                nl, writeln("Pimienta"),nl,
                nl, writeln("nuez moscada"),nl,
                nl, writeln("Canela"),nl,
                nl, writeln("20g de kale"),nl,

                nl, writeln("****************"),nl,

                nl, writeln("Merienda"),nl,
                nl, writeln("100 gr de cecina o jamon"),nl,

                nl, writeln("****************"),nl,

                nl, writeln("Cena"),nl,
                nl, writeln("150 gr de ternera"),nl,
                nl, writeln("60 gr de col pak choi"),nl,
                nl, writeln("2 unidades de citronela"),nl,
                nl, writeln("1 manzana con canela"),nl,
                nl, writeln("Medio pimiento rojo"),nl,
                nl, writeln("50 gr de kale"),nl,
                nl, writeln("Caldo de huesos"),nl,

                nl, writeln("****************"),nl,
                nl, writeln("Que lo disfrute"),nl,!.

%Detalles de la dieta keto kcal
menuKeto1():-nl, writeln("Desayuno"),nl,
                nl, writeln("tortitas"),nl,
                nl, writeln("2 huevos"),nl,
                nl, writeln("2 cucharadas de aceite de oliva"),nl,
                nl, writeln("2 cucharadas de jarabe de arce"),nl,
                nl, writeln("Esencia de vainilla"),nl,
                nl, writeln("1 cucharada de levadura en polvo"),nl,
                nl, writeln("120 gr. de harina"),nl,
                nl, writeln("leche de almendra"),nl,
                nl, writeln("2 cucharadas de mantequilla"),nl,

                nl, writeln("****************"),nl,

                nl, writeln("Merienda"),nl,
                nl, writeln("chips de parmesano"),nl,
                nl, writeln("50g queso parmesano "),nl
                nl, writeln("Albahaca"),nl
                nl, writeln("Sal"),nl
                nl, writeln("Pimienta"),nl
                nl, writeln("****************"),nl,

                nl, writeln("Almuerzo"),nl,
                nl, writeln("1 filete de salmon"),nl,
                nl, writeln("100 gr de brocoli"),nl,
                nl, writeln("3 cucharadas de almendras"),nl,
                nl, writeln("Pimienta"),nl,
                nl, writeln("nuez moscada"),nl,
                nl, writeln("Canela"),nl,
                nl, writeln("20g de kale"),nl,

                nl, writeln("****************"),nl,

                nl, writeln("Merienda"),nl,
                nl, writeln("100 gr de cecina o jamon"),nl,

                nl, writeln("****************"),nl,

                nl, writeln("Cena"),nl,
                nl, writeln("150 gr de ternera"),nl,
                nl, writeln("60 gr de col pak choi"),nl,
                nl, writeln("2 unidades de citronela"),nl,
                nl, writeln("1 manzana con canela"),nl,
                nl, writeln("Medio pimiento rojo"),nl,
                nl, writeln("50 gr de kale"),nl,
                nl, writeln("Caldo de huesos"),nl,

                nl, writeln("****************"),nl,
                nl, writeln("Que lo disfrute"),nl,!.

%Detalles de la dieta keto kcal
menuKeto1():-nl, writeln("Desayuno"),nl,
                nl, writeln("tortitas"),nl,
                nl, writeln("2 huevos"),nl,
                nl, writeln("2 cucharadas de aceite de oliva"),nl,
                nl, writeln("2 cucharadas de jarabe de arce"),nl,
                nl, writeln("Esencia de vainilla"),nl,
                nl, writeln("1 cucharada de levadura en polvo"),nl,
                nl, writeln("120 gr. de harina"),nl,
                nl, writeln("leche de almendra"),nl,
                nl, writeln("2 cucharadas de mantequilla"),nl,

                nl, writeln("****************"),nl,

                nl, writeln("Merienda"),nl,
                nl, writeln("chips de parmesano"),nl,
                nl, writeln("50g queso parmesano "),nl
                nl, writeln("Albahaca"),nl
                nl, writeln("Sal"),nl
                nl, writeln("Pimienta"),nl
                nl, writeln("****************"),nl,

                nl, writeln("Almuerzo"),nl,
                nl, writeln("1 filete de salmon"),nl,
                nl, writeln("100 gr de brocoli"),nl,
                nl, writeln("3 cucharadas de almendras"),nl,
                nl, writeln("Pimienta"),nl,
                nl, writeln("nuez moscada"),nl,
                nl, writeln("Canela"),nl,
                nl, writeln("20g de kale"),nl,

                nl, writeln("****************"),nl,

                nl, writeln("Merienda"),nl,
                nl, writeln("100 gr de cecina o jamon"),nl,

                nl, writeln("****************"),nl,

                nl, writeln("Cena"),nl,
                nl, writeln("150 gr de ternera"),nl,
                nl, writeln("60 gr de col pak choi"),nl,
                nl, writeln("2 unidades de citronela"),nl,
                nl, writeln("1 manzana con canela"),nl,
                nl, writeln("Medio pimiento rojo"),nl,
                nl, writeln("50 gr de kale"),nl,
                nl, writeln("Caldo de huesos"),nl,

                nl, writeln("****************"),nl,
                nl, writeln("Que lo disfrute"),nl,!.

%Detalles de la dieta keto kcal
menuKeto1():-nl, writeln("Desayuno"),nl,
                nl, writeln("tortitas"),nl,
                nl, writeln("2 huevos"),nl,
                nl, writeln("2 cucharadas de aceite de oliva"),nl,
                nl, writeln("2 cucharadas de jarabe de arce"),nl,
                nl, writeln("Esencia de vainilla"),nl,
                nl, writeln("1 cucharada de levadura en polvo"),nl,
                nl, writeln("120 gr. de harina"),nl,
                nl, writeln("leche de almendra"),nl,
                nl, writeln("2 cucharadas de mantequilla"),nl,

                nl, writeln("****************"),nl,

                nl, writeln("Merienda"),nl,
                nl, writeln("chips de parmesano"),nl,
                nl, writeln("50g queso parmesano "),nl
                nl, writeln("Albahaca"),nl
                nl, writeln("Sal"),nl
                nl, writeln("Pimienta"),nl
                nl, writeln("****************"),nl,

                nl, writeln("Almuerzo"),nl,
                nl, writeln("1 filete de salmon"),nl,
                nl, writeln("100 gr de brocoli"),nl,
                nl, writeln("3 cucharadas de almendras"),nl,
                nl, writeln("Pimienta"),nl,
                nl, writeln("nuez moscada"),nl,
                nl, writeln("Canela"),nl,
                nl, writeln("20g de kale"),nl,

                nl, writeln("****************"),nl,

                nl, writeln("Merienda"),nl,
                nl, writeln("100 gr de cecina o jamon"),nl,

                nl, writeln("****************"),nl,

                nl, writeln("Cena"),nl,
                nl, writeln("150 gr de ternera"),nl,
                nl, writeln("60 gr de col pak choi"),nl,
                nl, writeln("2 unidades de citronela"),nl,
                nl, writeln("1 manzana con canela"),nl,
                nl, writeln("Medio pimiento rojo"),nl,
                nl, writeln("50 gr de kale"),nl,
                nl, writeln("Caldo de huesos"),nl,

                nl, writeln("****************"),nl,
                nl, writeln("Que lo disfrute"),nl,!.

%Detalles de la dieta keto kcal
menuKeto1():-nl, writeln("Desayuno"),nl,
                nl, writeln("tortitas"),nl,
                nl, writeln("2 huevos"),nl,
                nl, writeln("2 cucharadas de aceite de oliva"),nl,
                nl, writeln("2 cucharadas de jarabe de arce"),nl,
                nl, writeln("Esencia de vainilla"),nl,
                nl, writeln("1 cucharada de levadura en polvo"),nl,
                nl, writeln("120 gr. de harina"),nl,
                nl, writeln("leche de almendra"),nl,
                nl, writeln("2 cucharadas de mantequilla"),nl,

                nl, writeln("****************"),nl,

                nl, writeln("Merienda"),nl,
                nl, writeln("chips de parmesano"),nl,
                nl, writeln("50g queso parmesano "),nl
                nl, writeln("Albahaca"),nl
                nl, writeln("Sal"),nl
                nl, writeln("Pimienta"),nl
                nl, writeln("****************"),nl,

                nl, writeln("Almuerzo"),nl,
                nl, writeln("1 filete de salmon"),nl,
                nl, writeln("100 gr de brocoli"),nl,
                nl, writeln("3 cucharadas de almendras"),nl,
                nl, writeln("Pimienta"),nl,
                nl, writeln("nuez moscada"),nl,
                nl, writeln("Canela"),nl,
                nl, writeln("20g de kale"),nl,

                nl, writeln("****************"),nl,

                nl, writeln("Merienda"),nl,
                nl, writeln("100 gr de cecina o jamon"),nl,

                nl, writeln("****************"),nl,

                nl, writeln("Cena"),nl,
                nl, writeln("150 gr de ternera"),nl,
                nl, writeln("60 gr de col pak choi"),nl,
                nl, writeln("2 unidades de citronela"),nl,
                nl, writeln("1 manzana con canela"),nl,
                nl, writeln("Medio pimiento rojo"),nl,
                nl, writeln("50 gr de kale"),nl,
                nl, writeln("Caldo de huesos"),nl,

                nl, writeln("****************"),nl,
                nl, writeln("Que lo disfrute"),nl,!.

%Detalles de la dieta keto kcal
menuKeto1():-nl, writeln("Desayuno"),nl,
                nl, writeln("tortitas"),nl,
                nl, writeln("2 huevos"),nl,
                nl, writeln("2 cucharadas de aceite de oliva"),nl,
                nl, writeln("2 cucharadas de jarabe de arce"),nl,
                nl, writeln("Esencia de vainilla"),nl,
                nl, writeln("1 cucharada de levadura en polvo"),nl,
                nl, writeln("120 gr. de harina"),nl,
                nl, writeln("leche de almendra"),nl,
                nl, writeln("2 cucharadas de mantequilla"),nl,

                nl, writeln("****************"),nl,

                nl, writeln("Merienda"),nl,
                nl, writeln("chips de parmesano"),nl,
                nl, writeln("50g queso parmesano "),nl
                nl, writeln("Albahaca"),nl
                nl, writeln("Sal"),nl
                nl, writeln("Pimienta"),nl
                nl, writeln("****************"),nl,

                nl, writeln("Almuerzo"),nl,
                nl, writeln("1 filete de salmon"),nl,
                nl, writeln("100 gr de brocoli"),nl,
                nl, writeln("3 cucharadas de almendras"),nl,
                nl, writeln("Pimienta"),nl,
                nl, writeln("nuez moscada"),nl,
                nl, writeln("Canela"),nl,
                nl, writeln("20g de kale"),nl,

                nl, writeln("****************"),nl,

                nl, writeln("Merienda"),nl,
                nl, writeln("100 gr de cecina o jamon"),nl,

                nl, writeln("****************"),nl,

                nl, writeln("Cena"),nl,
                nl, writeln("150 gr de ternera"),nl,
                nl, writeln("60 gr de col pak choi"),nl,
                nl, writeln("2 unidades de citronela"),nl,
                nl, writeln("1 manzana con canela"),nl,
                nl, writeln("Medio pimiento rojo"),nl,
                nl, writeln("50 gr de kale"),nl,
                nl, writeln("Caldo de huesos"),nl,

                nl, writeln("****************"),nl,
                nl, writeln("Que lo disfrute"),nl,!.

%Detalles de la dieta keto kcal
menuKeto1():-nl, writeln("Desayuno"),nl,
                nl, writeln("tortitas"),nl,
                nl, writeln("2 huevos"),nl,
                nl, writeln("2 cucharadas de aceite de oliva"),nl,
                nl, writeln("2 cucharadas de jarabe de arce"),nl,
                nl, writeln("Esencia de vainilla"),nl,
                nl, writeln("1 cucharada de levadura en polvo"),nl,
                nl, writeln("120 gr. de harina"),nl,
                nl, writeln("leche de almendra"),nl,
                nl, writeln("2 cucharadas de mantequilla"),nl,

                nl, writeln("****************"),nl,

                nl, writeln("Merienda"),nl,
                nl, writeln("chips de parmesano"),nl,
                nl, writeln("50g queso parmesano "),nl
                nl, writeln("Albahaca"),nl
                nl, writeln("Sal"),nl
                nl, writeln("Pimienta"),nl
                nl, writeln("****************"),nl,

                nl, writeln("Almuerzo"),nl,
                nl, writeln("1 filete de salmon"),nl,
                nl, writeln("100 gr de brocoli"),nl,
                nl, writeln("3 cucharadas de almendras"),nl,
                nl, writeln("Pimienta"),nl,
                nl, writeln("nuez moscada"),nl,
                nl, writeln("Canela"),nl,
                nl, writeln("20g de kale"),nl,

                nl, writeln("****************"),nl,

                nl, writeln("Merienda"),nl,
                nl, writeln("100 gr de cecina o jamon"),nl,

                nl, writeln("****************"),nl,

                nl, writeln("Cena"),nl,
                nl, writeln("150 gr de ternera"),nl,
                nl, writeln("60 gr de col pak choi"),nl,
                nl, writeln("2 unidades de citronela"),nl,
                nl, writeln("1 manzana con canela"),nl,
                nl, writeln("Medio pimiento rojo"),nl,
                nl, writeln("50 gr de kale"),nl,
                nl, writeln("Caldo de huesos"),nl,

                nl, writeln("****************"),nl,
                nl, writeln("Que lo disfrute"),nl,!.

%Detalles de la dieta keto kcal
menuKeto1():-nl, writeln("Desayuno"),nl,
                nl, writeln("tortitas"),nl,
                nl, writeln("2 huevos"),nl,
                nl, writeln("2 cucharadas de aceite de oliva"),nl,
                nl, writeln("2 cucharadas de jarabe de arce"),nl,
                nl, writeln("Esencia de vainilla"),nl,
                nl, writeln("1 cucharada de levadura en polvo"),nl,
                nl, writeln("120 gr. de harina"),nl,
                nl, writeln("leche de almendra"),nl,
                nl, writeln("2 cucharadas de mantequilla"),nl,

                nl, writeln("****************"),nl,

                nl, writeln("Merienda"),nl,
                nl, writeln("chips de parmesano"),nl,
                nl, writeln("50g queso parmesano "),nl
                nl, writeln("Albahaca"),nl
                nl, writeln("Sal"),nl
                nl, writeln("Pimienta"),nl
                nl, writeln("****************"),nl,

                nl, writeln("Almuerzo"),nl,
                nl, writeln("1 filete de salmon"),nl,
                nl, writeln("100 gr de brocoli"),nl,
                nl, writeln("3 cucharadas de almendras"),nl,
                nl, writeln("Pimienta"),nl,
                nl, writeln("nuez moscada"),nl,
                nl, writeln("Canela"),nl,
                nl, writeln("20g de kale"),nl,

                nl, writeln("****************"),nl,

                nl, writeln("Merienda"),nl,
                nl, writeln("100 gr de cecina o jamon"),nl,

                nl, writeln("****************"),nl,

                nl, writeln("Cena"),nl,
                nl, writeln("150 gr de ternera"),nl,
                nl, writeln("60 gr de col pak choi"),nl,
                nl, writeln("2 unidades de citronela"),nl,
                nl, writeln("1 manzana con canela"),nl,
                nl, writeln("Medio pimiento rojo"),nl,
                nl, writeln("50 gr de kale"),nl,
                nl, writeln("Caldo de huesos"),nl,

                nl, writeln("****************"),nl,
                nl, writeln("Que lo disfrute"),nl,!.

%Detalles de la dieta keto kcal
menuKeto1():-nl, writeln("Desayuno"),nl,
                nl, writeln("tortitas"),nl,
                nl, writeln("2 huevos"),nl,
                nl, writeln("2 cucharadas de aceite de oliva"),nl,
                nl, writeln("2 cucharadas de jarabe de arce"),nl,
                nl, writeln("Esencia de vainilla"),nl,
                nl, writeln("1 cucharada de levadura en polvo"),nl,
                nl, writeln("120 gr. de harina"),nl,
                nl, writeln("leche de almendra"),nl,
                nl, writeln("2 cucharadas de mantequilla"),nl,

                nl, writeln("****************"),nl,

                nl, writeln("Merienda"),nl,
                nl, writeln("chips de parmesano"),nl,
                nl, writeln("50g queso parmesano "),nl
                nl, writeln("Albahaca"),nl
                nl, writeln("Sal"),nl
                nl, writeln("Pimienta"),nl
                nl, writeln("****************"),nl,

                nl, writeln("Almuerzo"),nl,
                nl, writeln("1 filete de salmon"),nl,
                nl, writeln("100 gr de brocoli"),nl,
                nl, writeln("3 cucharadas de almendras"),nl,
                nl, writeln("Pimienta"),nl,
                nl, writeln("nuez moscada"),nl,
                nl, writeln("Canela"),nl,
                nl, writeln("20g de kale"),nl,

                nl, writeln("****************"),nl,

                nl, writeln("Merienda"),nl,
                nl, writeln("100 gr de cecina o jamon"),nl,

                nl, writeln("****************"),nl,

                nl, writeln("Cena"),nl,
                nl, writeln("150 gr de ternera"),nl,
                nl, writeln("60 gr de col pak choi"),nl,
                nl, writeln("2 unidades de citronela"),nl,
                nl, writeln("1 manzana con canela"),nl,
                nl, writeln("Medio pimiento rojo"),nl,
                nl, writeln("50 gr de kale"),nl,
                nl, writeln("Caldo de huesos"),nl,

                nl, writeln("****************"),nl,
                nl, writeln("Que lo disfrute"),nl,!.

%Detalles de la dieta keto kcal
menuKeto1():-nl, writeln("Desayuno"),nl,
                nl, writeln("tortitas"),nl,
                nl, writeln("2 huevos"),nl,
                nl, writeln("2 cucharadas de aceite de oliva"),nl,
                nl, writeln("2 cucharadas de jarabe de arce"),nl,
                nl, writeln("Esencia de vainilla"),nl,
                nl, writeln("1 cucharada de levadura en polvo"),nl,
                nl, writeln("120 gr. de harina"),nl,
                nl, writeln("leche de almendra"),nl,
                nl, writeln("2 cucharadas de mantequilla"),nl,

                nl, writeln("****************"),nl,

                nl, writeln("Merienda"),nl,
                nl, writeln("chips de parmesano"),nl,
                nl, writeln("50g queso parmesano "),nl
                nl, writeln("Albahaca"),nl
                nl, writeln("Sal"),nl
                nl, writeln("Pimienta"),nl
                nl, writeln("****************"),nl,

                nl, writeln("Almuerzo"),nl,
                nl, writeln("1 filete de salmon"),nl,
                nl, writeln("100 gr de brocoli"),nl,
                nl, writeln("3 cucharadas de almendras"),nl,
                nl, writeln("Pimienta"),nl,
                nl, writeln("nuez moscada"),nl,
                nl, writeln("Canela"),nl,
                nl, writeln("20g de kale"),nl,

                nl, writeln("****************"),nl,

                nl, writeln("Merienda"),nl,
                nl, writeln("100 gr de cecina o jamon"),nl,

                nl, writeln("****************"),nl,

                nl, writeln("Cena"),nl,
                nl, writeln("150 gr de ternera"),nl,
                nl, writeln("60 gr de col pak choi"),nl,
                nl, writeln("2 unidades de citronela"),nl,
                nl, writeln("1 manzana con canela"),nl,
                nl, writeln("Medio pimiento rojo"),nl,
                nl, writeln("50 gr de kale"),nl,
                nl, writeln("Caldo de huesos"),nl,

                nl, writeln("****************"),nl,
                nl, writeln("Que lo disfrute"),nl,!.

%Detalles de la dieta keto kcal
menuKeto1():-nl, writeln("Desayuno"),nl,
                nl, writeln("tortitas"),nl,
                nl, writeln("2 huevos"),nl,
                nl, writeln("2 cucharadas de aceite de oliva"),nl,
                nl, writeln("2 cucharadas de jarabe de arce"),nl,
                nl, writeln("Esencia de vainilla"),nl,
                nl, writeln("1 cucharada de levadura en polvo"),nl,
                nl, writeln("120 gr. de harina"),nl,
                nl, writeln("leche de almendra"),nl,
                nl, writeln("2 cucharadas de mantequilla"),nl,

                nl, writeln("****************"),nl,

                nl, writeln("Merienda"),nl,
                nl, writeln("chips de parmesano"),nl,
                nl, writeln("50g queso parmesano "),nl
                nl, writeln("Albahaca"),nl
                nl, writeln("Sal"),nl
                nl, writeln("Pimienta"),nl
                nl, writeln("****************"),nl,

                nl, writeln("Almuerzo"),nl,
                nl, writeln("1 filete de salmon"),nl,
                nl, writeln("100 gr de brocoli"),nl,
                nl, writeln("3 cucharadas de almendras"),nl,
                nl, writeln("Pimienta"),nl,
                nl, writeln("nuez moscada"),nl,
                nl, writeln("Canela"),nl,
                nl, writeln("20g de kale"),nl,

                nl, writeln("****************"),nl,

                nl, writeln("Merienda"),nl,
                nl, writeln("100 gr de cecina o jamon"),nl,

                nl, writeln("****************"),nl,

                nl, writeln("Cena"),nl,
                nl, writeln("150 gr de ternera"),nl,
                nl, writeln("60 gr de col pak choi"),nl,
                nl, writeln("2 unidades de citronela"),nl,
                nl, writeln("1 manzana con canela"),nl,
                nl, writeln("Medio pimiento rojo"),nl,
                nl, writeln("50 gr de kale"),nl,
                nl, writeln("Caldo de huesos"),nl,

                nl, writeln("****************"),nl,
                nl, writeln("Que lo disfrute"),nl,!.

%Detalles de la dieta keto kcal
menuKeto1():-nl, writeln("Desayuno"),nl,
                nl, writeln("tortitas"),nl,
                nl, writeln("2 huevos"),nl,
                nl, writeln("2 cucharadas de aceite de oliva"),nl,
                nl, writeln("2 cucharadas de jarabe de arce"),nl,
                nl, writeln("Esencia de vainilla"),nl,
                nl, writeln("1 cucharada de levadura en polvo"),nl,
                nl, writeln("120 gr. de harina"),nl,
                nl, writeln("leche de almendra"),nl,
                nl, writeln("2 cucharadas de mantequilla"),nl,

                nl, writeln("****************"),nl,

                nl, writeln("Merienda"),nl,
                nl, writeln("chips de parmesano"),nl,
                nl, writeln("50g queso parmesano "),nl
                nl, writeln("Albahaca"),nl
                nl, writeln("Sal"),nl
                nl, writeln("Pimienta"),nl
                nl, writeln("****************"),nl,

                nl, writeln("Almuerzo"),nl,
                nl, writeln("1 filete de salmon"),nl,
                nl, writeln("100 gr de brocoli"),nl,
                nl, writeln("3 cucharadas de almendras"),nl,
                nl, writeln("Pimienta"),nl,
                nl, writeln("nuez moscada"),nl,
                nl, writeln("Canela"),nl,
                nl, writeln("20g de kale"),nl,

                nl, writeln("****************"),nl,

                nl, writeln("Merienda"),nl,
                nl, writeln("100 gr de cecina o jamon"),nl,

                nl, writeln("****************"),nl,

                nl, writeln("Cena"),nl,
                nl, writeln("150 gr de ternera"),nl,
                nl, writeln("60 gr de col pak choi"),nl,
                nl, writeln("2 unidades de citronela"),nl,
                nl, writeln("1 manzana con canela"),nl,
                nl, writeln("Medio pimiento rojo"),nl,
                nl, writeln("50 gr de kale"),nl,
                nl, writeln("Caldo de huesos"),nl,

                nl, writeln("****************"),nl,
                nl, writeln("Que lo disfrute"),nl,!.

%Detalles de la dieta keto kcal
menuKeto1():-nl, writeln("Desayuno"),nl,
                nl, writeln("tortitas"),nl,
                nl, writeln("2 huevos"),nl,
                nl, writeln("2 cucharadas de aceite de oliva"),nl,
                nl, writeln("2 cucharadas de jarabe de arce"),nl,
                nl, writeln("Esencia de vainilla"),nl,
                nl, writeln("1 cucharada de levadura en polvo"),nl,
                nl, writeln("120 gr. de harina"),nl,
                nl, writeln("leche de almendra"),nl,
                nl, writeln("2 cucharadas de mantequilla"),nl,

                nl, writeln("****************"),nl,

                nl, writeln("Merienda"),nl,
                nl, writeln("chips de parmesano"),nl,
                nl, writeln("50g queso parmesano "),nl
                nl, writeln("Albahaca"),nl
                nl, writeln("Sal"),nl
                nl, writeln("Pimienta"),nl
                nl, writeln("****************"),nl,

                nl, writeln("Almuerzo"),nl,
                nl, writeln("1 filete de salmon"),nl,
                nl, writeln("100 gr de brocoli"),nl,
                nl, writeln("3 cucharadas de almendras"),nl,
                nl, writeln("Pimienta"),nl,
                nl, writeln("nuez moscada"),nl,
                nl, writeln("Canela"),nl,
                nl, writeln("20g de kale"),nl,

                nl, writeln("****************"),nl,

                nl, writeln("Merienda"),nl,
                nl, writeln("100 gr de cecina o jamon"),nl,

                nl, writeln("****************"),nl,

                nl, writeln("Cena"),nl,
                nl, writeln("150 gr de ternera"),nl,
                nl, writeln("60 gr de col pak choi"),nl,
                nl, writeln("2 unidades de citronela"),nl,
                nl, writeln("1 manzana con canela"),nl,
                nl, writeln("Medio pimiento rojo"),nl,
                nl, writeln("50 gr de kale"),nl,
                nl, writeln("Caldo de huesos"),nl,

                nl, writeln("****************"),nl,
                nl, writeln("Que lo disfrute"),nl,!.

%Detalles de la dieta keto kcal
menuKeto1():-nl, writeln("Desayuno"),nl,
                nl, writeln("tortitas"),nl,
                nl, writeln("2 huevos"),nl,
                nl, writeln("2 cucharadas de aceite de oliva"),nl,
                nl, writeln("2 cucharadas de jarabe de arce"),nl,
                nl, writeln("Esencia de vainilla"),nl,
                nl, writeln("1 cucharada de levadura en polvo"),nl,
                nl, writeln("120 gr. de harina"),nl,
                nl, writeln("leche de almendra"),nl,
                nl, writeln("2 cucharadas de mantequilla"),nl,

                nl, writeln("****************"),nl,

                nl, writeln("Merienda"),nl,
                nl, writeln("chips de parmesano"),nl,
                nl, writeln("50g queso parmesano "),nl
                nl, writeln("Albahaca"),nl
                nl, writeln("Sal"),nl
                nl, writeln("Pimienta"),nl
                nl, writeln("****************"),nl,

                nl, writeln("Almuerzo"),nl,
                nl, writeln("1 filete de salmon"),nl,
                nl, writeln("100 gr de brocoli"),nl,
                nl, writeln("3 cucharadas de almendras"),nl,
                nl, writeln("Pimienta"),nl,
                nl, writeln("nuez moscada"),nl,
                nl, writeln("Canela"),nl,
                nl, writeln("20g de kale"),nl,

                nl, writeln("****************"),nl,

                nl, writeln("Merienda"),nl,
                nl, writeln("100 gr de cecina o jamon"),nl,

                nl, writeln("****************"),nl,

                nl, writeln("Cena"),nl,
                nl, writeln("150 gr de ternera"),nl,
                nl, writeln("60 gr de col pak choi"),nl,
                nl, writeln("2 unidades de citronela"),nl,
                nl, writeln("1 manzana con canela"),nl,
                nl, writeln("Medio pimiento rojo"),nl,
                nl, writeln("50 gr de kale"),nl,
                nl, writeln("Caldo de huesos"),nl,

                nl, writeln("****************"),nl,
                nl, writeln("Que lo disfrute"),nl,!.

%Detalles de la dieta keto kcal
menuKeto1():-nl, writeln("Desayuno"),nl,
                nl, writeln("tortitas"),nl,
                nl, writeln("2 huevos"),nl,
                nl, writeln("2 cucharadas de aceite de oliva"),nl,
                nl, writeln("2 cucharadas de jarabe de arce"),nl,
                nl, writeln("Esencia de vainilla"),nl,
                nl, writeln("1 cucharada de levadura en polvo"),nl,
                nl, writeln("120 gr. de harina"),nl,
                nl, writeln("leche de almendra"),nl,
                nl, writeln("2 cucharadas de mantequilla"),nl,

                nl, writeln("****************"),nl,

                nl, writeln("Merienda"),nl,
                nl, writeln("chips de parmesano"),nl,
                nl, writeln("50g queso parmesano "),nl
                nl, writeln("Albahaca"),nl
                nl, writeln("Sal"),nl
                nl, writeln("Pimienta"),nl
                nl, writeln("****************"),nl,

                nl, writeln("Almuerzo"),nl,
                nl, writeln("1 filete de salmon"),nl,
                nl, writeln("100 gr de brocoli"),nl,
                nl, writeln("3 cucharadas de almendras"),nl,
                nl, writeln("Pimienta"),nl,
                nl, writeln("nuez moscada"),nl,
                nl, writeln("Canela"),nl,
                nl, writeln("20g de kale"),nl,

                nl, writeln("****************"),nl,

                nl, writeln("Merienda"),nl,
                nl, writeln("100 gr de cecina o jamon"),nl,

                nl, writeln("****************"),nl,

                nl, writeln("Cena"),nl,
                nl, writeln("150 gr de ternera"),nl,
                nl, writeln("60 gr de col pak choi"),nl,
                nl, writeln("2 unidades de citronela"),nl,
                nl, writeln("1 manzana con canela"),nl,
                nl, writeln("Medio pimiento rojo"),nl,
                nl, writeln("50 gr de kale"),nl,
                nl, writeln("Caldo de huesos"),nl,

                nl, writeln("****************"),nl,
                nl, writeln("Que lo disfrute"),nl,!.

%Detalles de la dieta keto kcal
menuKeto1():-nl, writeln("Desayuno"),nl,
                nl, writeln("tortitas"),nl,
                nl, writeln("2 huevos"),nl,
                nl, writeln("2 cucharadas de aceite de oliva"),nl,
                nl, writeln("2 cucharadas de jarabe de arce"),nl,
                nl, writeln("Esencia de vainilla"),nl,
                nl, writeln("1 cucharada de levadura en polvo"),nl,
                nl, writeln("120 gr. de harina"),nl,
                nl, writeln("leche de almendra"),nl,
                nl, writeln("2 cucharadas de mantequilla"),nl,

                nl, writeln("****************"),nl,

                nl, writeln("Merienda"),nl,
                nl, writeln("chips de parmesano"),nl,
                nl, writeln("50g queso parmesano "),nl
                nl, writeln("Albahaca"),nl
                nl, writeln("Sal"),nl
                nl, writeln("Pimienta"),nl
                nl, writeln("****************"),nl,

                nl, writeln("Almuerzo"),nl,
                nl, writeln("1 filete de salmon"),nl,
                nl, writeln("100 gr de brocoli"),nl,
                nl, writeln("3 cucharadas de almendras"),nl,
                nl, writeln("Pimienta"),nl,
                nl, writeln("nuez moscada"),nl,
                nl, writeln("Canela"),nl,
                nl, writeln("20g de kale"),nl,

                nl, writeln("****************"),nl,

                nl, writeln("Merienda"),nl,
                nl, writeln("100 gr de cecina o jamon"),nl,

                nl, writeln("****************"),nl,

                nl, writeln("Cena"),nl,
                nl, writeln("150 gr de ternera"),nl,
                nl, writeln("60 gr de col pak choi"),nl,
                nl, writeln("2 unidades de citronela"),nl,
                nl, writeln("1 manzana con canela"),nl,
                nl, writeln("Medio pimiento rojo"),nl,
                nl, writeln("50 gr de kale"),nl,
                nl, writeln("Caldo de huesos"),nl,

                nl, writeln("****************"),nl,
                nl, writeln("Que lo disfrute"),nl,!.

%Detalles de la dieta keto kcal
menuKeto1():-nl, writeln("Desayuno"),nl,
                nl, writeln("tortitas"),nl,
                nl, writeln("2 huevos"),nl,
                nl, writeln("2 cucharadas de aceite de oliva"),nl,
                nl, writeln("2 cucharadas de jarabe de arce"),nl,
                nl, writeln("Esencia de vainilla"),nl,
                nl, writeln("1 cucharada de levadura en polvo"),nl,
                nl, writeln("120 gr. de harina"),nl,
                nl, writeln("leche de almendra"),nl,
                nl, writeln("2 cucharadas de mantequilla"),nl,

                nl, writeln("****************"),nl,

                nl, writeln("Merienda"),nl,
                nl, writeln("chips de parmesano"),nl,
                nl, writeln("50g queso parmesano "),nl
                nl, writeln("Albahaca"),nl
                nl, writeln("Sal"),nl
                nl, writeln("Pimienta"),nl
                nl, writeln("****************"),nl,

                nl, writeln("Almuerzo"),nl,
                nl, writeln("1 filete de salmon"),nl,
                nl, writeln("100 gr de brocoli"),nl,
                nl, writeln("3 cucharadas de almendras"),nl,
                nl, writeln("Pimienta"),nl,
                nl, writeln("nuez moscada"),nl,
                nl, writeln("Canela"),nl,
                nl, writeln("20g de kale"),nl,

                nl, writeln("****************"),nl,

                nl, writeln("Merienda"),nl,
                nl, writeln("100 gr de cecina o jamon"),nl,

                nl, writeln("****************"),nl,

                nl, writeln("Cena"),nl,
                nl, writeln("150 gr de ternera"),nl,
                nl, writeln("60 gr de col pak choi"),nl,
                nl, writeln("2 unidades de citronela"),nl,
                nl, writeln("1 manzana con canela"),nl,
                nl, writeln("Medio pimiento rojo"),nl,
                nl, writeln("50 gr de kale"),nl,
                nl, writeln("Caldo de huesos"),nl,

                nl, writeln("****************"),nl,
                nl, writeln("Que lo disfrute"),nl,!.

%Detalles de la dieta keto kcal
menuKeto1():-nl, writeln("Desayuno"),nl,
                nl, writeln("tortitas"),nl,
                nl, writeln("2 huevos"),nl,
                nl, writeln("2 cucharadas de aceite de oliva"),nl,
                nl, writeln("2 cucharadas de jarabe de arce"),nl,
                nl, writeln("Esencia de vainilla"),nl,
                nl, writeln("1 cucharada de levadura en polvo"),nl,
                nl, writeln("120 gr. de harina"),nl,
                nl, writeln("leche de almendra"),nl,
                nl, writeln("2 cucharadas de mantequilla"),nl,

                nl, writeln("****************"),nl,

                nl, writeln("Merienda"),nl,
                nl, writeln("chips de parmesano"),nl,
                nl, writeln("50g queso parmesano "),nl
                nl, writeln("Albahaca"),nl
                nl, writeln("Sal"),nl
                nl, writeln("Pimienta"),nl
                nl, writeln("****************"),nl,

                nl, writeln("Almuerzo"),nl,
                nl, writeln("1 filete de salmon"),nl,
                nl, writeln("100 gr de brocoli"),nl,
                nl, writeln("3 cucharadas de almendras"),nl,
                nl, writeln("Pimienta"),nl,
                nl, writeln("nuez moscada"),nl,
                nl, writeln("Canela"),nl,
                nl, writeln("20g de kale"),nl,

                nl, writeln("****************"),nl,

                nl, writeln("Merienda"),nl,
                nl, writeln("100 gr de cecina o jamon"),nl,

                nl, writeln("****************"),nl,

                nl, writeln("Cena"),nl,
                nl, writeln("150 gr de ternera"),nl,
                nl, writeln("60 gr de col pak choi"),nl,
                nl, writeln("2 unidades de citronela"),nl,
                nl, writeln("1 manzana con canela"),nl,
                nl, writeln("Medio pimiento rojo"),nl,
                nl, writeln("50 gr de kale"),nl,
                nl, writeln("Caldo de huesos"),nl,

                nl, writeln("****************"),nl,
                nl, writeln("Que lo disfrute"),nl,!.

%Detalles de la dieta keto kcal
menuKeto1():-nl, writeln("Desayuno"),nl,
                nl, writeln("tortitas"),nl,
                nl, writeln("2 huevos"),nl,
                nl, writeln("2 cucharadas de aceite de oliva"),nl,
                nl, writeln("2 cucharadas de jarabe de arce"),nl,
                nl, writeln("Esencia de vainilla"),nl,
                nl, writeln("1 cucharada de levadura en polvo"),nl,
                nl, writeln("120 gr. de harina"),nl,
                nl, writeln("leche de almendra"),nl,
                nl, writeln("2 cucharadas de mantequilla"),nl,

                nl, writeln("****************"),nl,

                nl, writeln("Merienda"),nl,
                nl, writeln("chips de parmesano"),nl,
                nl, writeln("50g queso parmesano "),nl
                nl, writeln("Albahaca"),nl
                nl, writeln("Sal"),nl
                nl, writeln("Pimienta"),nl
                nl, writeln("****************"),nl,

                nl, writeln("Almuerzo"),nl,
                nl, writeln("1 filete de salmon"),nl,
                nl, writeln("100 gr de brocoli"),nl,
                nl, writeln("3 cucharadas de almendras"),nl,
                nl, writeln("Pimienta"),nl,
                nl, writeln("nuez moscada"),nl,
                nl, writeln("Canela"),nl,
                nl, writeln("20g de kale"),nl,

                nl, writeln("****************"),nl,

                nl, writeln("Merienda"),nl,
                nl, writeln("100 gr de cecina o jamon"),nl,

                nl, writeln("****************"),nl,

                nl, writeln("Cena"),nl,
                nl, writeln("150 gr de ternera"),nl,
                nl, writeln("60 gr de col pak choi"),nl,
                nl, writeln("2 unidades de citronela"),nl,
                nl, writeln("1 manzana con canela"),nl,
                nl, writeln("Medio pimiento rojo"),nl,
                nl, writeln("50 gr de kale"),nl,
                nl, writeln("Caldo de huesos"),nl,

                nl, writeln("****************"),nl,
                nl, writeln("Que lo disfrute"),nl,!.

%Detalles de la dieta keto kcal
menuKeto1():-nl, writeln("Desayuno"),nl,
                nl, writeln("tortitas"),nl,
                nl, writeln("2 huevos"),nl,
                nl, writeln("2 cucharadas de aceite de oliva"),nl,
                nl, writeln("2 cucharadas de jarabe de arce"),nl,
                nl, writeln("Esencia de vainilla"),nl,
                nl, writeln("1 cucharada de levadura en polvo"),nl,
                nl, writeln("120 gr. de harina"),nl,
                nl, writeln("leche de almendra"),nl,
                nl, writeln("2 cucharadas de mantequilla"),nl,

                nl, writeln("****************"),nl,

                nl, writeln("Merienda"),nl,
                nl, writeln("chips de parmesano"),nl,
                nl, writeln("50g queso parmesano "),nl
                nl, writeln("Albahaca"),nl
                nl, writeln("Sal"),nl
                nl, writeln("Pimienta"),nl
                nl, writeln("****************"),nl,

                nl, writeln("Almuerzo"),nl,
                nl, writeln("1 filete de salmon"),nl,
                nl, writeln("100 gr de brocoli"),nl,
                nl, writeln("3 cucharadas de almendras"),nl,
                nl, writeln("Pimienta"),nl,
                nl, writeln("nuez moscada"),nl,
                nl, writeln("Canela"),nl,
                nl, writeln("20g de kale"),nl,

                nl, writeln("****************"),nl,

                nl, writeln("Merienda"),nl,
                nl, writeln("100 gr de cecina o jamon"),nl,

                nl, writeln("****************"),nl,

                nl, writeln("Cena"),nl,
                nl, writeln("150 gr de ternera"),nl,
                nl, writeln("60 gr de col pak choi"),nl,
                nl, writeln("2 unidades de citronela"),nl,
                nl, writeln("1 manzana con canela"),nl,
                nl, writeln("Medio pimiento rojo"),nl,
                nl, writeln("50 gr de kale"),nl,
                nl, writeln("Caldo de huesos"),nl,

                nl, writeln("****************"),nl,
                nl, writeln("Que lo disfrute"),nl,!.

%Detalles de la dieta keto kcal
menuKeto1():-nl, writeln("Desayuno"),nl,
                nl, writeln("tortitas"),nl,
                nl, writeln("2 huevos"),nl,
                nl, writeln("2 cucharadas de aceite de oliva"),nl,
                nl, writeln("2 cucharadas de jarabe de arce"),nl,
                nl, writeln("Esencia de vainilla"),nl,
                nl, writeln("1 cucharada de levadura en polvo"),nl,
                nl, writeln("120 gr. de harina"),nl,
                nl, writeln("leche de almendra"),nl,
                nl, writeln("2 cucharadas de mantequilla"),nl,

                nl, writeln("****************"),nl,

                nl, writeln("Merienda"),nl,
                nl, writeln("chips de parmesano"),nl,
                nl, writeln("50g queso parmesano "),nl
                nl, writeln("Albahaca"),nl
                nl, writeln("Sal"),nl
                nl, writeln("Pimienta"),nl
                nl, writeln("****************"),nl,

                nl, writeln("Almuerzo"),nl,
                nl, writeln("1 filete de salmon"),nl,
                nl, writeln("100 gr de brocoli"),nl,
                nl, writeln("3 cucharadas de almendras"),nl,
                nl, writeln("Pimienta"),nl,
                nl, writeln("nuez moscada"),nl,
                nl, writeln("Canela"),nl,
                nl, writeln("20g de kale"),nl,

                nl, writeln("****************"),nl,

                nl, writeln("Merienda"),nl,
                nl, writeln("100 gr de cecina o jamon"),nl,

                nl, writeln("****************"),nl,

                nl, writeln("Cena"),nl,
                nl, writeln("150 gr de ternera"),nl,
                nl, writeln("60 gr de col pak choi"),nl,
                nl, writeln("2 unidades de citronela"),nl,
                nl, writeln("1 manzana con canela"),nl,
                nl, writeln("Medio pimiento rojo"),nl,
                nl, writeln("50 gr de kale"),nl,
                nl, writeln("Caldo de huesos"),nl,

                nl, writeln("****************"),nl,
                nl, writeln("Que lo disfrute"),nl,!.

%Detalles de la dieta keto kcal
menuKeto1():-nl, writeln("Desayuno"),nl,
                nl, writeln("tortitas"),nl,
                nl, writeln("2 huevos"),nl,
                nl, writeln("2 cucharadas de aceite de oliva"),nl,
                nl, writeln("2 cucharadas de jarabe de arce"),nl,
                nl, writeln("Esencia de vainilla"),nl,
                nl, writeln("1 cucharada de levadura en polvo"),nl,
                nl, writeln("120 gr. de harina"),nl,
                nl, writeln("leche de almendra"),nl,
                nl, writeln("2 cucharadas de mantequilla"),nl,

                nl, writeln("****************"),nl,

                nl, writeln("Merienda"),nl,
                nl, writeln("chips de parmesano"),nl,
                nl, writeln("50g queso parmesano "),nl
                nl, writeln("Albahaca"),nl
                nl, writeln("Sal"),nl
                nl, writeln("Pimienta"),nl
                nl, writeln("****************"),nl,

                nl, writeln("Almuerzo"),nl,
                nl, writeln("1 filete de salmon"),nl,
                nl, writeln("100 gr de brocoli"),nl,
                nl, writeln("3 cucharadas de almendras"),nl,
                nl, writeln("Pimienta"),nl,
                nl, writeln("nuez moscada"),nl,
                nl, writeln("Canela"),nl,
                nl, writeln("20g de kale"),nl,

                nl, writeln("****************"),nl,

                nl, writeln("Merienda"),nl,
                nl, writeln("100 gr de cecina o jamon"),nl,

                nl, writeln("****************"),nl,

                nl, writeln("Cena"),nl,
                nl, writeln("150 gr de ternera"),nl,
                nl, writeln("60 gr de col pak choi"),nl,
                nl, writeln("2 unidades de citronela"),nl,
                nl, writeln("1 manzana con canela"),nl,
                nl, writeln("Medio pimiento rojo"),nl,
                nl, writeln("50 gr de kale"),nl,
                nl, writeln("Caldo de huesos"),nl,

                nl, writeln("****************"),nl,
                nl, writeln("Que lo disfrute"),nl,!.

%Detalles de la dieta keto kcal
menuKeto1():-nl, writeln("Desayuno"),nl,
                nl, writeln("tortitas"),nl,
                nl, writeln("2 huevos"),nl,
                nl, writeln("2 cucharadas de aceite de oliva"),nl,
                nl, writeln("2 cucharadas de jarabe de arce"),nl,
                nl, writeln("Esencia de vainilla"),nl,
                nl, writeln("1 cucharada de levadura en polvo"),nl,
                nl, writeln("120 gr. de harina"),nl,
                nl, writeln("leche de almendra"),nl,
                nl, writeln("2 cucharadas de mantequilla"),nl,

                nl, writeln("****************"),nl,

                nl, writeln("Merienda"),nl,
                nl, writeln("chips de parmesano"),nl,
                nl, writeln("50g queso parmesano "),nl
                nl, writeln("Albahaca"),nl
                nl, writeln("Sal"),nl
                nl, writeln("Pimienta"),nl
                nl, writeln("****************"),nl,

                nl, writeln("Almuerzo"),nl,
                nl, writeln("1 filete de salmon"),nl,
                nl, writeln("100 gr de brocoli"),nl,
                nl, writeln("3 cucharadas de almendras"),nl,
                nl, writeln("Pimienta"),nl,
                nl, writeln("nuez moscada"),nl,
                nl, writeln("Canela"),nl,
                nl, writeln("20g de kale"),nl,

                nl, writeln("****************"),nl,

                nl, writeln("Merienda"),nl,
                nl, writeln("100 gr de cecina o jamon"),nl,

                nl, writeln("****************"),nl,

                nl, writeln("Cena"),nl,
                nl, writeln("150 gr de ternera"),nl,
                nl, writeln("60 gr de col pak choi"),nl,
                nl, writeln("2 unidades de citronela"),nl,
                nl, writeln("1 manzana con canela"),nl,
                nl, writeln("Medio pimiento rojo"),nl,
                nl, writeln("50 gr de kale"),nl,
                nl, writeln("Caldo de huesos"),nl,

                nl, writeln("****************"),nl,
                nl, writeln("Que lo disfrute"),nl,!.

%Detalles de la dieta keto kcal
menuKeto1():-nl, writeln("Desayuno"),nl,
                nl, writeln("tortitas"),nl,
                nl, writeln("2 huevos"),nl,
                nl, writeln("2 cucharadas de aceite de oliva"),nl,
                nl, writeln("2 cucharadas de jarabe de arce"),nl,
                nl, writeln("Esencia de vainilla"),nl,
                nl, writeln("1 cucharada de levadura en polvo"),nl,
                nl, writeln("120 gr. de harina"),nl,
                nl, writeln("leche de almendra"),nl,
                nl, writeln("2 cucharadas de mantequilla"),nl,

                nl, writeln("****************"),nl,

                nl, writeln("Merienda"),nl,
                nl, writeln("chips de parmesano"),nl,
                nl, writeln("50g queso parmesano "),nl
                nl, writeln("Albahaca"),nl
                nl, writeln("Sal"),nl
                nl, writeln("Pimienta"),nl
                nl, writeln("****************"),nl,

                nl, writeln("Almuerzo"),nl,
                nl, writeln("1 filete de salmon"),nl,
                nl, writeln("100 gr de brocoli"),nl,
                nl, writeln("3 cucharadas de almendras"),nl,
                nl, writeln("Pimienta"),nl,
                nl, writeln("nuez moscada"),nl,
                nl, writeln("Canela"),nl,
                nl, writeln("20g de kale"),nl,

                nl, writeln("****************"),nl,

                nl, writeln("Merienda"),nl,
                nl, writeln("100 gr de cecina o jamon"),nl,

                nl, writeln("****************"),nl,

                nl, writeln("Cena"),nl,
                nl, writeln("150 gr de ternera"),nl,
                nl, writeln("60 gr de col pak choi"),nl,
                nl, writeln("2 unidades de citronela"),nl,
                nl, writeln("1 manzana con canela"),nl,
                nl, writeln("Medio pimiento rojo"),nl,
                nl, writeln("50 gr de kale"),nl,
                nl, writeln("Caldo de huesos"),nl,

                nl, writeln("****************"),nl,
                nl, writeln("Que lo disfrute"),nl,!.

%Detalles de la dieta keto kcal
menuKeto1():-nl, writeln("Desayuno"),nl,
                nl, writeln("tortitas"),nl,
                nl, writeln("2 huevos"),nl,
                nl, writeln("2 cucharadas de aceite de oliva"),nl,
                nl, writeln("2 cucharadas de jarabe de arce"),nl,
                nl, writeln("Esencia de vainilla"),nl,
                nl, writeln("1 cucharada de levadura en polvo"),nl,
                nl, writeln("120 gr. de harina"),nl,
                nl, writeln("leche de almendra"),nl,
                nl, writeln("2 cucharadas de mantequilla"),nl,

                nl, writeln("****************"),nl,

                nl, writeln("Merienda"),nl,
                nl, writeln("chips de parmesano"),nl,
                nl, writeln("50g queso parmesano "),nl
                nl, writeln("Albahaca"),nl
                nl, writeln("Sal"),nl
                nl, writeln("Pimienta"),nl
                nl, writeln("****************"),nl,

                nl, writeln("Almuerzo"),nl,
                nl, writeln("1 filete de salmon"),nl,
                nl, writeln("100 gr de brocoli"),nl,
                nl, writeln("3 cucharadas de almendras"),nl,
                nl, writeln("Pimienta"),nl,
                nl, writeln("nuez moscada"),nl,
                nl, writeln("Canela"),nl,
                nl, writeln("20g de kale"),nl,

                nl, writeln("****************"),nl,

                nl, writeln("Merienda"),nl,
                nl, writeln("100 gr de cecina o jamon"),nl,

                nl, writeln("****************"),nl,

                nl, writeln("Cena"),nl,
                nl, writeln("150 gr de ternera"),nl,
                nl, writeln("60 gr de col pak choi"),nl,
                nl, writeln("2 unidades de citronela"),nl,
                nl, writeln("1 manzana con canela"),nl,
                nl, writeln("Medio pimiento rojo"),nl,
                nl, writeln("50 gr de kale"),nl,
                nl, writeln("Caldo de huesos"),nl,

                nl, writeln("****************"),nl,
                nl, writeln("Que lo disfrute"),nl,!.

%Detalles de la dieta keto kcal
menuKeto1():-nl, writeln("Desayuno"),nl,
                nl, writeln("tortitas"),nl,
                nl, writeln("2 huevos"),nl,
                nl, writeln("2 cucharadas de aceite de oliva"),nl,
                nl, writeln("2 cucharadas de jarabe de arce"),nl,
                nl, writeln("Esencia de vainilla"),nl,
                nl, writeln("1 cucharada de levadura en polvo"),nl,
                nl, writeln("120 gr. de harina"),nl,
                nl, writeln("leche de almendra"),nl,
                nl, writeln("2 cucharadas de mantequilla"),nl,

                nl, writeln("****************"),nl,

                nl, writeln("Merienda"),nl,
                nl, writeln("chips de parmesano"),nl,
                nl, writeln("50g queso parmesano "),nl
                nl, writeln("Albahaca"),nl
                nl, writeln("Sal"),nl
                nl, writeln("Pimienta"),nl
                nl, writeln("****************"),nl,

                nl, writeln("Almuerzo"),nl,
                nl, writeln("1 filete de salmon"),nl,
                nl, writeln("100 gr de brocoli"),nl,
                nl, writeln("3 cucharadas de almendras"),nl,
                nl, writeln("Pimienta"),nl,
                nl, writeln("nuez moscada"),nl,
                nl, writeln("Canela"),nl,
                nl, writeln("20g de kale"),nl,

                nl, writeln("****************"),nl,

                nl, writeln("Merienda"),nl,
                nl, writeln("100 gr de cecina o jamon"),nl,

                nl, writeln("****************"),nl,

                nl, writeln("Cena"),nl,
                nl, writeln("150 gr de ternera"),nl,
                nl, writeln("60 gr de col pak choi"),nl,
                nl, writeln("2 unidades de citronela"),nl,
                nl, writeln("1 manzana con canela"),nl,
                nl, writeln("Medio pimiento rojo"),nl,
                nl, writeln("50 gr de kale"),nl,
                nl, writeln("Caldo de huesos"),nl,

                nl, writeln("****************"),nl,
                nl, writeln("Que lo disfrute"),nl,!.

%Detalles de la dieta keto kcal
menuKeto1():-nl, writeln("Desayuno"),nl,
                nl, writeln("tortitas"),nl,
                nl, writeln("2 huevos"),nl,
                nl, writeln("2 cucharadas de aceite de oliva"),nl,
                nl, writeln("2 cucharadas de jarabe de arce"),nl,
                nl, writeln("Esencia de vainilla"),nl,
                nl, writeln("1 cucharada de levadura en polvo"),nl,
                nl, writeln("120 gr. de harina"),nl,
                nl, writeln("leche de almendra"),nl,
                nl, writeln("2 cucharadas de mantequilla"),nl,

                nl, writeln("****************"),nl,

                nl, writeln("Merienda"),nl,
                nl, writeln("chips de parmesano"),nl,
                nl, writeln("50g queso parmesano "),nl
                nl, writeln("Albahaca"),nl
                nl, writeln("Sal"),nl
                nl, writeln("Pimienta"),nl
                nl, writeln("****************"),nl,

                nl, writeln("Almuerzo"),nl,
                nl, writeln("1 filete de salmon"),nl,
                nl, writeln("100 gr de brocoli"),nl,
                nl, writeln("3 cucharadas de almendras"),nl,
                nl, writeln("Pimienta"),nl,
                nl, writeln("nuez moscada"),nl,
                nl, writeln("Canela"),nl,
                nl, writeln("20g de kale"),nl,

                nl, writeln("****************"),nl,

                nl, writeln("Merienda"),nl,
                nl, writeln("100 gr de cecina o jamon"),nl,

                nl, writeln("****************"),nl,

                nl, writeln("Cena"),nl,
                nl, writeln("150 gr de ternera"),nl,
                nl, writeln("60 gr de col pak choi"),nl,
                nl, writeln("2 unidades de citronela"),nl,
                nl, writeln("1 manzana con canela"),nl,
                nl, writeln("Medio pimiento rojo"),nl,
                nl, writeln("50 gr de kale"),nl,
                nl, writeln("Caldo de huesos"),nl,

                nl, writeln("****************"),nl,
                nl, writeln("Que lo disfrute"),nl,!.

%Detalles de la dieta keto kcal
menuKeto1():-nl, writeln("Desayuno"),nl,
                nl, writeln("tortitas"),nl,
                nl, writeln("2 huevos"),nl,
                nl, writeln("2 cucharadas de aceite de oliva"),nl,
                nl, writeln("2 cucharadas de jarabe de arce"),nl,
                nl, writeln("Esencia de vainilla"),nl,
                nl, writeln("1 cucharada de levadura en polvo"),nl,
                nl, writeln("120 gr. de harina"),nl,
                nl, writeln("leche de almendra"),nl,
                nl, writeln("2 cucharadas de mantequilla"),nl,

                nl, writeln("****************"),nl,

                nl, writeln("Merienda"),nl,
                nl, writeln("chips de parmesano"),nl,
                nl, writeln("50g queso parmesano "),nl
                nl, writeln("Albahaca"),nl
                nl, writeln("Sal"),nl
                nl, writeln("Pimienta"),nl
                nl, writeln("****************"),nl,

                nl, writeln("Almuerzo"),nl,
                nl, writeln("1 filete de salmon"),nl,
                nl, writeln("100 gr de brocoli"),nl,
                nl, writeln("3 cucharadas de almendras"),nl,
                nl, writeln("Pimienta"),nl,
                nl, writeln("nuez moscada"),nl,
                nl, writeln("Canela"),nl,
                nl, writeln("20g de kale"),nl,

                nl, writeln("****************"),nl,

                nl, writeln("Merienda"),nl,
                nl, writeln("100 gr de cecina o jamon"),nl,

                nl, writeln("****************"),nl,

                nl, writeln("Cena"),nl,
                nl, writeln("150 gr de ternera"),nl,
                nl, writeln("60 gr de col pak choi"),nl,
                nl, writeln("2 unidades de citronela"),nl,
                nl, writeln("1 manzana con canela"),nl,
                nl, writeln("Medio pimiento rojo"),nl,
                nl, writeln("50 gr de kale"),nl,
                nl, writeln("Caldo de huesos"),nl,

                nl, writeln("****************"),nl,
                nl, writeln("Que lo disfrute"),nl,!.

%Detalles de la dieta keto kcal
menuKeto1():-nl, writeln("Desayuno"),nl,
                nl, writeln("tortitas"),nl,
                nl, writeln("2 huevos"),nl,
                nl, writeln("2 cucharadas de aceite de oliva"),nl,
                nl, writeln("2 cucharadas de jarabe de arce"),nl,
                nl, writeln("Esencia de vainilla"),nl,
                nl, writeln("1 cucharada de levadura en polvo"),nl,
                nl, writeln("120 gr. de harina"),nl,
                nl, writeln("leche de almendra"),nl,
                nl, writeln("2 cucharadas de mantequilla"),nl,

                nl, writeln("****************"),nl,

                nl, writeln("Merienda"),nl,
                nl, writeln("chips de parmesano"),nl,
                nl, writeln("50g queso parmesano "),nl
                nl, writeln("Albahaca"),nl
                nl, writeln("Sal"),nl
                nl, writeln("Pimienta"),nl
                nl, writeln("****************"),nl,

                nl, writeln("Almuerzo"),nl,
                nl, writeln("1 filete de salmon"),nl,
                nl, writeln("100 gr de brocoli"),nl,
                nl, writeln("3 cucharadas de almendras"),nl,
                nl, writeln("Pimienta"),nl,
                nl, writeln("nuez moscada"),nl,
                nl, writeln("Canela"),nl,
                nl, writeln("20g de kale"),nl,

                nl, writeln("****************"),nl,

                nl, writeln("Merienda"),nl,
                nl, writeln("100 gr de cecina o jamon"),nl,

                nl, writeln("****************"),nl,

                nl, writeln("Cena"),nl,
                nl, writeln("150 gr de ternera"),nl,
                nl, writeln("60 gr de col pak choi"),nl,
                nl, writeln("2 unidades de citronela"),nl,
                nl, writeln("1 manzana con canela"),nl,
                nl, writeln("Medio pimiento rojo"),nl,
                nl, writeln("50 gr de kale"),nl,
                nl, writeln("Caldo de huesos"),nl,

                nl, writeln("****************"),nl,
                nl, writeln("Que lo disfrute"),nl,!.

%Detalles de la dieta keto kcal
menuKeto1():-nl, writeln("Desayuno"),nl,
                nl, writeln("tortitas"),nl,
                nl, writeln("2 huevos"),nl,
                nl, writeln("2 cucharadas de aceite de oliva"),nl,
                nl, writeln("2 cucharadas de jarabe de arce"),nl,
                nl, writeln("Esencia de vainilla"),nl,
                nl, writeln("1 cucharada de levadura en polvo"),nl,
                nl, writeln("120 gr. de harina"),nl,
                nl, writeln("leche de almendra"),nl,
                nl, writeln("2 cucharadas de mantequilla"),nl,

                nl, writeln("****************"),nl,

                nl, writeln("Merienda"),nl,
                nl, writeln("chips de parmesano"),nl,
                nl, writeln("50g queso parmesano "),nl
                nl, writeln("Albahaca"),nl
                nl, writeln("Sal"),nl
                nl, writeln("Pimienta"),nl
                nl, writeln("****************"),nl,

                nl, writeln("Almuerzo"),nl,
                nl, writeln("1 filete de salmon"),nl,
                nl, writeln("100 gr de brocoli"),nl,
                nl, writeln("3 cucharadas de almendras"),nl,
                nl, writeln("Pimienta"),nl,
                nl, writeln("nuez moscada"),nl,
                nl, writeln("Canela"),nl,
                nl, writeln("20g de kale"),nl,

                nl, writeln("****************"),nl,

                nl, writeln("Merienda"),nl,
                nl, writeln("100 gr de cecina o jamon"),nl,

                nl, writeln("****************"),nl,

                nl, writeln("Cena"),nl,
                nl, writeln("150 gr de ternera"),nl,
                nl, writeln("60 gr de col pak choi"),nl,
                nl, writeln("2 unidades de citronela"),nl,
                nl, writeln("1 manzana con canela"),nl,
                nl, writeln("Medio pimiento rojo"),nl,
                nl, writeln("50 gr de kale"),nl,
                nl, writeln("Caldo de huesos"),nl,

                nl, writeln("****************"),nl,
                nl, writeln("Que lo disfrute"),nl,!.


%Detalles de la dieta Keto kcal
menuKeto2():-nl, writeln("Desayuno"),nl,
                nl, writeln("60 g de jamon cerrano."),nl,
                nl, writeln("Cafe sin azucar."),nl,
                nl, writeln("1 mandarina."),nl,
                nl, writeln("****************"),nl,

                nl, writeln("Merienda"),nl,
                nl, writeln("100g de yogurt."),nl,
                nl, writeln("50g de fruta fresca."),nl,
                nl, writeln("****************"),nl,

                nl, writeln("Almuerzo"),nl,
                nl, writeln("200g de Espinacas con garbanzos."),n
                nl, writeln("1 manzana."),nl,
                nl, writeln("****************"),nl,

                nl, writeln("Merienda"),nl,
                nl, writeln("100g de mecedonia."),nl,
                nl, writeln("Cafe sin azucar."),nl,
                nl, writeln("****************"),nl,

                nl, writeln("Cena"),nl,
                nl, writeln("150g de Ensalada(Tomate, lechuga y c
                nl, writeln("50g de Sardinas."),nl,
                nl, writeln("25g de Cuajada con miel."),nl,

                nl, writeln("****************"),nl,
                nl, writeln("Que lo disfrute"),nl,!.


%Detalles de la dieta Detox 1400kcal
menuDeto1():-nl, writeln("Desayuno"),nl,
                nl, writeln("Té verde."),nl,
                nl, writeln("Avena con leche de soja."),nl,
                nl, writeln("Arandanos."),nl,
                nl, writeln("****************"),nl,

                nl, writeln("Merienda"),nl,
                nl, writeln("Tomate natural con perejil."),nl,
                nl, writeln("****************"),nl,

                nl, writeln("Almuerzo"),nl,
                nl, writeln("Alcachofas al vapor"),nl,
                nl, writeln("Batido de apio y piña"),nl,
                nl, writeln("infusion te verde"),nl,
                nl, writeln("****************"),nl,

                nl, writeln("Merienda"),nl,
                nl, writeln("Zumo de naranja y piña"),nl,
                nl, writeln("****************"),nl,

                nl, writeln("Cena"),nl,
                nl, writeln("Batido detox(apio,tamte,pepino,zumo de arandano"),nl,

                nl, writeln("****************"),nl,
                nl, writeln("Que lo disfrute"),nl,!.

%Detalles de la dieta Detox 1600kcal
menuDeto2():-nl, writeln("Desayuno"),nl,
                nl, writeln("Té verde."),nl,
                nl, writeln("30g de pan con tomate y aceite de oliva"),nl,
                nl, writeln("Arandanos."),nl,
                nl, writeln("****************"),nl,

                nl, writeln("Merienda"),nl,
                nl, writeln("Té verde."),nl,
                nl, writeln("10 almendras."),nl,
                nl, writeln("****************"),nl,

                nl, writeln("Almuerzo"),nl,
                nl, writeln("Ensalada de espinacas con ajo."),n
                nl, writeln("Semillas de mostaza al vapor."),nl,
                nl, writeln("Merluza a la plancha"),nl,
                nl, writeln("Zumo de naranja."),nl,
                nl, writeln("****************"),nl,

                nl, writeln("Merienda"),nl,
                nl, writeln("Batido de papaya y piña"),nl,
                nl, writeln("****************"),nl,

                nl, writeln("Cena"),nl,
                nl, writeln("Batido detox(pepino, piña,semillas de sesamo,uvas)"),nl,

                nl, writeln("****************"),nl,
                nl, writeln("Que lo disfrute"),nl,!.

%Detalles de la dieta Hipercalorica 2500kcal
menuHiper1():-nl, writeln("Desayuno"),nl,
                nl, writeln("200 ml de leche"),nl,
                nl, writeln("60 g de cereales integrales."),nl,
                nl, writeln("1 yogurt."),nl,
                nl, writeln("2 piezas de fruta."),nl,
                nl, writeln("Cafe solo o infusion."),nl,
                nl, writeln("****************"),nl,

                nl, writeln("Merienda"),nl,
                nl, writeln("60 g de pan."),nl,
                nl, writeln("90 g de jamón york."),nl
                nl, writeln("150 g de tomate."),nl
                nl, writeln("Cafe o infusion con 100 ml de leche."),nl,
                nl, writeln("****************"),nl,

                nl, writeln("Almuerzo"),nl,
                nl, writeln("300 g de coliflor hervida"),nl,
                nl, writeln("15 g de jamon serrano en tacos."),nl,
                nl, writeln("150 g de pollo asado."),nl,
                nl, writeln("150 g de patatas."),nl,
                nl, writeln("60 g de pan."),nl,
                nl, writeln("400 g de melon."),nl,
                nl, writeln("****************"),nl,

                nl, writeln("Merienda"),nl,
                nl, writeln("30 g de cereales de desayuno"),nl,
                nl, writeln("75 g de nueces"),nl,
                nl, writeln("160 g de manzana"),nl,
                nl, writeln("200 ml de leche."),nl,
                nl, writeln("Cafe solo o infusion."),nl,
                nl, writeln("****************"),nl,

                nl, writeln("Cena"),nl,
                nl, writeln("300 g de verduras"),nl,
                nl, writeln("50 g de guisantes"),nl,
                nl, writeln("35 g de requeson."),nl,
                nl, writeln("150 g de sardinas a la plancha."),nl,
                nl, writeln("150 g de esparragos"),nl,
                nl, writeln("100 g de patatas cocidas."),nl,
                nl, writeln("40 g de pan."),nl,
                nl, writeln("300 g de mandarinas."),nl,

                nl, writeln("****************"),nl,
                nl, writeln("Que lo disfrute"),nl,!.

%Detalles de la dieta Hipercalorica 3500kcal
menuHiper2():-nl, writeln("Desayuno"),nl,
                nl, writeln("2 yogures desnatados."),nl,
                nl, writeln("100 g de galletas."),nl,
                nl, writeln("3 piezas de fruta."),nl,
                nl, writeln("Cafe con 100 ml de leche."),nl,
                nl, writeln("****************"),nl,

                nl, writeln("Merienda"),nl,
                nl, writeln("100 g de galletas."),nl,
                nl, writeln("100 g de almendras."),nl,
                nl, writeln("100 g de zanahoria cruda."),nl,
                nl, writeln("2 yogurt."),nl,
                nl, writeln("Cafe solo o infusion"),nl,
                nl, writeln("****************"),nl,

                nl, writeln("Almuerzo"),nl,
                nl, writeln("100 g de arroz"),n
                nl, writeln("3 huevo frito"),nl,
                nl, writeln("150 g de tomate."),nl,
                nl, writeln("200 g de pollo a la plancha"),nl,
                nl, writeln("100 g de pan."),nl,
                nl, writeln("150 g de verduras al horno."),nl,
                nl, writeln("100 g de cerezas."),nl,
                nl, writeln("****************"),nl,

                nl, writeln("Merienda"),nl,
                nl, writeln("100 g de pan."),nl,
                nl, writeln("100 g de jamon york."),nl,
                nl, writeln("Cafe solo o infusion con 200 ml de leche."),nl,
                nl, writeln("2 pieza de fruta peq."),nl,
                nl, writeln("****************"),nl,

                nl, writeln("Cena"),nl,
                nl, writeln("250 g de alcachofas."),nl,
                nl, writeln("250 g de salmon a la plancha."),nl,
                nl, writeln("150 g de pure de patatas (con 100 ml de leche)."),nl,
                nl, writeln("100 g de pan."),nl,
                nl, writeln("240 g de manzana."),nl,

                nl, writeln("****************"),nl,
                nl, writeln("Que lo disfrute"),nl,!.

%Detalles de la dieta Hipocalorica 1200kcal
menuHipo1():-nl, writeln("Desayuno"),nl,
                nl, writeln("1 vaso de leche desnatada."),nl,
                nl, writeln("40 g de cereales."),nl,
                nl, writeln("cafe o infusion"),nl,
                nl, writeln("****************"),nl,

                nl, writeln("Merienda"),nl,
                nl, writeln("20 g de pan."),nl,
                nl, writeln("60 g de jamón york."),nl
                nl, writeln("Cafe o infusion"),nl
                nl, writeln("****************"),nl,

                nl, writeln("Almuerzo"),nl,
                nl, writeln("150 g de coliflor hervida."),nl,
                nl, writeln("75 g de pollo asado."),nl,
                nl, writeln("100 g de patatas."),nl,
                nl, writeln("20 g de pan."),nl,
                nl, writeln("200 g de pinia natural."),nl,
                nl, writeln("****************"),nl,

                nl, writeln("Merienda"),nl,
                nl, writeln("20 g de pan"),nl,
                nl, writeln("50 g de queso."),nl,
                nl, writeln("Cafe o infusion."),nl,
                nl, writeln("****************"),nl,

                nl, writeln("Cena"),nl,
                nl, writeln("15 g de pasta"),nl,
                nl, writeln("50 g de puerros"),nl,
                nl, writeln("25 g de zanahorias."),nl,
                nl, writeln("110 g de pescado"),nl,
                nl, writeln("75 g de lechuga"),nl,
                nl, writeln("75 g de tomate."),nl,
                nl, writeln("20 g de pan."),nl,
                nl, writeln("50 g de cerezas."),nl,

                nl, writeln("****************"),nl,
                nl, writeln("Que lo disfrute"),nl,!.

%Detalles de la dieta Hipocalorica 1500kcal
menuHipo2():-nl, writeln("Desayuno"),nl,
                nl, writeln("2 yogures desnatados."),nl,
                nl, writeln("50 g de galletas."),nl,
                nl, writeln("Cafe o infusion."),nl,
                nl, writeln("****************"),nl,

                nl, writeln("Merienda"),nl,
                nl, writeln("50 g de biscotes."),nl,
                nl, writeln("100 g de queso fresco."),nl,
                nl, writeln("Cafe o infusion."),nl,
                nl, writeln("****************"),nl,

                nl, writeln("Almuerzo"),nl,
                nl, writeln("150 g de verduras."),n
                nl, writeln("100 g de albondigas."),nl,
                nl, writeln("50 g de arroz."),nl,
                nl, writeln("50 g de pan."),nl,
                nl, writeln("200 g de fresas."),nl,
                nl, writeln("****************"),nl,

                nl, writeln("Merienda"),nl,
                nl, writeln("25 g de galletas."),nl,
                nl, writeln("Cafe con 100 ml de leche desnatada."),nl,
                nl, writeln("****************"),nl,

                nl, writeln("Cena"),nl,
                nl, writeln("150 g de lechuga"),nl,
                nl, writeln("150 g de tomate."),nl,
                nl, writeln("100 g de patatas"),nl,
                nl, writeln("200 g de naranja."),nl,
                nl, writeln("3 huevos"),nl,

                nl, writeln("****************"),nl,
                nl, writeln("Que lo disfrute"),nl,!.
