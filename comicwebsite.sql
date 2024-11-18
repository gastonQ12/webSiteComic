-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 18-11-2024 a las 21:14:16
-- Versión del servidor: 10.4.32-MariaDB
-- Versión de PHP: 8.0.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `comicwebsite`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `admin`
--

CREATE TABLE `admin` (
  `mail` varchar(50) NOT NULL,
  `contraseña` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `comic`
--

CREATE TABLE `comic` (
  `codComic` varchar(100) NOT NULL,
  `nombre` varchar(50) NOT NULL,
  `editorial` varchar(50) NOT NULL,
  `stock` tinyint(10) NOT NULL,
  `precio` double NOT NULL,
  `descripcion` text NOT NULL,
  `categoria` varchar(50) NOT NULL,
  `autor` varchar(50) NOT NULL,
  `paginas` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `comic`
--

INSERT INTO `comic` (`codComic`, `nombre`, `editorial`, `stock`, `precio`, `descripcion`, `categoria`, `autor`, `paginas`) VALUES
('https://drive.google.com/thumbnail?id=1-Iri-KNImAOFPkOl0U0h7vgCHgomlvH9', 'Kingdom Come', 'Dc Comics', 12, 30000, 'En el mundo del futuro cercano de Kingdom Come, los superhéroes son omnipresentes, pero el heroísmo es poco común. Después de décadas como campeones de la Tierra, los miembros de la Liga de la Justicia se han retirado de la vista del público, reemplazados por una nueva generación de luchadores contra el crimen cuyo tipo de justicia deja a la humanidad aterrorizada, en lugar de inspirada. Pero con el futuro del planeta en peligro, Superman, Wonder Woman y Batman deben salir de su retiro para dar una última batalla por la verdad y la justicia...', 'Superhéroes, Novela grafica', 'Mark Waid', 392),
('https://drive.google.com/thumbnail?id=11S8vOs5WIleBYHp5AgD8HP3AW2JKPILS', 'Bone: The Complete Cartoon Epic in One Volume', 'Cartoon Books\r', 16, 50000, 'Conoce a los primos Bone, Fone Bone, Phoney Bone y Smiley Bone, tres inadaptados que fueron expulsados ​​de Boneville y se encuentran perdidos en un vasto desierto inexplorado. Se abren camino hacia un profundo valle boscoso lleno de criaturas maravillosas y aterradoras. Con la ayuda de la misteriosa Thorn, su dura abuela Ben y el Gran Dragón Rojo, los chicos hacen todo lo posible por sobrevivir en medio de los problemas que se avecinan entre los habitantes del valle. ¡Será el año más largo, pero también el más divertido, de sus vidas!', 'Fantasia, Novela Grafica', 'Jeff Smith', 1360),
('https://drive.google.com/thumbnail?id=18C_F1wAJBxfg_ivFNXvelihEk5_88zqr', 'The Nice House on the Lake: the Deluxe Edition', 'Dc Comics	', 19, 30000, 'Con Something Is Killing the Children y The Department of Truth, James Tynion IV ha cambiado la cara del terror en los cómics modernos. ¡Ahora prepárate para su historia más ambiciosa hasta el momento, junto a su compañero de Detective Comics, Álvaro Martínez Bueno!', 'Horror, Ciencia ficción, Novela grafica', 'IV Tynion, James ', 400),
('https://drive.google.com/thumbnail?id=18xledhNofPSMo3WDxIkghnPxrASSImRh', 'The Boys Omnibus One', 'Dynamite Entertainment', 18, 30000, 'Billy Butcher, Wee Hughie, Mother\'s Milk, The Frenchman y The Female son The Boys: un equipo de personas muy peligrosas respaldado por la CIA, cada uno dedicado a la lucha contra la fuerza más peligrosa de la Tierra: ¡las superpotencias! Algunos superhéroes deben ser vigilados. Algunos deben ser controlados. Y algunos de ellos, a veces, deben ser eliminados de la escena. ¡Es entonces cuando llamas a The Boys!', 'Superhéroes, Novela grafica, violencia', 'Garth Ennis', 344),
('https://drive.google.com/thumbnail?id=19Amr7HAYZ4xIkcVANWkUhZKIHokS_HI7', 'Solo Leveling, Vol. 9', 'Ize Press', 16, 30000, 'Jinwoo sigue el llamado del sistema y regresa a la doble mazmorra que lo inició todo con la esperanza de finalmente recibir algunas respuestas. ¡Lo que no espera es encontrar a su oponente más duro hasta ahora! Mientras tanto, una puerta de rango S se cierne sobre Tokio y, después de la pérdida de sus cazadores más fuertes, Japón recurre a la ayuda externa, pero con un aumento mundial en la actividad de las bestias mágicas, solo un cazador de rango S acepta su oferta... ¿Será eso suficiente para detener a las bestias mágicas antes de que asolen Japón y más allá?', 'Novela grafica', ' h-goon', 312),
('https://drive.google.com/thumbnail?id=1ANkKlF0cTgxK_BjzjeLxFYZRWYGd3AZG', 'STAR WARS: MACE WINDU - THE TWILIGHT RUN', 'Licensed Publishing', 9, 10000, '¡Uno de los más grandes Caballeros Jedi de todos los tiempos protagoniza su propio cómic! Incluso en los años previos a las Guerras Clon, Mace Windu era conocido por su disciplina, determinación y habilidades de combate. ¡Todos ellos se pondrán a prueba mientras compite por evitar que un secreto incendiario caiga en las manos equivocadas! Cuando el descubrimiento de un científico amenaza el equilibrio de la galaxia, Mace se ve obligado a recorrer un peligroso camino de misterio y acción. Después de trabajar juntos para escapar de la amenaza del Gusano Perforador, Mace y la contrabandista Azita Cruuz son perseguidos por un cazarrecompensas contratado por los hutts en la luna de la refinería Ro Mira. Pero, ¿qué más les espera en el camino? ¿Quién los sigue? ¿Y qué es Coaxium Ultra? Recopilación de STAR WARS: MACE WINDU (2024) n.º 1-4 y material de STAR WARS: REVELATIONS (2023) n.º 1.\r\n', 'Ciencia ficción, Novela grafica', 'Marc Bernardin', 112),
('https://drive.google.com/thumbnail?id=1ch48FcGxYm72ErlXqzNBupwpmwLNhDgQ', 'Oblivion Song by Kirkman & De Felici Volume 1', 'Image Comics', 19, 10000, 'Hace una década, 300.000 ciudadanos de Filadelfia se perdieron repentinamente en Oblivion. El gobierno hizo todo lo posible por recuperarlos, pero después de muchos años, se dieron por vencidos. Nathan Cole... no lo hará. Hace viajes diarios, arriesgando su vida para intentar rescatar a aquellos que aún viven en el apocalíptico infierno de Oblivion. Pero tal vez... ¿Nathan está buscando algo más? ¿Por qué no puede resistirse al canto de sirena de Oblivion Song?', 'Ciencia ficción, Novela grafica', 'Robert Kirkman', 144),
('https://drive.google.com/thumbnail?id=1CvT7V4cWUnz2_rlJ5Xthwtb0MUjatt7_', 'Duke Volume 1: Knowing is Half the Battle', 'Image Comics\r', 12, 10000, 'G.I. Joe comienza aquí.\r\n\r\nConrad Hauser hizo el primer contacto con un ser extraterrestre y vivió para contarlo. Pero nadie, ni siquiera el coronel Hawk, creerá la historia del colosal robot transformable que casi mata al hombre conocido como Duke.\r\n\r\nAhora, uno de los oficiales más condecorados del ejército de los EE. UU. está en busca de respuestas, arrastrado a un conflicto para el que ningún entrenamiento podría prepararlo. Una guerra a la que solo un verdadero héroe estadounidense tiene alguna posibilidad de sobrevivir...\r\n\r\nEl escritor superestrella Joshua Williamson (Superman, Batman) y el artista Tom Reilly dan inicio a la primera de cuatro miniseries llenas de acción que presentarán lo mejor y lo peor que la humanidad tiene para ofrecer en el Universo Energon.\r\n', 'Novela grafica, Ciencia ficción', 'Joshua Williamson', 128),
('https://drive.google.com/thumbnail?id=1DK9viLntWTs23qJvmD4xSqXgbkdlPl17', 'Adulthood Is a Gift!: A Celebration of Sarah\'s Scr', 'Andrews McMeel Publishing', 9, 10000, 'Con 100 cómics, 15 ensayos y docenas de fotos y bocetos, el quinto libro de Sarah\'s Scribbles ofrece una mirada poco común detrás del proceso creativo de una de las artistas de cómics más originales y queridas de una generación. Como complemento cómico de su primer libro, el bestseller Adulthood is a Myth, las ilustraciones y la escritura de Adulthood is a Gift! son una celebración de las muchas experiencias y lecciones de vida que la autora ha adquirido en su década de hacer cómics y libros virales, identificables y premiados. Este libro también incluye una hoja de calcomanías.', 'Humor, Novela Grafica', 'Sarah Andersen', 144),
('https://drive.google.com/thumbnail?id=1DSOenh4SJaXCTwMaUqpuv57WhRHH3UGE', 'Jujutsu Kaisen, Vol. 20', 'VIZ Media LLC', 10, 10000, 'Fushiguro y Reggie casi se han aplastado hasta la muerte. Reggie hace un movimiento para romper el punto muerto y llevar la batalla a su clímax. Mientras tanto, Okkotsu interrumpe el enfrentamiento de cuatro luchadores de jujutsu en la colonia Sendai, lo que conduce a una feroz batalla que involucra a hechiceros reencarnados y un espíritu maldito de grado especial.', 'manga, accion, shounen', 'Gege Akutami', 192),
('https://drive.google.com/thumbnail?id=1EYLlpT8IInqQgxDSB6NH-OiP4OoUnnFV', 'Naruto: 3-in-1 Edition, Vol. 1', 'VIZ Media LLC\r', 6, 50000, 'Nadie toma en serio a Naruto en la Academia Ninja. Especialmente los otros estudiantes, quienes compiten para ser el mejor ninja de todos los tiempos y algún día liderar Konoha, la Aldea Oculta entre las Hojas. Naruto y sus compañeros de clase están a punto de embarcarse en una aventura que los llevará mucho más allá de la Academia Ninja, más allá de Konoha, más allá de todo lo que jamás imaginaron. ¿Cuál es el verdadero destino de Naruto? ¡La historia épica que ha vendido millones en todo el mundo comienza ahora!', 'Manga,Ciencia Ficción,Novela grafica', 'Masashi Kishimoto', 600),
('https://drive.google.com/thumbnail?id=1fM27_C8kibcq7PxOAtIXPuEVEdhv-_yu', 'Jujutsu Kaisen, Vol. 23', 'VIZ Media LLC\r', 11, 20000, 'En un mundo donde los espíritus malditos se alimentan de humanos desprevenidos, fragmentos del legendario y temido demonio Ryomen Sukuna se han perdido y están dispersos por todas partes. Si algún demonio consume partes del cuerpo de Sukuna, el poder que obtenga podría destruir el mundo tal como lo conocemos. ¡Afortunadamente, existe una misteriosa escuela de hechiceros de jujutsu que existe para proteger la precaria existencia de los vivos de lo sobrenatural!', 'manga, accion, shounen,', 'Gege Akutami', 192),
('https://drive.google.com/thumbnail?id=1GoGcPkh6-aDjNZyiv4g-UQcw9dRUjBhn', 'Preacher 1', 'Vertigo', 10, 30000, 'En esta ahora legendaria serie de novelas gráficas que sirve de inspiración para la exitosa serie de televisión de AMC, Jesse Custer era solo un predicador de un pequeño pueblo de Texas... hasta que su congregación fue aplastada por poderes fuera de su control y el Predicador quedó imbuido de habilidades más allá de la comprensión de cualquiera.', 'Novela grafica, horror, zombies', 'Garth Ennis', 335),
('https://drive.google.com/thumbnail?id=1h0Ihz_ouyeVdwz1g_yh9n-HH00dEEMH7', 'STAR WARS VOL. 8: THE SITH AND THE SKYWALKER ', 'Licensed Publishing', 17, 50000, '¡El siguiente capítulo impactante de la saga de Luke Skywalker! Luke sabe que su destino lo lleva a una confrontación con Darth Vader. Pero Vader es un Señor Oscuro de los Sith, y Luke apenas es un Jedi. Para tener alguna posibilidad de sobrevivir, debe encontrar una manera de entrenarse en las técnicas de batalla a las que pronto se enfrentará. ¡Debe encontrar... otro Sith! ¡Pero su objetivo siente una oportunidad de un nuevo ascenso! Atrapado en lo profundo de las líneas enemigas, ¿cómo sobrevivirá Luke? ¿Y quién será si lo hace? Además: ¡Las acciones pasadas de Lando Calrissian vuelven para atormentarlo mientras enfrenta un juicio por crímenes contra la Alianza! ¡Y su única esperanza puede estar en... Darth Vader! Recopilación de STAR WARS (2020) #42-45 y material de STAR WARS: REVELATIONS (2023) #1 y DÍA DEL CÓMIC GRATIS 2024: STAR WARS.', 'Novela grafica, Ciencia ficción', 'Charles Soule', 152),
('https://drive.google.com/thumbnail?id=1hpxkzNP3CBYVifkmzXU9SHCcJUS1VHvb', 'More Tall Tales: A Graphic Novel (BONE Companion)', 'Image Comics', 15, 10000, 'La saga BONE, ganadora de premios y superventas de Jeff Smith, regresa con este galardonado complemento de Tall Tales. Smiley Bone, Fone Bone y su amigo, la criatura rata, Bartleby, llevan a un grupo de jóvenes exploradores a un lugar emblemático legendario que los primos Bone encontraron cuando eran niños. Comparten historias alrededor de una fogata, contando historias de viajes a la luna, las delicias de la quiche, un monstruo imaginario que cobra vida y un encuentro con las dos estúpidas criaturas rata que salió hilarantemente mal. Este volumen incluye historias escritas por Jeff Smith y Tom Sniegoski, e ilustradas por Jeff Smith, Stan Sakai, Katie Cook, Matt Smith y Scott Brown.', 'Novela grafica, Humor', 'Jeff Smith', 128),
('https://drive.google.com/thumbnail?id=1hsn0-Sq-7Vl-fDSm2_VlLlss529rcQul', 'Dog Man: The Scarlet Shedder: A Graphic Novel', 'Graphix', 12, 10000, '¡P.U.! ¡Un zorrillo roció a Dog Man! Después de sumergirlo en jugo de tomate, el hedor desapareció, pero el color rojo escarlata permaneció. Ahora exiliado, este valiente superhéroe debe luchar para salvar a los ciudadanos que lo rechazaron. ¿El fin justificará los medios para Petey, quien, a regañadientes, se vio obligado a volver a la vida criminal para ayudar a Dog Man? ¿Y quién dará un paso al frente cuando un villano completamente nuevo y nunca antes visto desate un ejército de robots con inteligencia artificial?', 'humor, Superhéroes, Novela grafica', 'Dav Pilkey', 224),
('https://drive.google.com/thumbnail?id=1HWeO98EBGSm5neLcidvo1GqoQcJM4PbG', 'Big Nate: Say Good-bye to Dork City', 'Andrews McMeel Publishing', 10, 20000, 'Se busca: Nate Wright, más conocido como Big Nate, de un metro y medio de altura, pelo negro con siete puntas, once años, alumno de sexto grado en la escuela pública 38, poseedor del récord de detenciones escolares. Recompensa: Big Nate: ¡Dile adiós a Dork City! ¿Puede Nate Wright ser más genial? No según el propio Nate. Ya es el baterista más rockero de la escuela pública 38, el mejor poeta (mira su haiku sobre las nueces de Brasil) y el pensador más profundo, en su propia mente. Pero, ¿tiene Nate lo que se necesita para pasar el rato con Marcus, el líder del grupo más notorio de la escuela? ¿O decidirá que ser genial no es todo lo bueno que se dice? Lee Dile adiós a Dork City... ¡y dile hola a muchas risas!', 'Humor, Novela Grafica', 'Lincoln Peirce', 224),
('https://drive.google.com/thumbnail?id=1ijdtYJ8lE4NyQBM5OEYi-Eu9cBvqqv6w', 'The Adventures of Captain Underpants', 'Scholastic Inc.', 16, 10000, 'George y Harold son mejores amigos que disfrutan haciendo sus propios cómics. Juntos han creado al superhéroe más grande en la historia de su escuela primaria: ¡el Capitán Calzoncillos! ¡Su verdadera identidad es TAN secreta que ni siquiera ÉL sabe quién es! ¡Tra-la-laaaaa! ¡Es una diversión que no te puedes perder!\nDespués de la aventura del Capitán Calzoncillos, únete a George y Harold mientras comparten sus cómics extra nunca antes vistos: El Capitán Calzoncillos conoce a Dog Man y Dog Man y la Liga de los Inadaptados.\nLas aventuras del Capitán Calzoncillos es el primer libro de la serie superventas mundial del Capitán Calzoncillos de Dav Pilkey. Para más aventuras, creatividad y humor, asegúrate de ver las novelas gráficas Dog Man y Cat Kid Comic Club de Dav. ¡Leer te da superpoderes!Después de la aventura del Capitán Calzoncillos, únete a George y Harold mientras comparten sus cómics extra nunca antes vistos: El Capitán Calzoncillos conoce a Dog Man y Dog Man y la Liga de los Inadaptados.\nLas aventuras del Capitán Calzoncillos es el primer libro de la serie superventas mundial del Capitán Calzoncillos de Dav Pilkey. Para más aventuras, creatividad y humor, asegúrate de ver las novelas gráficas Dog Man y Cat Kid Comic Club de Dav. ¡Leer te da superpoderes!', 'humor, Superhéroes, Novela grafica', 'Dav Pilkey', 176),
('https://drive.google.com/thumbnail?id=1ivIx_N5pCmBvel26riaV4fq069aYaWK9', 'Batman: Year One Deluxe', 'Dc Comics        ', 16, 20000, 'En su primer año en el cargo, Batman se abre camino en una Ciudad Gótica mucho más oscura que la que dejó. Su solemne promesa de extinguir el elemento criminal de la ciudad es solo la mitad de la batalla; junto con el teniente James Gordon, el Caballero Oscuro también debe luchar contra una fuerza policial más corrupta que la escoria de las calles.', 'Superhéroes, Novela grafica', 'Frank Miller', 144),
('https://drive.google.com/thumbnail?id=1jEx0YtmRvfRDBoTlIWQw4IyQTXQTHEqd', 'The Walking Dead: Here\'s Negan', 'Image Comics', 7, 10000, '¿Quién es Negan? Desde su debut en THE WALKING DEAD #100, el carismático psicópata ha antagonizado a Rick Grimes, ha asesinado a su amigo con un bate de béisbol envuelto en alambre de púas (al que llama \"Lucille\") y ha liderado a los Salvadores a la guerra contra Alexandria y las comunidades vecinas.', 'Novela grafica, horror', 'Robert Kikman', 72),
('https://drive.google.com/thumbnail?id=1JuUZh9TVdGTQ_R8eSn5fLP4ODPFIxNp1', 'Watchmen', 'DC Comics        ', 5, 30000, 'Una obra maestra que reinventa el género de superhéroes.        ', 'Superhéroes, Ciencia ficción', 'Alan Moore, Dave Gibbons        ', 312),
('https://drive.google.com/thumbnail?id=1jYz5vChR2mgUCEZiUuiiY6vU0ItsDjza', 'Teenage Mutant Ninja Turtles: The IDW Collection V', 'IDW Publishing', 14, 30000, 'El cocreador de TMNT, Kevin Eastman, y el escritor Tom Waltz guían a los lectores a través de un origen innovador y de historias épicas de coraje, lealtad y familia mientras las Tortugas y sus aliados luchan por sobrevivir contra enemigos antiguos y nuevos en las peligrosas calles y alcantarillas de la ciudad de Nueva York.\r\n\r\nRecopila los primeros 12 números de la serie actual de las Tortugas Ninja, además de los one-shots de la microserie de Raphael, Michelangelo, Donatello, Leonardo y Splinter.', 'Ciencia ficción, Novela grafica', 'Tom Waltz', 424),
('https://drive.google.com/thumbnail?id=1K-_bIpYqOksPGU7ejCNgsnJouWOyTIXV', 'Invincible Compendium Volume 2', 'Image Comics', 8, 200000, 'De los visionarios creadores Robert Kirkman (The Walking Dead), Cory Walker (Science Dog) y Ryan Ottley (Amazing Spider-Man), ¡ya está aquí la segunda colección masiva en rústica del cómic de superhéroes más grande del universo! ¡Sé testigo de la transición de Invincible de un niño nuevo en el barrio a un superhéroe establecido!\r\nRecopila Invincible n.° 48-96.', 'Superhéroes, Novela grafica, Ciencia ficción\\', 'Robert Kirkman', 1184),
('https://drive.google.com/thumbnail?id=1KX2qz_azIPpmSQDzaTxaw0vVDIbKFXY2', 'DEADPOOL MATA AL UNIVERSO MARVEL', 'Marvel', 19, 20000, 'Wade Wilson, el Mercenario Bocón conocido como Deadpool, ha perdido completamente la cabeza. En lugar de escuchar las familiares y simpáticas voces que normalmente resuenan en su cabeza, una muy peligrosa ha empezado a susurrar ideas de lo más letales en el oído de Wade y pronto nadie estará a salvo. Cullen Bunn y Dalibor Talaji? nos ofrecen una visita guiada por los lugares más emblemáticos del Universo Marvel y sus personajes más conocidos, justo antes de que pasen por las katanas de Wade. ¡Cuidado que mancha!', 'superhéroes,ciencia ficcion, violencia', 'CULLEN BUNN, Dalibor Talajic', 104),
('https://drive.google.com/thumbnail?id=1LApJWkE510HNgEuXiEFf3-1oJl21s9mq', 'Teenage Mutant Ninja Turtles: The Last Ronin--Lost', 'IDW Publishing', 6, 20000, 'TMNT: The Last Ronin llevó a los lectores a un viaje trepidante a través del tiempo para presenciar los últimos y desgarradores días de los Héroes en un Caparazón. ¡Ahora, consigue la precuela completa de 5 números, más un número adicional relacionado, en una colección de cómics de TMNT!\r\n\r\nEn Lost Years, los escritores originales de la miniserie Kevin Eastman y Tom Waltz se unen al artista Ben Bishop (TMNT: The Last Ronin) y SL Gallant (G.I. Joe: A Real American Hero) para finalmente revelar qué aventuras experimentó el Último Ronin durante su viaje vengativo. Mientras que en el presente, una nueva maestra, Casey Marie Jones, prepara a sus jóvenes estudiantes tortugas para ser la próxima generación de... ¡Tortugas Ninja Adolescentes Mutantes!', 'Ciencia ficción, Novela grafica', 'Kevin Eastman', 208),
('https://drive.google.com/thumbnail?id=1lg9JMOrJiZ6lu4YKZwVuzzHAhi4Sno9t', 'The Nice House on the Lake 1', 'Dc Comics        ', 12, 20000, 'Todos los invitados a la casa conocen a Walter... bueno, lo conocen un poco, de todos modos. Algunos lo conocieron en la infancia; otros lo conocieron hace meses. Y Walter siempre ha sido un poco... raro.\r\n\r\nPero después del año más difícil de sus vidas, nadie iba a rechazar la invitación de Walter a una casa asombrosamente hermosa en el bosque, con vista a un enorme lago boscoso. Es hermosa, es opulenta, es privada... ¿así que una semana de soportar los extraños planes y apodos de Walter a cambio de las vacaciones de su vida? ¿Por qué no?\r\n\r\nTodos estaban en ese momento de sus vidas en el que podían sentir que se alejaban de sus otros amigos; ¿no sería... agradable una oportunidad de reconectarse? En La bonita casa en el lago, las ansiedades dominantes del siglo XXI adquieren un nuevo rostro aterrador... y podría ser el rostro de la persona en la que alguna vez confiaste más.\r', 'Horror, Ciencia ficción, Novela grafica', 'IV Tynion, James ', 200),
('https://drive.google.com/thumbnail?id=1mBLHtuMn3VxHXJGkYSVfZOmjMIW7WcVE', 'Wolverine: Old Man Logan', 'Marvel Universe\r', 14, 20000, 'MARK MILLAR y STEVE MCNIVEN, quienes trabajaron juntos por última vez en la monumental CIVIL WAR, nos traen la historia más importante de WOLVERINE del siglo XXI. Nadie sabe qué sucedió la noche en que los héroes cayeron. Todo lo que sabemos es que desaparecieron y el mal triunfó y los malos han estado tomando las decisiones desde entonces. Lo que le sucedió a Wolverine es el mayor misterio de todos. Durante 50 años, nadie ha sabido nada de él... y en su lugar se encuentra un anciano llamado Logan. Un hombre preocupado solo por su familia. Un hombre empujado al límite por la BANDA DE HULK. Un hombre obligado a ayudar a un viejo amigo, el arquero ciego, HAWKEYE, a conducir tres mil millas para garantizar la seguridad de su familia. Prepárate para el viaje de tu vida, Logan.', 'Superhéroes, Novela grafica', 'Mark Millar', 224),
('https://drive.google.com/thumbnail?id=1MP-iTw8sSdIe9DlKaIyomhMlQlAi8gpK', 'Flashpoint ', 'Dc Comics', 9, 10000, 'No es un sueño, no es una historia imaginaria, no es otro mundo. Este es un dato curioso: cuando Barry Allen se despierta en su escritorio, descubre que el mundo ha cambiado. La familia está viva, los seres queridos son extraños y los amigos cercanos son diferentes, se han ido o algo peor. Es un mundo al borde de una guerra cataclísmica, pero ¿dónde están los héroes más grandes de la Tierra para detenerla? Es un lugar donde la última esperanza de Estados Unidos es Cyborg, que espera reunir las fuerzas de The Outsider, The Secret 7, Shazam!, Citizen Cold y otras caras nuevas y familiares, pero alteradas. ¡Es un mundo al que podría estar quedándose sin tiempo, si The Flash no puede encontrar al villano que alteró la línea de tiempo!', 'Superhéroes, Ciencia ficción, novela grafica', 'Geoff Johns', 176),
('https://drive.google.com/thumbnail?id=1N41Dtk4ZxZc28dagwAB09WE0amPfCcwp', 'Maus The complete', 'Pantheon Books ', 10, 30000, 'Una conmovedora historia autobiográfica sobre el Holocausto, representada a través de ratones y gatos.	', 'Histórico, Novela grafica', 'lArt Spiegelman', 300),
('https://drive.google.com/thumbnail?id=1naZKnoZ_Ip7g8RYMJWXCnye_UilvdJnR', 'All-Star Superman Deluxe Edition', 'Dc Comics', 15, 30000, '¡LAS AVENTURAS DE SUPERMAN! Una locura descontrolada en el planeta Bizarro. Una ciudad embotellada que demuestra que nunca se puede volver a casa. Un sol viviente empeñado en destruir a la humanidad. Un mundo sin el Hombre de Acero. Doce trabajos imposibles y apenas unos minutos para salvar la Tierra.', 'Superhéroes, Ciencia ficción', 'Grant Morrison', 328),
('https://drive.google.com/thumbnail?id=1ol2-q8Br734zv8Yk-OuyZDAw86p-N9Gk', 'Joker: DC Compact Comics Edition', 'Dc Comics', 18, 10000, 'El mayor enemigo de Batman alcanza nuevos niveles de complejidad e intensidad en esta historia única creada por el equipo de Brian Azzarello y Lee Bermejo, ganadores del premio Eisner y bestseller del New York Times. El Guasón ha sido liberado misteriosamente del Asilo Arkham y no está muy contento con lo que ha sucedido con sus negocios en Ciudad Gótica mientras ha estado fuera. Lo que sigue es una noche desgarradora de venganza, asesinato y crimen frenético como solo el Guasón puede ofrecer, mientras recupera brutalmente sus bienes robados del Pingüino, el Acertijo, Dos Caras, Killer Croc y más.', 'Superhéroes, Novela grafica', 'Brian Azzarello', 136),
('https://drive.google.com/thumbnail?id=1PnTt5J_7LoN6dYev49lcVBPdWMnBzaML', 'STAR WARS VOL. 5: THE PATH TO VICTORY', 'Licensed Publishing', 19, 20000, 'Recopila STAR WARS (2020) n.° 26-30. ¡La flota rebelde se reúne por fin! Leia Organa, Mon Mothma y los demás líderes de la Alianza envían un mensaje a la galaxia de que la resistencia al gobierno de Palpatine sigue siendo tan fuerte como siempre. Mientras tanto, Crimson Dawn ha activado a sus agentes durmientes en toda la galaxia, y dos de ellos corren para entregar un peligroso secreto a la Alianza Rebelde. ¡Pero el Imperio sabe lo que han robado y toda la Armada Imperial los persigue! Mientras tanto, Threepio entabla negociaciones agresivas, Luke se embarca en una misión que pondrá a prueba sus crecientes habilidades Jedi hasta el límite, y los rebeldes llegan a comprender el verdadero alcance de la amenaza a la que se enfrentan.', 'Novela grafica, Ciencia ficción', 'Charles Soule', 120),
('https://drive.google.com/thumbnail?id=1RD2_I-EJywhfVraLbzvJdSjtYiLaKtcA', 'X-MEN: DAYS OF FUTURE PAST', 'Marvel Universe\r', 17, 10000, 'Recopila los números 138 a 143 de Uncanny X-Men. Reviva el legendario primer viaje al futuro distópico de 2013, donde los Centinelas acechan la Tierra y los X-Men son la única esperanza de la humanidad... ¡hasta que mueren! También incluye la primera aparición de Alpha Flight y el regreso del Wendigo.', 'Superhéroes, Novela grafica, Ciencia ficción', 'Chris Claremont ', 184),
('https://drive.google.com/thumbnail?id=1TipuJqHs6-399vIC8PdUlwD0FJtr8E-b', 'Batman 2: The City of Owls', 'Dc Comics', 14, 20000, 'Durante más de un siglo, la Corte de los Búhos ha gobernado Ciudad Gótica en secreto: su alcance es ineludible, su poder imparable.\r\n\r\nHasta que lucharon contra Batman.\r\n\r\nEl justiciero protector de Ciudad Gótica logró escapar de las garras de la Corte con su mente y cuerpo apenas intactos. El Caballero Oscuro logró ganar la batalla contra sus nuevos y letales agresores, pero ciertamente no la guerra. Batman fue solo la primera parte de su conquista. Ahora tienen la mira puesta en algo mucho más grande: Ciudad Gótica.\r\n\r\nBatman: La Ciudad de los Búhos (que recopila Batman #8-12 y Batman Annual #1) es un éxito comercial y crítico, y continúa la saga clásica instantánea de la batalla del Caballero Oscuro contra las fuerzas más antiguas y oscuras de Ciudad Gótica del equipo creativo más vendido #1 del New York Times, compuesto por el escritor Scott Snyder (American Vampire) y el artista Greg Capullo (Spawn), además de una variedad de colaboradores invitados talentosos.', 'Superhéroes, Novela grafica', 'Scott Snyder', 208),
('https://drive.google.com/thumbnail?id=1u3jaIm10QUtMnjdGyhpGuvztZ4Q0dMk-', 'The Walking Dead: Compendium One', 'Image Comics\r', 11, 200000, 'Presentamos los primeros ocho volúmenes de la serie de libros más vendidos del New York Times, favorita de los fans, recopilados en una enorme colección de libros de bolsillo. Recopila los números 1 a 48 de The Walking Dead. Esta es la colección perfecta para cualquier fan de la serie de televisión ganadora del premio Emmy en AMC: más de mil páginas que narran el comienzo de la historia de terror de supervivencia ganadora del premio Eisner de Robert Kirkman, desde el despertar de Rick Grimes solo en un hospital, hasta él y su familia buscando consuelo en la granja de Hershel, y la controvertida introducción del déspota de Woodbury: El Gobernador. En un mundo gobernado por los muertos, finalmente nos vemos obligados a comenzar a vivir.\r', 'Novela grafica, horror, zombies', 'Robert Kikman', 1088),
('https://drive.google.com/thumbnail?id=1Uzj-LQM25H1sSJgH7j5LUK-Modpl4g0-', 'Harley Quinn & the Gotham City Sirens', 'Dc Comics', 7, 30000, 'Catwoman, Poison Ivy y Harley Quinn están cansadas de jugar con las reglas de otras personas, sin importar de qué lado de la ley se encuentren. Tienen una nueva agenda que es completamente suya y usarán todos los medios necesarios para lograrla. Pero, ¿pueden llevarse bien y trabajar en equipo? ¿Y quién saldrá lastimado en el camino?', 'Superhéroes, Novela grafica', 'Paul Dini ', 320),
('https://drive.google.com/thumbnail?id=1vLizsTaazjm_qnbrZwe4xt5LBJnP_kmL', 'Poison Ivy/Swamp Thing: Feral Trees', 'DC Comics', 15, 20000, 'Hay algo mal con los árboles. Una presencia que grita de dolor, desgarrando, rechinando y royendo la estructura misma del Verde, pidiendo sangre. A su paso, deja un rastro de vísceras y carnicería, que conduce a un misterio que el Parlamento de los Árboles ha reclutado a Hiedra Venenosa y a La Cosa del Pantano para resolver. ¿Podrán la Villana Verdant y el Avatar del Verde abrirse camino hasta el corazón de este desierto homicida y descubrir la fuente de este horror, o se convertirán en las próximas víctimas de estos árboles salvajes? Esta historia, que cobra vida violentamente gracias a G. Willow Wilson y Mike Perkins, responderá a estas preguntas. Pero cuidado, este aterrador relato no es para los débiles de corazón.', 'Superhéroes, Novela grafica', 'G. Willow Wilson', 233),
('https://drive.google.com/thumbnail?id=1vQZr-VwYrorrkfNwm2NJwvpopdeQS1tz', 'One-Punch Man, Vol. 1', 'VIZ Media LLC', 13, 20000, 'Nada en Saitama pasa la prueba visual cuando se trata de superhéroes, desde su expresión sin vida hasta su cabeza calva y su físico poco impresionante. Sin embargo, este tipo de apariencia promedio tiene un problema no tan promedio: ¡parece que simplemente no puede encontrar un oponente lo suficientemente fuerte para enfrentarlo!', 'Superhéroes, Novela grafica', 'ONE ', 200),
('https://drive.google.com/thumbnail?id=1VYZ_Um-DG9QARowI9QhfREycIlxF0JfV', 'The Boys Omnibus Vol. 5', 'Dynamite Entertainment', 15, 30000, 'Todas las piezas están encajando, tanto para los chicos como para sus enemigos más mortales. El temido conflicto sobrehumano está en camino. Pero primero hay secretos que aún deben ser descubiertos: como la historia del primer encuentro del equipo con el supergrupo The Seven, y las ondas de choque de esa desastrosa reunión que aún resuenan hoy. Hughie, mientras tanto, descubre la historia oculta de sus camaradas, mientras su líder original, el coronel Greg Mallory, lo lleva a través de sesenta años de las operaciones negras más sucias imaginables. Y finalmente, con los buenos y los malos tambaleándose al borde del abismo, una fuerza oscura pone en marcha eventos que llevarán incluso a Butcher al límite. The Boys, vol. 9: The Big Ride recopila los números 48 a 59 de la serie Best-Selling del New York Times de Garth Ennis, Darick Robertson, Russ Braun y John McCrea, ¡y presenta todas las portadas de Robertson!', 'Violencia,Novela grafica', 'Garth Ennis', 420),
('https://drive.google.com/thumbnail?id=1WYdrOWEDAX_T1bITC3h3-WJH1-__ZmKc', 'Garfield Fat Cat 3-Pack #18', 'Random House Worlds', 18, 20000, '¡Es una triple porción de diversión peluda y gorda!\r\n\r\nLa grasa está en el fuego cuando Garfield está en escena. Preparar problemas (y risas) es la especialidad de la casa. Por supuesto, Garfield tiene mucha ayuda con el súper nerd Jon y el perro tonto Odie como sus no tan confiables ayudantes de cocina.\r\n\r\nYa sea que Garfield esté sufriendo tontos como Jon y Odie, o relajándose como un villano, siempre es entretenido, ¡y siempre hay muchas risas para alimentar a sus fanáticos hambrientos!\r\n\r\nLa serie GARFIELD FAT CAT 3-PACK recopila los libros de recopilación de tiras cómicas de GARFIELD en un nuevo formato a todo color. Garfield puede haber pasado por algunos cambios, pero una cosa se ha mantenido igual: su enorme apetito por la comida y la diversión. Así que disfruta de algunas risas a lo grande con el gato insaciable, ¡porque demasiada diversión nunca es suficiente!', 'Comedia, Novela grafica', 'Jim Davis', 288),
('https://drive.google.com/thumbnail?id=1x4SSyZrqqtvQKV_j4RNxEabx7g2aEjUh', 'Sonic the Hedgehog: Sonic & Tails: Best Buds Forev', 'IDW Publishing', 9, 10000, 'Sonic the Hedgehog y Miles \"Tails\" Prower. Son mejores amigos en las buenas y en las malas, y siempre se apoyan mutuamente. Celebra a esta increíble pareja con estos tres cuentos de alta velocidad y altos vuelos llenos de acción y adrenalina.\r\n\r\nPrimero, el Dr. Eggman ha desaparecido, pero sus robots rebeldes siguen descontrolados y solo Sonic puede detenerlos. ¡Pero no puede hacerlo sin Tails! Luego, los mejores amigos intentan tomarse un descanso, pero algo huele mal. ¡Parece que los malos también pueden tener mejores amigos! Y, por último, Tails y Sonic exploran una base abandonada de Eggman, ¡pero no están solos! ¿Pueden confiar en el intruso? No hay problema. Si treinta años de amistad han demostrado algo, es que estarán bien siempre que se tengan el uno al otro.', 'Humor, Novela Grafica', 'Ian Flynn', 96),
('https://drive.google.com/thumbnail?id=1xapjnxqVd8oX0_K4xagk_Nouqos687Gv', 'Transformers Vol. 2', 'Image Comics', 8, 10000, 'EL DESTINO DE DOS MUNDOS\r\n¡La nueva era de LOS TRANSFORMERS continúa!\r\nLos Decepticons toman decisiones violentas sobre su futuro, lo que los pone cara a cara con Shockwave, cuyos impactantes planes cambiarán su guerra con los Autobots para siempre.\r\nAhora Optimus Prime debe reunir a sus aliados en la Tierra y Cybertron, pero no todos creen que él sea el líder adecuado para salvar ambos mundos...\r\n\r\n¡Jorge Corona se une a Daniel Warren Johnson para comenzar la historia del UNIVERSO ENERGON que dará que hablar a todos!', 'Novela grafica, Ciencia ficción', 'Daniel Warren Johnson', 128),
('https://drive.google.com/thumbnail?id=1xgtSodOQKmHds35-PgIAB6SeuKhlqePO', 'Marvel Classic Novels - Wolverine: Weapon X Omnibu', 'Titan Books', 5, 40000, 'Antes de unirse a los X-Men, Wolverine era simplemente un mutante solitario y sin rumbo llamado Logan. Este es el cruel origen de la transformación de Logan en Wolverine, visto a través de los ojos de sus torturadores. Su objetivo es crear el arma definitiva, un hombre indestructible. Mientras Logan logra liberarse de sus captores, una brutal ola de violencia afecta a todos los involucrados.', 'Superhéroes, Ciencia ficción', 'Marc Cerasini', 800),
('https://drive.google.com/thumbnail?id=1xtTtH_AtGoO7DhEjn7ZA6jQX9oH3tvdB', 'Sonic the Hedgehog, Vol. 1: Fallout!', 'IDW Publishing', 9, 10000, '¡Únete a Blue Blur en nuevas aventuras mientras él y sus amigos corren por todo el mundo para derrotar a las fuerzas robóticas del malvado Dr. Eggman! El malvado genio Dr. Eggman ha sido derrotado, ¡pero el trabajo de Sonic the Hedgehog aún no ha terminado! Después de la última batalla épica, los robots rebeldes continúan atacando pequeñas aldeas en todo el mundo. Para tener éxito, Sonic necesitará la ayuda de sus amigos Tails, Knuckles y Amy, junto con algunos aliados nuevos y sorprendentes. Esta nueva colección del aclamado escritor Ian Flynn presenta a Blue Blur como nunca lo has visto antes. ¡Debes ir rápido!', 'Novela grafica, Humor', 'Ian Flynn', 104),
('https://drive.google.com/thumbnail?id=1Yc02csIj3r056mHjCzhGLF4iNeG-_UW7', 'Sonic and the Tales of Terror', 'Penguin Young Readers Licenses', 18, 10000, 'Sonic puede ser el héroe más rápido del mundo, pero debe confiar en sus amigos para mantenerse a la vanguardia de los espeluznantes planes del Dr. Eggman. En Sonic and the Tales of Terror, el Dr. Eggman y sus compinches urden misteriosos planes para atrapar a Sonic en tres historias con ilustraciones originales. ¡Este conjunto de historias es otro título imprescindible para los fanáticos de toda la vida ansiosos por contenido nuevo!', 'Humor, Novela Grafica', 'Kiel Phegley ', 64),
('https://drive.google.com/thumbnail?id=1YOxrxenNG9gf7t0rGhYDUtWOpMYOPYbB', 'Big Nate Out Loud', 'Andrews McMeel Publishing', 8, 20000, 'Continuación del best seller del New York Times Big Nate: From the Top. Nate Wright, de once años, vive A LO GRANDE y no lo cambiaría por nada del mundo. Aunque sus amigos no le dejan ser el cantante principal de su banda, Nate sigue dando que hablar. Es una superestrella de las páginas de cómics y de la exitosa serie de libros Big Nate y es un gran éxito entre los niños de todo el mundo. Esta colección incluye tiras diarias y dominicales que originalmente aparecieron en los periódicos. ¡Ahora a todo color con póster!', 'Humor, Novela Grafica', 'Lincoln Peirce', 224),
('https://drive.google.com/thumbnail?id=1Zd2Qw8buQQ8ja1EoPkiX2lCQb_-nYkfS', 'STAR WARS: THRAWN ALLIANCES', 'Licensed Publishing', 14, 10000, 'Como rivales por el favor del Emperador, el Gran Almirante Thrawn y Darth Vader pueden parecer socios improbables para una misión crucial. Sin embargo, esta formidable pareja ya ha trabajado junta antes. Hace años, Thrawn y el hombre conocido como Anakin Skywalker se unieron en la búsqueda de Padmé Amidala. Ahora, mientras cada hombre se abre camino a través de la galaxia, se encontrarán unidos una vez más por la voluntad del Emperador, ¡y cada uno será puesto a prueba hasta sus límites por un enemigo digno de su formidable poder combinado!', 'Ciencia ficción, Novela grafica', 'Timothy Zahn', 112),
('https://drive.google.com/thumbnail?id=1ZUQPr5iEOMp7L8VxG5rf4TtjpX7Iihqn', 'Absolute Kingdom Come', 'Dc Comics', 16, 30000, 'DC Comics Absolute Editions set the standard for the highest quality, most in-depth presentation of classic graphic novels. Each oversized volume is presented in a slipcase and includes unique additional material making each Absolute Edition a cornerstone of any serious comic collection. The latest Absolute Collection is the classic KINGDOM COME, written by Mark Waid and illustrated by Alex Ross. This riveting story set in the future pits the old guard-Superman, Batman, Wonder Woman and their peers-against a new, uncompromising generation of heroes in the final war to determine the fate of the planet. Published to tie-in with the 10th Anniversary of its original publication, ABSOLUTE KINGDOM COME is packaged in a beautifully designed slipcase that features an all-new painted image by Alex Ross, annotations of the entire series, rare art, promotional images, a gallery of DC Direct Kingdom Come products, a feature on the evolution of a story page and much more.', 'Superhéroes, Novela grafica', 'Mark Waid', 340),
('https://drive.google.com/thumbnail?id=1_2FGiZnG-7Ez4IbkTgoA8uBT0aoJRidn', 'Justice League 1: Origin', 'Dc Comics', 16, 10000, 'En un mundo donde los superhéroes inexpertos operan bajo una nube de sospecha por parte del público, el vigilante solitario Batman se ha topado con un mal oscuro que amenaza con destruir la Tierra tal como la conocemos. Ahora, frente a una amenaza que va mucho más allá de lo que puede manejar por sí solo, el Caballero Oscuro debe confiar en un extraterrestre, un velocista escarlata, un héroe adolescente accidental, un policía espacial, una princesa amazónica y un monarca submarino. ¿Podrá esta combinación de Superman, The Flash, Cyborg, Green Lantern, Wonder Woman y Aquaman dejar de lado sus diferencias y unirse para salvar el mundo? ¿O se destruirán entre sí primero? Como parte del monumental evento The New 52 de DC Comics, las superestrellas de los cómics Geoff Johns y Jim Lee te traen una historia de origen completamente nueva para la Liga de la Justicia. Este poderoso equipo creativo reinventa a los héroes clásicos del Universo DC para el siglo XXI. Este volumen recopila los números 1 a 6 de la Liga de la Justicia.', 'Superhéroes, Novela grafica', 'Geoff Johns', 192),
('https://lh3.googleusercontent.com/d/1iryWlUScuo1zWsGwNeiOAjCXBEQGfn7O=s220?authuser=0', 'Dragon Ball Color Saga Piccolo ', 'IVREA ARGENTINA', 30, 20000, 'La historia de Son Goku, el guerrero que, junto a sus amigos, protege a la Tierra de los más diversos y poderosos enemigos desde que es un chico hasta que es un adulto. Una serie que arranca con aventura y prosigue con mucha acción, aunque también algo de comedia.', 'manga,accion,comedia,ciencia ficcion', 'Akira Toriyama', 250);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `compra`
--

CREATE TABLE `compra` (
  `nroCompra` bigint(20) NOT NULL,
  `id_comic` int(11) NOT NULL,
  `id_usuario` int(11) NOT NULL,
  `suscripcionActiva` tinyint(1) NOT NULL,
  `metodoPago` varchar(50) NOT NULL,
  `numTarjeta` varchar(50) NOT NULL,
  `fecha_compra` date NOT NULL,
  `importeFinal` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `suscripcion`
--

CREATE TABLE `suscripcion` (
  `email` varchar(50) NOT NULL,
  `nivel` varchar(50) NOT NULL,
  `precio` double NOT NULL,
  `fechaInicio` date NOT NULL,
  `fechaFinal` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tarjeta`
--

CREATE TABLE `tarjeta` (
  `numTarjeta` varchar(50) NOT NULL,
  `nombrePropietario` varchar(50) NOT NULL,
  `cvv` int(11) NOT NULL,
  `mail` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuario`
--

CREATE TABLE `usuario` (
  `id` int(11) NOT NULL,
  `mail` varchar(50) NOT NULL,
  `usuario` varchar(50) NOT NULL,
  `FechaNacimiento` date NOT NULL,
  `contraseña` varchar(50) NOT NULL,
  `suscripcion` int(11) NOT NULL,
  `numTelefono` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `usuario`
--

INSERT INTO `usuario` (`id`, `mail`, `usuario`, `FechaNacimiento`, `contraseña`, `suscripcion`, `numTelefono`) VALUES
(0, 'juan@gmail.com', 'juancho', '2024-11-21', '1234', 1, 123),
(2, 'nuevoUsuario@example.com', 'nuevoUsuario', '2000-01-01', '$2b$10$P3f8ehf6YyjoljVFutuTZee5M7prF0czpXLEsZlOzy6', 0, 123456789);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`mail`);

--
-- Indices de la tabla `comic`
--
ALTER TABLE `comic`
  ADD PRIMARY KEY (`codComic`);

--
-- Indices de la tabla `compra`
--
ALTER TABLE `compra`
  ADD PRIMARY KEY (`nroCompra`);

--
-- Indices de la tabla `suscripcion`
--
ALTER TABLE `suscripcion`
  ADD PRIMARY KEY (`email`);

--
-- Indices de la tabla `usuario`
--
ALTER TABLE `usuario`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `usuario`
--
ALTER TABLE `usuario`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
