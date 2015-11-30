%Esta línea es para abrir el archivo en OS X.
%consult('/Users/fernando2/Github/SistemaExperto/sistemaexpertocomputadoras.pl').

/*
	Sistema experto para escoger una computadora basado en las necesidades del usuario.

	Bobadilla Contreras Miguel Fernando.
	Ordoñez Ruiz Edgar.
	Pérez Rodríguez José Rubén.
*/

%Predicado final que imprime el resultado.
comprar:- computadora(Marca, Modelo, Tipo, Uso, Precio, Pantalla, Procesador, Tarjeta_video, RAM, SO, HDD, USB2_0, USB3_0),
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
computadora('Apple', 	'MacBook Pro',		'Laptop', 'Disenio', 	'32000',	'Retina 13"',	'Intel Core i5', 'Intel Iris Graphics 6100', '16GB', 	'OS X', 		'128GB (SSD)', 	'0', 	'2'):- macbookpro, !.
computadora('HP', 		'Elitebook 840', 	'Laptop', 'Disenio', 	'30100',	'11.5"','Intel Core i5','Intel HD Graphics 5500', '16GB', 	'Windows 8.1', 	'1TB (HDD)', 	'2', 	'1'):- hp_elitebook, !.
computadora('Lenovo',   'Y50-70', 			'Laptop', 'Gamer',		'18000',	'12"',	'Intel Core i7', 'NVIDIA GeForce GTX 860M', '8GB',		'Windows 8.1',	'1TB (HDD)', 	'2', 	'1'):- lenovo_y50_70, !.                    
computadora('Dell',		'Alienware 15 r2',	'Laptop', 'Gamer',		'33100',	'15"',	' Intel Core i7', 'NVIDIA GeForce GTX 970M', '8GB',		'Windows 10',	'1TB (HDD)', 	'0', 	'3'):- dell_alienware_15_r2, !.
computadora('Toshiba',  'L55-b5179sm', 		'Laptop', 'Disenio', 	'18920',	'12"', 	' Intel Core i7', 'Intel HD Graphics 5500', '8GB', 	'Windows 8.1', 	'1TB (HDD)', 	'2',	'1'):- toshiba_l55, !.
computadora('HP', 		'14-af16la', 		'Laptop', 'Multimedia', '9000',		'14"', 	'AMD A8', 'AMD Radeon R5', '6GB', 	'Windows 10', 	'1TB (HDD)', 	'2', 	'1'):- hp_14_af16la, !.
computadora('HP',	 	'Envy 14 u290la',	'Laptop', 'Multimedia', '12000',	'14"',	'Intel Core i5', 'Intel HD Graphics 5500', '6GB',		'Windows 8.1',	'1TB (HDD)',	'1',	'2'):- hp_envy14, !.
computadora('GHIA', 	'Qcn3540', 			'Laptop', 'Oficina', 	'6060',		'11.2"','Intel Pentium N3540', 'Intel HD Graphics', '4GB', 	'Windows 8.1', 	'500GB (HDD)', 	'2', 	'1'):- ghia_qcn3540, !.
computadora('Dell', 	'Inspiron 14-3442', 'Laptop', 'Multimedia', '8550',		'14"', 	'Intel Core i3', 'Intel HD Graphics 4400', '4GB', 	'Windows 8.1', 	'1TB (HDD)', 	'2', 	'1'):- dell_inspiron_14, !.
computadora('Asus',	 	'F455la', 			'Laptop', 'Multimedia', '10970',	'15"', 	'Intel Core i5', 'Intel HD Graphics 5500', '4GB',		'Windows 8.1', 	'1TB (HDD)', 	'1', 	'2'):- asus_f455la, !.
computadora('Lenovo', 	'G40-30', 			'Laptop', 'Oficina', 	'7000',		'14"', 	'Intel Celeron N2840', 'Intel HD Graphics 1100', '4GB', 	'Windows 8.1', 	'500GB (HDD)', 	'2', 	'1'):- lenovo_g40_30, !.
computadora('Acer',  	'TMB115',			'Laptop', 'Oficina', 	'4860',		'11.6"','Intel Celeron N2940', 'Intel HD Graphics 1100', '4GB', 	'Linux Limpus',	'320GB (HDD)', 	'2', 	'1'):- acer_tmb115, !.
%computadora('No se encontro un producto que cubra sus necesidades', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A').

%Escritorio
/*computadora(dell, inspiron_3646, escritorio, oficina, 7260, 2, 4, windows_8_1, 500gb, 4, 1).
computadora(ghia, pentium_dual_g2030, escritorio, oficina, 4690, 2, 4, linux, 500gb, 4, 0).
computadora(dell, inspiron_3043, escritorio, oficina, 6180, 2, 2, windows_8_1, 500gb, 3, 0).
computadora(lenovo, thinkcentre, escritorio, multimedia, 12020, 4, 4, windows_8_1, 1tb, 3, 3).
computadora(hp, prodesk_400, escritorio, multimedia, 10500, 4, 8, windows_8_1, 500gb, 6, 2).
computadora(acer, vx2631g, escritorio, multimedia, 10600, 4, 4, windows_7, 500gb, 4, 2).
computadora(dell, optiplex_9020, escritorio, disenio, 17380, 8, 8, windows_8_1, 1tb, 2, 6).
computadora(lenovo, m53p, escritorio, disenio, 12470, 8, 8, windows_7, 1tb, 2, 6).
computadora(apple, imac, escritorio, disenio, 48000, 4, 8, OS_X, 2tb, 0, 4).
computadora(ghia, ci7_4790, escritorio, gamer, 12200, 8, 8, windows_8_1, 2tb, 2, 8).
computadora(hp, elite_one_800, escritorio, gamer, 24900, 8, 8, windows_8_1, 1tb, 4, 4).
*/

%Reglas que identifican a cada computadora (Se deben poner cosas que diferencíen a un modelo del resto).
%Las que no llevan paréntesis son reglas de clasificación.

lenovo_g40_30:- laptop,
			cores2,
			ram4,
			pantallaP,
            muchoAlmacenamiento.


ghia_qcn3540:- laptop,	
			cores4,
			ram4,
			pantallaP,
            muchoAlmacenamiento.


dell_inspiron_14:- laptop,
			cores4,
			ram4,
            muchoAlmacenamiento.


hp_14_af16la:- laptop, 
			cores4,
			ram6,
            muchoAlmacenamiento.


asus_f455la:- laptop,
			cores4,
			ram4,
			pantallaP,
            verifica('deber tener 2 puertos USB 3.0'),
            noPortable.


hp_elitebook:- laptop,
			cores8,
			ram16,
			pantallaP,
            windows.


toshiba_l55:- laptop,
			cores4,
			ram8,
			pantallaP,
            verifica('deber ser uso disenio').


lenovo_y50_70:- laptop,
			cores8,
			ram8,
			pantallaP,
            gamer.

dell_alienware_15_r2:- laptop,
			ram8,
			verifica('debe tener solo puertos USB3.0'),
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
			cores8,
			ssd,
			pocoAlmacenamiento,
			muyCara.
			
%Reglas de clasificación (son como características genéricas que pueden tener varios modelos).
%Se puede poner varias veces la misma regla con distinto parámetro en verifica().
%Se puede poner más de una condición en cada regla, separándolas por comas.
laptop:- 				verifica('debe ser una laptop').
economico:- 			verifica('debe ser un equipo economico ($5,000 o menos)').
muchoAlmacenamiento:- 	verifica('debe tener gran cantidad de almacenamiento (500GB o mas)').
pocoAlmacenamiento:-	verifica('puede tener una unidad de almacenamiento de menos de 256GB').
pantallaG:- 			verifica('debe tener una pantalla grande').
pantallaP:-				verifica('debe tener una pantalla pequenia (12" o menos)').
windows:- 				verifica('debe tener Windows').
osx:-					verifica('debe tener OS X').
linux:-					verifica('debe tener Linux').
muyCara:-				verifica('costaria mas de $27000 pesos').
gamer:-					verifica('la usara mas bien para jugar videojuegos').
noPortable:-			verifica('puede perder portabilidad a cambio de potencia').
ram4:-					verifica('debe tener al menos 4GB de RAM').
ram6:-					verifica('debe tener al menos 6GB de RAM').
ram8:-					verifica('debe tener al menos 8GB de RAM').
ram16:-					verifica('debe tener al menos 16GB de RAM').
precioMedio:-			verifica('debe costar entre $15,000 y $20,000').
cores2:-				verifica('debe tener al menos 2 cores de CPU').
cores4:-				verifica('debe tener al menos 4 cores de CPU').
cores8:-				verifica('debe tener al menos 8 cores de CPU').
ssd:-					verifica('debe tener SSD en lugar de disco duro').

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