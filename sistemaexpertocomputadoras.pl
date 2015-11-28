%Esta línea es para abrir el archivo en OS X.
%consult('/Users/fernando2/Github/SistemaExperto/sistemaexpertocomputadoras.pl').

/*
	Sistema experto para escoger una computadora basado en las necesidades del usuario.

	Bobadilla Contreras Miguel Fernando.
	Ordoñez Ruiz Edgar.
	Pérez Rodríguez José Rubén.
*/

%Predicado final que imprime el resultado.
comprar:- computadora(Marca, Modelo, Tipo, Uso, Precio, CoresCPU, RAM, SO, HDD, USB2_0, USB3_0),
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
	write('Nucleos de CPU: '),
	write(CoresCPU),
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
%Estructura: marca, modelo, tipo, uso, precio, cores_CPU, RAM, SO, HD, USB 2.0, USB 3.0.

%El ! al final indice un corte. Esto es para que una vez que se llegó al resultado correcto, no se sigan evaluando otras hipótesis.

%Laptop
%computadora(lenovo, g40-30, laptop, oficina, 7000, 2, 4, windows_8_1, 500gb, 2, 1).
%computadora(ghia, qcn3540, laptop, oficina, 6060, 4, 4, windows_8_1, 500gb, 2, 1).
%computadora(dell, inspiron_14_3442, laptop, multimedia, 8550, 4, 4, windows_8_1, 1tb, 2, 1).
%computadora(hp, 14-af16la, laptop, multimedia, 9000, 4, 6, windows_10, 1tb, 2, 1).
%computadora(asus, f455la, laptop, multimedia, 10970, 4, 4, windows_8_1, 1tb, 2, 1).
%computadora(hp, elitebook_840, laptop, disenio, 30100, 8, 16, windows_8_1, 1tb, 2, 1).
%computadora(toshiba, l55-b5179sm, laptop, disenio, 18920, 4, 8, windows_8_1, 1tb, 2,1).
%computadora(lenovo, y50-70, laptop, gamer, 18000, 8, 8, windows_8_1, 1tb, 2, 1).
%computadora(dell, alienware_15_r2, laptop, gamer, 33100, 8, 8, windows_10, 1tb, 0, 3).
computadora('HP',	'Envy 14 u290la',	'Laptop', 'Multimedia', '12000',	'4', '6GB',		'Windows 8.1',	'1TB (HDD)',	'1',	'2'):- hpenvy14, !.
computadora('Acer', 'TMB115',			'Laptop', 'Oficina', 	'4860',		'2', '4GB', 	'Linux Limpus',	'320GB (HDD)', 	'2', 	'1'):- acertmb115, !.
computadora('Apple','MacBook Pro',		'Laptop', 'Disenio', 	'32000',	'8', '16GB', 	'OS X', 		'128GB (SSD)', 	'0', 	'2'):- macbookpro, !.
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
hpenvy14:- laptop,
			windows,
			verifica('la usara para ver peliculas, videos y escuchar musica'),
			muchoAlmacenamiento,
			verifica('sobrepasaria los $10,000').

acertmb115:- laptop,
			otroSo,
			economico,
			muchoAlmacenamiento.

macbookpro:- laptop,
			otroSo,
			verifica('debe tener mas de 4GB de RAM'),
			verifica('debe tener SSD en lugar de disco duro'),
			verifica('sobrepasaria los $20,000').

%Reglas de clasificación (son como características genéricas que pueden tener varios modelos).
%Se puede poner varias veces la misma regla con distinto parámetro en verifica().
%Se puede poner más de una condición en cada regla, separándolas por comas.
laptop:- verifica('debe ser portatil').
otroSo:- verifica('puede tener un sistema operativo distinto a Windows').
economico:- verifica('debe ser un equipo economico ($5,000 o menos)').
muchoAlmacenamiento:- verifica('debe tener gran cantidad de almacenamiento').
windows:- verifica('debe tener Windows').


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