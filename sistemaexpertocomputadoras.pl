%Esta línea es para abrir el archivo en OS X.
%consult('/Users/fernando2/Github/SistemaExperto/sistemaexpertocomputadoras.pl').

/*
	Sistema experto para escoger una computadora basado en las necesidades del usuario.

	Bobadilla Contreras Miguel Fernando.
	Ordoñez Ruiz Edgar.
	Pérez Rodríguez José Rubén.
*/

%Predicado final que imprime el resultado.
comprar:- computadora(Marca, Modelo, Tipo, Uso, Precio, Pantalla, Procesador, Tarjeta_video, RAM, SO, HDD, USB2_0, USB3_0, NombreImg),
	write('La computadora que deberia elegir es: '),
	nl,
	write('Marca: '),
	write(Marca),
	nl,
	write('Modelo: '),
	write(Modelo),
	nl,
	write('Tipo: '),
	write(Tipo),
	nl,
	write('Uso recomendado: '),
	write(Uso),
	nl,
	write('Precio: $'),
	write(Precio),
	nl,
	write('Pantalla (en pulgadas): '),
	write(Pantalla),
	nl,
	write('Procesador: '),
	write(Procesador),
	nl,
	write('Tarjeta de Video: '),
	write(Tarjeta_video),
	nl,
	write('Memoria RAM: '),
	write(RAM),
	nl,
	write('Sistema operativo: '),
	write(SO),
	nl,
	write('Espacio de almacenamiento: '),
	write(HDD),
	nl,
	write('Cantidad de puertos USB 2.0: '),
	write(USB2_0),
	nl,
	write('Cantidad de puertos USB 3.0: '),
	write(USB3_0),
	nl,
	%Muestra la imagen de la computadora escogida.
	atom_concat('sistemaexperto_imagenes/', NombreImg, RutaModelo),
	atom_concat(RutaModelo, '.jpg', RutaModeloExtension),
	new(Img, picture('Pienso en...')),
	send(Img, width(345)),
	send(Img, height(585)),
	send(Img, open),
	send(Img, display, new(_, bitmap(RutaModeloExtension))),
	limpiaBC.
%Si ninguna computadora cumple los requerimientos, mostramos este mensaje :(
comprar:-
	write('Lo sentimos. No contamos con un producto con esas caracteristicas'),
	nl,
	limpiaBC.

%Hipótesis.
%Estructura: marca, modelo, tipo, uso, precio, pulgadas, procesador, tarjeta_video, RAM, SO, HD, USB 2.0, USB 3.0.

%El ! al final indica un corte. Esto es para que una vez que se llegó al resultado correcto, no se sigan evaluando otras hipótesis.

%Laptop
computadora('Apple', 	'MacBook Pro',		'Laptop', 'Disenio', 	'32,000',	'13"',	'Intel Core i5', 	'Intel Iris Graphics 6100',	   '16GB', 	'OS X', 		'128GB (SSD)', 	'0', 	'2', 'macbookpro')			:- 	macbookpro, !.
computadora('HP', 		'Elitebook 840', 	'Laptop', 'Disenio', 	'30,100',	'11.5"','Intel Core i5',	'Intel HD Graphics 5500', 	   '16GB', 	'Windows 8.1', 	'1TB (HDD)', 	'2', 	'1', 'hp_elitebook')		:- 	hp_elitebook, !.
computadora('Lenovo',   'Y50-70', 			'Laptop', 'Gamer',		'18,000',	'12"',	'Intel Core i7', 	'NVIDIA GeForce GTX 860M', 	   '8GB',	'Windows 8.1',	'1TB (HDD)', 	'2', 	'1', 'lenovo_y50_70')		:- 	lenovo_y50_70, !.                    
computadora('Dell',		'Alienware 15 r3',	'Laptop', 'Gamer',		'33,100',	'15"',	'Intel Core i7', 	'NVIDIA GeForce GTX 970M', 	   '8GB',	'Windows 10',	'1TB (HDD)', 	'0', 	'3', 'dell_alienware_15_r2'):- 	dell_alienware_15_r2, !.
computadora('Toshiba',  'L55-b5179sm', 		'Laptop', 'Disenio', 	'18,920',	'12"', 	'Intel Core i7', 	'Intel HD Graphics 5500', 	   '8GB', 	'Windows 8.1', 	'1TB (HDD)', 	'2',	'1', 'toshiba_l55')			:- 	toshiba_l55, !.
computadora('HP', 		'14-af16la', 		'Laptop', 'Multimedia', '9,000',	'14"', 	'AMD A8', 			'AMD Radeon R5', 			   '6GB', 	'Windows 10', 	'1TB (HDD)', 	'2', 	'1', 'hp_14_af16la')		:- 	hp_14_af16la, !.
computadora('HP',	 	'Envy 14 u290la',	'Laptop', 'Multimedia', '12,000',	'14"',	'Intel Core i5', 	'Intel HD Graphics 5500', 	   '6GB',	'Windows 8.1',	'1TB (HDD)',	'1',	'2', 'hp_envy14')			:- 	hp_envy14, !.
computadora('GHIA', 	'Qcn3540', 			'Laptop', 'Oficina', 	'6,060',	'11.2"','Intel Pentium N3540','Intel HD Graphics', 	   	   '4GB', 	'Windows 8.1', 	'500GB (HDD)', 	'2', 	'1', 'ghia_qcn3540')		:- 	ghia_qcn3540, !.
computadora('Dell', 	'Inspiron 14-3442', 'Laptop', 'Multimedia', '8,550',	'14"', 	'Intel Core i3', 	'Intel HD Graphics 4400',  	   '4GB', 	'Windows 8.1', 	'1TB (HDD)', 	'2', 	'1', 'dell_inspiron_14')	:- 	dell_inspiron_14, !.
computadora('Asus',	 	'F455la', 			'Laptop', 'Multimedia', '10,970',	'15"', 	'Intel Core i5', 	'Intel HD Graphics 5500',  	   '4GB',	'Windows 8.1', 	'1TB (HDD)', 	'1', 	'2', 'asus_f455la')			:- 	asus_f455la, !.
computadora('Lenovo', 	'G40-30', 			'Laptop', 'Oficina', 	'7,000',	'11"', 	'Intel Celeron N2840','Intel HD Graphics 1100',    '4GB', 	'Windows 8.1', 	'500GB (HDD)', 	'2', 	'1', 'lenovo_g40_30')		:- 	lenovo_g40_30, !.
computadora('Acer',  	'TMB115',			'Laptop', 'Oficina', 	'4,860',	'11.6"','Intel Celeron N2940','Intel HD Graphics 1100',	   '4GB', 	'Linux Limpus',	'320GB (HDD)', 	'2', 	'1', 'acer_tmb115')			:- 	acer_tmb115, !.
%computadora('No se encontro un producto que cubra sus necesidades', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A').


%Escritorio
computadora('Dell',   	'Inspiron 3046',      	'Escritorio', 'Oficina',   	'7,500',  '21"',  			'Intel Core i3',        'Intel HD Graphics' ,      	'4GB',	'Windows 8.1', '750GB',  '4', '1', 'dell_inspiron_3046'):- dell_inspiron_3046, !.
computadora('GHIA',   	'Pentium dual g8040', 	'Escritorio', 'Oficina',   	'4,700',  '29"',  			'Intel Celeron N2840',  'Intel HD Graphics 1100', 	'4GB', 	'Linux',       '500GB',  '4', '0', 'ghia_pentium_dual')	:- ghia_pentium_dual, !.
computadora('Dell',   	'Inspiron 2980',      	'Escritorio', 'Oficina',   	'6,300',  '23"',  			'Intel Celeron N3540',  'Intel HD Graphics 1100',  	'2GB', 	'Windows 8.1', '750GB',  '3', '1', 'dell_inspiron_2980'):- dell_inspiron_2980, !.
computadora('Lenovo', 	'Thinkcentre',       	'Escritorio', 'Multimedia', '12,000', '29"',  			'Intel Core i5' ,       'Intel HD Graphics 4400',   '4GB',  'Windows 8.1', '1TB',    '3', '3', 'lenovo_thinkcentre'):- lenovo_thinkcentre, !.                    
computadora('HP',     	'Prodesk 400',       	'Escritorio', 'Multimedia', '10,500', '29"',  			'AMD A8',               'AMD Radeon R7',           	'8GB',  'Windows 8.1', '500GB',  '6', '2', 'hp_prodesk_400')	:- hp_prodesk_400, !.
computadora('Acer', 	'Vx2631g', 		 		'Escritorio', 'Multimedia', '10,600', '17"', 			'Intel Core i3', 		'Intel H81 Express', 		'4GB',	'Windows 7', 	'500GB', '4', '2', 'acer_vx2631g')		:- acer_vx2631g, !.
computadora('Dell', 	'Optiplex 9020', 		'Escritorio', 'Disenio', 	'17,380', '22"', 			'Intel Core i5', 		'Integrados Intel', 		'8GB',	'Windows 8.1', 	'1TB', 	 '2', '6', 'dell_optiplex_9020'):- dell_optiplex_9020, !.
computadora('Lenovo', 	'M53p', 		 		'Escritorio', 'Disenio', 	'12,470', '22"', 			'Intel Celeron', 		'Integrados Intel',			'8GB',	'Windows 7', 	'1TB', 	 '2', '6', 'lenovo_m53p')		:- lenovo_m53p, !.
computadora('Apple', 	'iMac', 		 		'Escritorio', 'Disenio', 	'48,000', '27" Retina 5K', 	'Intel Core i5', 		'AMD Radeon R9 M395.', 		'16GB', 'OS X',			'2TB', 	 '0', '4', 'imac')				:- imac, !.
computadora('GHIA', 	'Ci7 4790', 	 		'Escritorio', 'Gamer', 	  	'12,200', '24"', 			'Intel Core i7', 		'Intel HD 4600', 			'8GB', 	'Windows 8.1', 	'1TB',	 '2', '8', 'ghia_ci7_4790')		:- ghia_ci7_4790, !.
computadora('HP', 		'Elite one 800', 		'Escritorio', 'Gamer', 	  	'24,900', '23" (Tactil)',	'Intel Core i7', 		'Intel HD 4600', 			'8GB', 	'Windows 8.1', 	'1TB', 	 '4', '4', 'hp_elite_one800')	:- hp_elite_one800, !.

%Reglas que identifican a cada computadora (Se deben poner cosas que diferencíen a un modelo del resto).
%Las que no llevan paréntesis son reglas de clasificación.

%%%%%%%%%%%%%%%%%%%%Escritorio
 dell_inspiron_3046:- monitorM
             windows,
             ram4,
             muchoAlmacenamiento,
             monitorP,
             verifica('debe costar menos de $10,000'),
			 verifica('debe tener solo puerto USB3.0').
             			 

ghia_pentium_dual_g8040:- monitorG,
              linux,
			  verifica(' no debe tener al menos un puerto USB3.0'),
			  ram4,
			  monitorG,
			  verifica('puede tener un procesador de gama baja'),
			  economico.

			
dell_inspiron_2980:- monitorM,
                windows,
				monitorM,
				verifica('puede tener un procesador de gama baja'),
				verifica('la usara principalmete para programas de oficina'),
				ram2.
               

lenovo_thinkcentre:- monitorG,
               windows,
			   ram4,
			   muchoAlmacenamiento,
			   precioMedio,
			   monitorG,
			   verifica('debe tener al menos 3 puertos USB3.0').


hp_prodesk_400:- monitorG, 
               windows,
			   ram8,
			   precioMedio,
			   monitorG,
			   verifica('debe tener un procesador tope de gama'),
			   verifica('deber ser uso multimedia'),
			   verifica('deber tener al menos 6 puertos USB 2.0').
			   

acer_vx2631g:- 	monitorP,
				ram4,
				verifica('la usara principalmente para reproducir contenido multimedia'),
				costoM,
				graficosIntegrados.


dell_optiplex_9020:- monitorM,
				ram8,
				verifica('puede costar mas de $15,000').


lenovo_m53p:- 	monitorM,
				costoM,
				verifica('puede llevar un procesador de gama media'),
				ram8,
				graficosIntegrados.


imac:- 			osx,
				monitorG,
				grafica,
				ram16,
				verifica('puede tener solo puertos USB 3.0'),
				verifica('puede costar mas de $45,000').


ghia_ci7_4790:- costoM,
				monitorM,
				grafica,
				ram8,
				gamer,
				verifica('debe llevar un procesador tope de gama').


hp_elite_one800:- 	verifica('costaria al rededor de $25,000'),
				verifica('debe llevar pantalla tactil'),
				ram8,
				grafica,
				monitorM,
				verifica('debe llevar un procesador tope de gama').

%%%%%%%%%%%%%%%%%%%%Laptos
lenovo_g40_30:- laptop,
			intel,
			ram4,
			pantallaP,
            muchoAlmacenamiento.


ghia_qcn3540:- laptop,	
			intel,
			ram4,
			pantallaP,
            muchoAlmacenamiento.


dell_inspiron_14:- laptop,
			intel,
			ram4,
            muchoAlmacenamiento.


hp_14_af16la:- laptop, 
			amd,
			ram6,
            muchoAlmacenamiento.


asus_f455la:- laptop,
			intel,
			ram4,
			pantallaP,
            verifica('deber tener al menos 2 puertos USB 3.0'),
            noPortable.


hp_elitebook:- laptop,
			intel,
			ram16,
			pantallaP,
            windows.


toshiba_l55:- laptop,
			intel,
			ram8,
			pantallaP,
            verifica('deber ser uso disenio').


lenovo_y50_70:- laptop,
			intel,
			ram8,
			pantallaP,
            gamer.

dell_alienware_15_r2:- laptop,
			ram8,
			intel,
			verifica('debe tener solo puertos USB 3.0'),
			gamer,
			noPortable,
			muyCara.

hp_envy14:- laptop,
			windows,
			verifica('la usara para ver peliculas, videos y escuchar musica'),
			muchoAlmacenamiento,
			pantallaG,
			verifica('sobrepasaria los $10,000').


acer_tmb115:- laptop,
			linux,
			pantallaP,
			economico.


macbookpro:- laptop,
			osx,
			ram16,
			intel,
			ssd,
			pocoAlmacenamiento,
			muyCara.
			
 dell_inspiron_3046:- escritorio,
             windows,
             ram4,
             intel,
             muchoAlmacenamiento,
			 verifica('debe tener solo puerto USB3.0').
             			 

ghia_pentium_dual:- escritorio,
              linux,
			  verifica(' no debe tener puerto USB3.0'),
			  ram4,
			  economico.
			
dell_inspiron_2980:- escritorio,
               windows,
			   ram2.
			   
               

lenovo_thinkcentre:- escritorio,
               windows,
			   ram4,
			   muchoAlmacenamiento,
			   precioMedio,
			   verifica('debe tener 3 puertos USB3.0').


hp_prodesk_400:- escritorio,
               windows,
			   ram8,
			   precioMedio,
			   verifica('deber ser uso Multimedia'),
			   verifica('deber tener 6 puertos USB 2.0').
			   
%Reglas de clasificación (son como características genéricas que pueden tener varios modelos).
%Se puede poner varias veces la misma regla con distinto parámetro en verifica().
%Se puede poner más de una condición en cada regla, separándolas por comas.
%escritorio:- 			verifica('debe ser de escritorio').
costoM:- 				verifica('debe costar entre $10,000 y $15,000').
economico:- 			verifica('debe ser un equipo economico ($5,000 o menos)').
gamer:-					verifica('la usara mas bien para jugar videojuegos').
grafica:- 				verifica('debe tener una tarjeta de video de alto rendimiento').
graficosIntegrados:- 	verifica('puede tener una tarjeta grafica de gama baja').
laptop:- 				verifica('debe ser una laptop').
linux:-					verifica('debe tener Linux').
monitorG:- 				verifica('debe tener un monitor grande (mas de 23 pulgadas)').
monitorM:- 				verifica('debe tener un monitor mediano (entre 20 y 23 pulgadas)').
monitorP:- 				verifica('puede tener un monitor pequenio (menos de 20 pulgadas)').
muchoAlmacenamiento:- 	verifica('debe tener gran cantidad de almacenamiento (500GB o mas)').
muyCara:-				verifica('costaria mas de $27000 pesos').
noPortable:-			verifica('puede perder portabilidad a cambio de potencia').
osx:-					verifica('debe tener OS X').
pantallaG:- 			verifica('debe tener una pantalla grande').
pantallaP:-				verifica('debe tener una pantalla pequenia (12" o menos)').
pocoAlmacenamiento:-	verifica('puede tener una unidad de almacenamiento de menos de 256GB').
precioMedio:-			verifica('debe costar entre $15,000 y $20,000').
ram16:-					verifica('debe tener al menos 16GB de RAM').
ram2:-                  verifica('debe tener al menos 2GB de RAM').
ram4:-					verifica('debe tener al menos 4GB de RAM').
ram6:-					verifica('debe tener al menos 6GB de RAM').
ram8:-					verifica('debe tener al menos 8GB de RAM').
ram16:-					verifica('debe tener al menos 16GB de RAM').
precioMedio:-			verifica('debe costar entre $15,000 y $20,000').
intel:-					verifica('debe tener un procesador Intel').
amd:-					verifica('debe tener un procesador AMD').
ssd:-					verifica('debe tener SSD en lugar de disco duro').
windows:- 				verifica('debe tener Windows').

%Preguntas al usuario.
pregunta(Caracteristica):-
	write('La computadora que busca '),
	write(Caracteristica),
	write('? '),
	read(Respuesta),
	nl,
	( (Respuesta == si ; Respuesta == s)
		->
			assert(si(Caracteristica));
			assert(no(Caracteristica)), fail).

:- dynamic si/1, no/1.

%Verificar si algo es cierto.
verifica(R):-
	(si(R) -> true; (no(R) -> fail; pregunta(R))).


%Limpiar la base de conocimientos.
limpiaBC:- retract(si(_)), fail.
limpiaBC:- retract(no(_)), fail.
limpiaBC.