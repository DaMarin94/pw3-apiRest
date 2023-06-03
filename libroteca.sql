Use libroteca;

/* CREACION BASE DE DATOS */

CREATE TABLE imagenes (
    id INT IDENTITY(1,1) PRIMARY KEY,
    nombre VARCHAR(100) NULL,
    url VARCHAR(200) NULL
);

CREATE TABLE genero (
    id INT IDENTITY(1,1) PRIMARY KEY,
    nombre VARCHAR(100) NOT NULL
);

CREATE TABLE autor (
    id INT IDENTITY(1,1) PRIMARY KEY,
    nombre_apellido VARCHAR(100) NOT NULL,
    fecha_nacimiento DATE NULL,
    origen VARCHAR(100) NULL
);

CREATE TABLE libro (
    id INT IDENTITY(1,1) PRIMARY KEY,
    titulo VARCHAR(100) NOT NULL,
    sinapsis VARCHAR(500) NOT NULL,
    contenido TEXT NOT NULL,
    fecha_emision DATE NOT NULL,
    autor_id INT NOT NULL,
    imagen_id INT NOT NULL,
    genero_id INT NOT NULL,
    FOREIGN KEY (autor_id) REFERENCES autor(id),
    FOREIGN KEY (imagen_id) REFERENCES imagenes(id),
    FOREIGN KEY (genero_id) REFERENCES genero(id)
);

/* INSERTS */

/*INSERT INTO imagenes (id, url)
VALUES ('1', 'https://example.com/image1.jpg'),
	   ('2', 'https://example.com/image2.jpg'),
	   ('3', 'https://example.com/image3.jpg'),
	   ('4', 'https://example.com/image3.jpg'),
	   ('5', 'https://example.com/image3.jpg'),
	   ('6', 'https://example.com/image3.jpg'),
	   ('7', 'https://example.com/image3.jpg'),
	   ('8', 'https://example.com/image3.jpg'),
	   ('9', 'https://example.com/image3.jpg'),
	   ('10', 'https://example.com/image3.jpg');*/

INSERT INTO genero (id, nombre)
VALUES ('1', 'Drama'),
	   ('2', 'Romance'),
	   ('3', 'Fantas�a'),
	   ('4', 'Historia'),
	   ('5', 'Aventura'), 
	   ('6', 'Suspenso'),
	   ('7', 'Filosof�a'),
	   ('8', 'Ciencia ficci�n'),
	   ('9', 'Literatura Juvenil'), 
	   ('10', 'Literatura cl�sica');

INSERT INTO autor (id, nombre_apellido, fecha_nacimiento, origen)
VALUES ('1', 'Joanne Rowling', '1965-07-31', 'Reino Unido'),
	   ('2', 'Stephen Edwin King', '1947-09-21', 'Estados Unidos'),
	   ('3', 'Brandon Sanderson', '1975-12-19', 'Estados Unidos'),
	   ('4', 'Antoine Marie Jean-Baptiste Roger', '1990-05-15', 'Francia'),
	   ('5', 'John Ronald Reuel Tolkien', '1892-01-03', 'Bloemfontein'),
	   ('6', 'Annelies Marie Frank', '1929-06-12', 'Alemania'),
	   ('7', 'Miguel de Cervantes Saavedra', '1547-09-29', 'Espa�a'),
	   ('8', 'Charles Henry Selick', '1952-11-30', 'Estados Unidos');

INSERT INTO libro (id, titulo, sinapsis, fecha_emision, autor_id, imagen_id, genero_id) 
VALUES ('1', 'Harry Potter y la piedra filosofal', 'Harry Potter se ha quedado hu�rfano y vive en casa
       de sus abominables t�os y del insoportable primo Dudley. Se siente muy triste y solo, hasta que un 
	   buen d�a recibe una carta que cambiar� su vida para siempre. En ella le comunican que ha sido aceptado como 
	   alumno en el colegio interno Hogwarts de magia y hechicer�a. A partir de ese momento, la suerte de Harry da
	   un vuelco espectacular. En esa escuela tan especial aprender� encantamientos, trucos fabulosos y t�cticas 
	   de defensa contra las malas artes. Se convertir� en el campe�n escolar de quidditch, especie de f�tbol a�reo
	   que se juega montado sobre escobas, y har� un pu�ado de buenos amigos... aunque tambi�n algunos temibles enemigos.
	   Pero, sobre todo, conocer� los secretos que le permitir�n cumplir con su destino. Pues, aunque no lo parezca a primera vista,
	   Harry no es un chico com�n y corriente. �Es un verdadero mago!', '1997-06-26', 1, null, 3),

	   ('2', 'La niebla', 'El maestro se supera a s� mismo... en aterrar. He aqu� una serie de historias -unas, horripilantes en su
	   extravagancia; otras, tan terror�ficas que disparan el coraz�n- que son el producto m�s acabado de una de las m�s poderosas
	   imaginaciones de nuestro tiempo. En La niebla, historia inicial del libro, extensa como una novela, un supermercado se convierte 
	   en �ltimo basti�n de la humanidad al invadir la tierra un enemigo inimaginable... En los desvanes hay cosas que conviene dejar 
	   tranquilas, cosas como El mono... La m�s soberbia conductora del mundo le ofrece a un hombre El atajo de la se�ora Todd, para 
	   llegar antes al para�so... En fin, todo un ramillete de emociones y escalofr�os, cuyas flores se abren por la noche...', '1980-01-01', 2, null, 9),

	   ('3', 'El imperio final', 'El imperio final inicia la saga Nacidos de la Bruma [Mistborn], obra imprescindible del Cosmere, el
	   universo destinado a dar forma a la serie m�s extensa y fascinante jam�s escrita en el �mbito de la fantas�a �pica. Durante mil 
	   a�os han ca�do las cenizas y nada florece. Durante mil a�os los skaa han sido esclavizados y viven sumidos en un miedo inevitable.
	   Durante mil a�os el Lord Legislador reina con un poder absoluto gracias al terror, a sus poderes y a su inmortalidad. Le ayudan
	   obligadores e inquisidores, junto a la poderosa magia de la alomancia. Pero los nobles a menudo han tenido trato sexual con j�venes
	   skaa y, aunque la ley lo proh�be, algunos de sus bastardos han sobrevivido y heredado los poderes alom�nticos: son los nacidos de la
	   bruma (mistborn). Ahora, Kelsier, el superviviente, el �nico que ha logrado huir de los Pozos de Hathsin, ha encontrado a Vin, una 
	   pobre chica skaa con mucha suerte... Tal vez los dos, unidos a la rebeli�n que los skaa intentan desde hace mil a�os, logren cambiar
	   el mundo y la atroz dominaci�n del Lord Legislador. Desde 2006, y en solo diez a�os, Brandon Sanderson se ha consolidado como el gran
	   renovador de la fantas�a del siglo XXI y el autor del g�nero m�s prol�fico del mundo.', '2006-07-17', 3, null, 8),

	   ('4', 'El principito', 'En este libro, un aviador �Saint-Exup�ry lo fue� se encuentra perdido en el desierto del Sahara, despu�s de 
	   haber tenido una aver�a en su avi�n. Entonces aparece un peque�o pr�ncipe. En sus conversaciones con �l, el narrador revela su propia
	   visi�n sobre la estupidez humana y la sencilla sabidur�a de los ni�os que la mayor�a de las personas pierden cuando crecen y se hacen adultos.
	   El principito vive en un peque�o planeta, el asteroide B 612, en el que hay tres volcanes (dos de ellos activos y uno no) y una rosa. Pasa 
	   sus d�as cuidando de su planeta, y quitando los �rboles baobab que constantemente intentan echar ra�ces all�. De permitirles crecer, los 
	   �rboles partir�an su planeta en pedazos. Un d�a decide abandonar su planeta, quiz�s cansado de los reproches y reclamos de la rosa, para 
	   explorar otros mundos. Aprovecha una migraci�n de p�jaros para emprender su viaje y recorrer el universo; es as� como visita seis planetas, 
	   cada uno de ellos habitado por un personaje: un rey, un vanidoso, un borracho, un hombre de negocios, un farolero y un ge�grafo, los cuales, 
	   a su manera, demuestran lo vac�as que se vuelven las personas cuando se transforman en adultas.El �ltimo personaje que conoce, el ge�grafo, 
	   le recomienda viajar a un planeta espec�fico, la Tierra, donde entre otras experiencias acaba conociendo al aviador que, ya hab�amos comentado,
	   estaba perdido en el desierto.', '1943-04-06', 4, null, 3),

       ('5', 'El hobbit', 'Smaug parec�a profundamente dormido cuando Bilbo espi� una vez m�s desde la entrada. �Pero fing�a estar dormido! �Estaba 
	   vigilando la entrada del t�nel!... Sacado de su c�modo agujero-hobbit por Gandalf y una banda de enanos, Bilbo se encuentra de pronto en medio 
	   de una conspiraci�n que pretende apoderarse del tesoro de Smaug el Magn�fico, un enorme y muy peligroso drag�n...', '1937-09-21', 5, null, 3),

       ('6', 'Diario de Ana Frank', 'Tras la invasi�n a Holanda, los Frank, comerciantes jud�os alemanes emigrados a Amsterdam en 1933, se ocultaron
	   de la Gestapo en una buhardilla anexa al edificio donde el padre de Ana ten�a sus oficinas. Eran ocho personas y permanecieron recluidas desde
	   junio de 1942 hasta agosto de 1944, fecha en que fueron detenidos y enviados a un campo de concentraci�n. En ese lugar, y en las m�s precarias 
	   condiciones, Ana, a la saz�n una ni�a de trece a�os, escribi� su estremecedor Diario: un testimonio �nico en su g�nero sobre el horror y la 
	   barbarie nazi, y sobre los sentimientos y experiencias de la propia Ana y sus acompa�antes. Ana muri� en el campo de Bergen-Belsen en marzo de 1945. 
	   Su Diario nunca morir�.', '1947-06-25', 6, null, 4),

       ('7', 'Don Quijote de la mancha', 'Una de las novelas m�s importantes de todos los tiempos y para muchos la obra definitiva de la literatura 
	   espa�ola. Escrita por Miguel de Cervantes (1547-1616) y publicada entre 1605 y 1615, narra las aventuras del ingenioso hidalgo Don Quijote de 
	   la Mancha (llamado realmente Alonso Quijano), en su misi�n personal de enmendar entuertos en donde los hubiere, acompa�ado de su fiel escudero, 
	   y amigo Sancho Panza. Nacida del amor de su autor por la novela caballeresca, Don Quijote se convirti� en una oda a ese particular estilo y en
	   una cr�tica mordaz y humor�stica de la sociedad y el mundo de la �poca.', '1605-01-26', 7, null, 5),

       ('8', 'Coraline', 'Al d�a siguiente de mudarse de casa, Coraline explora las catorce puertas de su nuevo hogar. Trece se pueden abrir con 
	   normalidad, pero la decimocuarta est� cerrada y tapiada. Cuando por fin consigue abrirla, Coraline se encuentra con un pasadizo secreto que
	   la conduce a otra casa tan parecida a la suya que resulta escalofriante. Sin embargo, hay ciertas diferencias que llaman su atenci�n: la 
	   comida es m�s rica, los juguetes son tan desconocidos como maravillosos y, sobre todo, hay otra madre y otro padre que quieren que Coraline
	   se quede con ellos, se convierta en su hija y no se marche nunca. Pronto Coraline se da cuenta de que, tras los espejos, hay otros ni�os que 
	   han ca�do en la trampa. Son como almas perdidas, y ahora ella es su �nica esperanza de salvaci�n. Pero para rescatarlos tendr� tambi�n que
	   recuperar a sus verdaderos padres, y cumplir as� el desaf�o que le permitir� volver a su vida anterior.', '2002-07-02', 8, null, 6);