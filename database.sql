-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 19-06-2019 a las 21:36:52
-- Versión del servidor: 10.1.36-MariaDB
-- Versión de PHP: 7.2.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `mycommitte`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `categorias`
--

CREATE TABLE `categorias` (
  `ID` int(11) NOT NULL,
  `CATEGORIA` varchar(11) NOT NULL,
  `pago_arbitros` decimal(10,3) NOT NULL,
  `pago_oficiales` decimal(10,3) NOT NULL,
  `coste_arbitros` decimal(10,3) NOT NULL,
  `coste_oficiales` decimal(10,3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `categorias`
--

INSERT INTO `categorias` (`ID`, `CATEGORIA`, `pago_arbitros`, `pago_oficiales`, `coste_arbitros`, `coste_oficiales`) VALUES
(1, 'Iniciación ', '8.500', '4.900', '10.000', '6.000'),
(2, 'Zonal', '16.400', '12.500', '20.000', '15.000'),
(3, 'ESGAR', '17.000', '12.500', '20.000', '15.000'),
(4, 'SUB 23', '25.000', '15.000', '30.000', '20.000'),
(5, 'GRUPO 1 FGB', '37.600', '22.500', '40.000', '25.000'),
(6, 'GRUPO 2 FEB', '29.600', '23.000', '40.100', '30.200'),
(7, 'GRUPO 1 FEB', '100.000', '45.000', '200.000', '60.000'),
(8, 'EBA', '47.000', '23.700', '60.000', '30.000'),
(9, 'LEB ORO', '120.000', '55.000', '160.000', '70.000'),
(10, 'ACB', '300.000', '70.000', '500.000', '80.000'),
(11, 'Admin', '0.000', '0.000', '0.000', '0.000'),
(12, 'Admin', '0.000', '0.000', '0.000', '0.000');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `clubes`
--

CREATE TABLE `clubes` (
  `id` int(11) NOT NULL,
  `nombre` varchar(100) NOT NULL,
  `password` varchar(45) NOT NULL,
  `direccion` varchar(100) NOT NULL,
  `telefono` int(11) NOT NULL,
  `url_web` varchar(500) NOT NULL,
  `email` varchar(100) NOT NULL,
  `campo_juego` varchar(100) NOT NULL,
  `color_equipacion` varchar(50) NOT NULL,
  `logo` varchar(4000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `clubes`
--

INSERT INTO `clubes` (`id`, `nombre`, `password`, `direccion`, `telefono`, `url_web`, `email`, `campo_juego`, `color_equipacion`, `logo`) VALUES
(3, 'Nagasaki Prefectural University', 'VWJutuM3cV', '08591 Hintze Court', 346, 'http://booking.com/potenti/nullam/porttitor/lacus.jsp?elit=erat&proin=eros&risus=viverra&praesent=eget&lectus=congue&vestibulum=eget&quam=semper&sapien=rutrum&varius=nulla&ut=nunc&blandit=purus&non=phasellus&interdum=in&in=felis&ante=donec&vestibulum=semper&ante=sapien&ipsum=a&primis=libero&in=nam&faucibus=dui&orci=proin&luctus=leo&et=odio&ultrices=porttitor&posuere=id&cubilia=consequat&curae=in&duis=consequat&faucibus=ut&accumsan=nulla&odio=sed&curabitur=accumsan&convallis=felis&duis=ut&consequ', 'cfreemantle2@loc.gov', 'La Bombonera', 'Aquamarine', 'https://lacronicadesdeelsofa.com/wp-content/uploads/qhhir6fj8zp30f33s7sfb4yw0.png'),
(4, 'Virgen Milagrosa University Foundation', 'Ueh5laZ', '7724 Birchwood Way', 880, 'http://issuu.com/quis/odio/consequat/varius/integer/ac/leo.html?aliquet=vehicula&pulvinar=consequat&sed=morbi&nisl=a', 'gspring3@macromedia.com', 'Slepp TRain Arena', 'Red', 'https://st-listas.20minutos.es/images/2015-02/393166/4640836_640px.jpg?1422980874'),
(5, 'Université de Montréal', 'X6xisDSlpiK', '8 Evergreen Pass', 813, 'https://virginia.edu/euismod/scelerisque.png?maecenas=sapien&leo=urna&odio=pretium&condimentum=nisl&id=ut&luctus=volutpat&nec=sapien&molestie=arcu&sed=sed&justo=augue&pellentesque=aliquam&viverra=erat&pede=volutpat&ac=in&diam=congue&cras=etiam&pellentesque=justo&volutpat=etiam&dui=pretium&maecenas=iaculis&tristique=justo&est=in&et=hac&tempus=habitasse&semper=platea&est=dictumst&quam=etiam&pharetra=faucibus&magna=cursus&ac=urna&consequat=ut&metus=tellus&sapien=nulla&ut=ut&nunc=erat&vestibulum=id&', 'wobrian4@skyrock.com', '', 'Mauv', 'https://upload.wikimedia.org/wikipedia/en/thumb/2/29/McGill_University_CoA.svg/1200px-McGill_University_CoA.svg.png'),
(6, 'Zanjan University of Medical Sciences', 'RVCybdJCC7Fz', '747 Bonner Drive', 229, 'https://hc360.com/lacinia/erat/vestibulum.png?mus=posuere&etiam=cubilia&vel=curae&augue=mauris&vestibulum=viverra&rutrum=diam&rutrum=vitae&neque=quam&aenean=suspendisse&auctor=potenti&gravida=nullam&sem=porttitor&praesent=lacus&id=at&massa=turpis&id=donec&nisl=posuere&venenatis=metus&lacinia=vitae&aenean=ipsum&sit=aliquam&amet=non&justo=mauris&morbi=morbi&ut=non&odio=lectus&cras=aliquam&mi=sit&pede=amet&malesuada=diam&in=in&imperdiet=magna&et=bibendum&commodo=imperdiet&vulputate=nullam&justo=orc', 'hfero5@cyberchimps.com', '	Polideportivo Mendizorroza', 'Purple', 'https://upload.wikimedia.org/wikipedia/an/0/04/Boston_Celtics_logo.png'),
(7, 'Galatasaray University', 'rJR3AnS', '4277 Stephen Road', 952, 'http://auda.org.au/platea/dictumst.xml?pharetra=gravida&magna=sem&vestibulum=praesent&aliquet=id&ultrices=massa&erat=id&tortor=nisl&sollicitudin=venenatis&mi=lacinia&sit=aenean&amet=sit&lobortis=amet&sapien=justo&sapien=morbi&non=ut&mi=odio&integer=cras&ac=mi&neque=pede&duis=malesuada&bibendum=in&morbi=imperdiet&non=et&quam=commodo&nec=vulputate&dui=justo&luctus=in&rutrum=blandit&nulla=ultrices&tellus=enim&in=lorem&sagittis=ipsum&dui=dolor&vel=sit&nisl=amet&duis=consectetuer&ac=adipiscing&nibh=e', 'cmcgown6@ca.gov', 'United Center', 'Crimson', 'http://www.brandemia.org/sites/default/files/sites/default/files/dallas_wings_logo_nuevo.jpg'),
(8, 'Real Madrid', 'QHQwDgACUTo', '7086 Holy Cross Terrace', 938, 'http://buzzfeed.com/lacus/morbi/sem/mauris/laoreet/ut.js?integer=ut&ac=rhoncus&neque=aliquet&duis=pulvinar&bibendum=sed&morbi=nisl&non=nunc&quam=rhoncus&nec=dui&dui=vel&luctus=sem&rutrum=sed&nulla=sagittis&tellus=nam&in=congue', 'dclimpson7@fotki.com', 'Polideportivo Municipal de Azpeitia', 'Pink', 'https://pbs.twimg.com/media/DhqpvXDW4AIhN_T.jpg'),
(9, 'Aletheia University', 'wKXJfZpFnd4', '60 Corscot Hill', 507, 'http://arstechnica.com/integer/pede.aspx?semper=ligula&rutrum=in&nulla=lacus&nunc=curabitur&purus=at&phasellus=ipsum&in=ac&felis=tellus&donec=semper&semper=interdum&sapien=mauris&a=ullamcorper&libero=purus&nam=sit&dui=amet&proin=nulla&leo=quisque&odio=arcu', 'mblemings8@gizmodo.com', 'Palacio de los Deportes Paco Paz', 'Puce', 'https://kiaenzona.com/wp-content/uploads/2016/10/PELICANS.png'),
(11, 'Universidad Nacional de Santiago del Estero', '2d1rwJop9', '2 8th Avenue', 111, 'http://google.co.uk/vestibulum/ante.js?tempor=potenti&convallis=nullam&nulla=porttitor&neque=lacus&libero=at&convallis=turpis&eget=donec&eleifend=posuere&luctus=metus&ultricies=vitae&eu=ipsum&nibh=aliquam&quisque=non&id=mauris&justo=morbi&sit=non&amet=lectus&sapien=aliquam&dignissim=sit&vestibulum=amet&vestibulum=diam&ante=in&ipsum=magna&primis=bibendum&in=imperdiet&faucibus=nullam&orci=orci&luctus=pede&et=venenatis&ultrices=non&posuere=sodales&cubilia=sed&curae=tincidunt&nulla=eu&dapibus=felis&', 'scrumbiea@europa.eu', 'Palacio Municipal de Huesca', 'Aquamarine', 'https://i.pinimg.com/originals/b5/5e/58/b55e58cf33d69ec48d5b99fa19f7b1d2.png'),
(12, 'Centro de Estudios Avanzados de Puerto Rico y el Caribe', 'IGjQMO1', '7 Stone Corner Trail', 722, 'https://nbcnews.com/felis/donec/semper/sapien.aspx?nulla=mi&nisl=pede&nunc=malesuada&nisl=in&duis=imperdiet&bibendum=et&felis=commodo&sed=vulputate&interdum=justo&venenatis=in&turpis=blandit&enim=ultrices&blandit=enim&mi=lorem&in=ipsum&porttitor=dolor&pede=sit&justo=amet&eu=consectetuer&massa=adipiscing&donec=elit&dapibus=proin&duis=interdum&at=mauris&velit=non&eu=ligula&est=pellentesque&congue=ultrices&elementum=phasellus&in=id&hac=sapien&habitasse=in&platea=sapien&dictumst=iaculis&morbi=congue', 'acarrolb@washington.edu', 'Ciudad Deportiva Joan Gamper', 'Aquamarine', 'https://cdn.atomix.vg/wp-content/uploads/2015/01/Unknown-10.jpeg'),
(13, 'Dr. Panjabrao Deshmukh Krishi Vidyapeeth', 'agKVpv97', '57 Fallview Street', 906, 'https://reverbnation.com/ipsum/primis/in/faucibus/orci/luctus.aspx?parturient=dis&montes=parturient&nascetur=montes&ridiculus=nascetur&mus=ridiculus&etiam=mus&vel=etiam&augue=vel&vestibulum=augue&rutrum=vestibulum&rutrum=rutrum&neque=rutrum&aenean=neque&auctor=aenean&gravida=auctor&sem=gravida&praesent=sem&id=praesent&massa=id&id=massa&nisl=id&venenatis=nisl&lacinia=venenatis&aenean=lacinia', 'ggerdtsc@newyorker.com', 'Pabellon Joan Busquets', 'Teal', 'https://st-listas.20minutos.es/images/2015-02/393166/4640857_640px.jpg?1422980874'),
(14, 'State University of New York College of Technology at Alfred', '', '73193 Knutson Point', 979, 'https://wordpress.com/fusce/posuere/felis/sed/lacus/morbi.js?duis=vel&ac=nisl&nibh=duis&fusce=ac&lacus=nibh&purus=fusce&aliquet=lacus&at=purus&feugiat=aliquet&non=at&pretium=feugiat&quis=non&lectus=pretium&suspendisse=quis&potenti=lectus&in=suspendisse&eleifend=potenti&quam=in&a=eleifend&odio=quam&in=a&hac=odio&habitasse=in&platea=hac&dictumst=habitasse&maecenas=platea&ut=dictumst&massa=maecenas&quis=ut&augue=massa&luctus=quis&tincidunt=augue&nulla=luctus&mollis=tincidunt&molestie=nulla&lorem=mo', 'oskellernd@networkadvertising.org', 'Pazo dos Deportes', 'Orange', 'https://i.pinimg.com/originals/96/4f/c2/964fc22272538dd02f86120e62ba96e5.png'),
(15, 'Universidade Estadual da Paraíba', '', '64 Surrey Street', 471, 'http://telegraph.co.uk/tincidunt/lacus/at/velit/vivamus/vel.aspx?egestas=non&metus=pretium&aenean=quis&fermentum=lectus&donec=suspendisse&ut=potenti&mauris=in&eget=eleifend&massa=quam&tempor=a&convallis=odio&nulla=in&neque=hac&libero=habitasse&convallis=platea&eget=dictumst&eleifend=maecenas&luctus=ut&ultricies=massa&eu=quis&nibh=augue&quisque=luctus&id=tincidunt&justo=nulla&sit=mollis&amet=molestie&sapien=lorem&dignissim=quisque&vestibulum=ut&vestibulum=erat&ante=curabitur&ipsum=gravida&primis=', 'nmenlovee@berkeley.edu', 'Pabellón Fuente de San Luis', 'Indigo', 'http://www.blogdebasket.com/files/15.08/detroit_pistons.png'),
(16, 'Al-Nasser University', '', '2 Northwestern Point', 190, 'http://ft.com/vel/accumsan/tellus/nisi/eu.jsp?sapien=morbi&ut=vestibulum&nunc=velit&vestibulum=id&ante=pretium&ipsum=iaculis&primis=diam&in=erat&faucibus=fermentum&orci=justo&luctus=nec&et=condimentum&ultrices=neque&posuere=sapien&cubilia=placerat&curae=ante&mauris=nulla&viverra=justo&diam=aliquam&vitae=quis&quam=turpis&suspendisse=eget&potenti=elit&nullam=sodales&porttitor=scelerisque&lacus=mauris&at=sit&turpis=amet&donec=eros&posuere=suspendisse&metus=accumsan&vitae=tortor&ipsum=quis&aliquam=t', 'omunnsf@trellian.com', 'Pabellón Fuente de San Luis', 'Mauv', 'https://i.pinimg.com/originals/b2/4b/35/b24b35266fb840b757bb66dc94880496.gif'),
(17, 'Fine Arts Academy in Gdansk', '', '225 5th Crossing', 377, 'http://va.gov/amet/eros/suspendisse/accumsan/tortor.html?pellentesque=non&ultrices=velit&phasellus=nec&id=nisi&sapien=vulputate&in=nonummy&sapien=maecenas&iaculis=tincidunt&congue=lacus&vivamus=at&metus=velit&arcu=vivamus&adipiscing=vel&molestie=nulla&hendrerit=eget', 'abebisg@go.com', 'José María Martín Carpena', 'Crimson', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTwHVYSOB9Xr_jkrChtmh4l7oeU4VS0PhlRk1iOIfnn6qSGFM7HlA'),
(18, 'University of Dongola', '', '2049 Orin Junction', 218, 'http://github.io/congue/risus/semper/porta.png?ligula=varius&sit=ut&amet=blandit&eleifend=non&pede=interdum&libero=in&quis=ante&orci=vestibulum&nullam=ante&molestie=ipsum&nibh=primis&in=in&lectus=faucibus&pellentesque=orci&at=luctus&nulla=et&suspendisse=ultrices&potenti=posuere&cras=cubilia&in=curae&purus=duis&eu=faucibus&magna=accumsan&vulputate=odio&luctus=curabitur&cum=convallis&sociis=duis&natoque=consequat&penatibus=dui&et=nec&magnis=nisi&dis=volutpat&parturient=eleifend&montes=donec&nascet', 'rmorsomh@qq.com', 'Pabellón Principe Felipe ', 'Aquamarine', 'http://3.bp.blogspot.com/-gk3Fi6BPqio/TciK-P8cKiI/AAAAAAAABF8/mEg3j6OYc3g/s1600/amapola.png'),
(19, 'Indiana University - Northwest', '', '5 Green Junction', 844, 'https://addthis.com/magnis/dis/parturient/montes/nascetur/ridiculus/mus.html?consequat=velit&lectus=vivamus&in=vel&est=nulla&risus=eget&auctor=eros&sed=elementum&tristique=pellentesque&in=quisque&tempus=porta&sit=volutpat&amet=erat&sem=quisque&fusce=erat&consequat=eros&nulla=viverra&nisl=eget&nunc=congue&nisl=eget&duis=semper&bibendum=rutrum&felis=nulla&sed=nunc&interdum=purus&venenatis=phasellus&turpis=in&enim=felis&blandit=donec&mi=semper&in=sapien&porttitor=a&pede=libero&justo=nam&eu=dui&mass', 'lraywoodi@businesswire.com', 'Palacio de los Deportes ', 'Indigo', 'https://img2.freepng.es/20180526/ac/kisspng-new-york-knicks-nba-new-york-city-basketball-5b0989c3b5a815.9884466515273517477441.jpg'),
(20, 'Union University', '', '36824 Eastwood Terrace', 453, 'http://mayoclinic.com/eget.html?penatibus=maecenas&et=ut&magnis=massa&dis=quis&parturient=augue&montes=luctus&nascetur=tincidunt&ridiculus=nulla&mus=mollis&vivamus=molestie&vestibulum=lorem&sagittis=quisque&sapien=ut&cum=erat&sociis=curabitur&natoque=gravida&penatibus=nisi&et=at&magnis=nibh&dis=in&parturient=hac&montes=habitasse&nascetur=platea&ridiculus=dictumst&mus=aliquam&etiam=augue&vel=quam&augue=sollicitudin&vestibulum=vitae&rutrum=consectetuer&rutrum=eget&neque=rutrum&aenean=at&auctor=lor', 'bgeartyj@edublogs.org', 'Palacio de Deportes San Pablo ', 'Mauv', 'http://www.stickpng.com/img/sports/basketball/nba-teams/charlotte-hornets-logo'),
(21, 'Jaipur National University', '', '2 Kenwood Road', 651, 'https://vkontakte.ru/eleifend/pede/libero/quis.jpg?in=sapien&faucibus=sapien&orci=non&luctus=mi&et=integer&ultrices=ac&posuere=neque&cubilia=duis&curae=bibendum&donec=morbi&pharetra=non&magna=quam&vestibulum=nec&aliquet=dui&ultrices=luctus&erat=rutrum&tortor=nulla&sollicitudin=tellus&mi=in&sit=sagittis&amet=dui&lobortis=vel&sapien=nisl&sapien=duis&non=ac&mi=nibh&integer=fusce&ac=lacus&neque=purus&duis=aliquet&bibendum=at&morbi=feugiat&non=non&quam=pretium&nec=quis&dui=lectus&luctus=suspendisse&r', 'jharmsonk@globo.com', 'Palacio de Deportes San Pablo', 'Yellow', 'https://c.wallhere.com/photos/d0/e7/NBA_basketball_Vancouver_Grizzlies_Vancouver_sports_Grizzly_bear-236583.jpg!d'),
(22, 'Puget Sound Christian College', '', '994 Acker Terrace', 974, 'https://aboutads.info/cubilia/curae/donec/pharetra/magna/vestibulum/aliquet.js?in=luctus&sapien=tincidunt&iaculis=nulla&congue=mollis&vivamus=molestie&metus=lorem&arcu=quisque&adipiscing=ut&molestie=erat&hendrerit=curabitur&at=gravida&vulputate=nisi&vitae=at&nisl=nibh&aenean=in&lectus=hac&pellentesque=habitasse&eget=platea&nunc=dictumst&donec=aliquam&quis=augue&orci=quam&eget=sollicitudin&orci=vitae&vehicula=consectetuer&condimentum=eget&curabitur=rutrum&in=at&libero=lorem&ut=integer&massa=tinci', 'srobusl@goodreads.com', 'Pabellon Fernando Martín', 'Goldenrod', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTUKq2jrxyzqUJfYn7aAtc6hP5vw_EM-X_ev-O9m7TRkE-tPwBs'),
(23, 'Universidad Nacional de Misiones', '', '490 Mifflin Avenue', 876, '', 'rneamem@over-blog.com', 'Multiusos Fontes do Sar ', 'Green', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQdWfEMSLd4Ky33JgDErOxF0k4BXpt3KBjf77O1JXdC06JbuvXg'),
(24, 'University of Cambridge', '', '94 Kedzie Hill', 145, 'https://tuttocitta.it/rhoncus/aliquam/lacus/morbi/quis/tortor.jsp?at=scelerisque&nibh=quam&in=turpis&hac=adipiscing&habitasse=lorem&platea=vitae&dictumst=mattis&aliquam=nibh&augue=ligula&quam=nec&sollicitudin=sem&vitae=duis&consectetuer=aliquam&eget=convallis&rutrum=nunc&at=proin&lorem=at&integer=turpis&tincidunt=a&ante=pede&vel=posuere&ipsum=nonummy&praesent=integer&blandit=non&lacinia=velit&erat=donec&vestibulum=diam&sed=neque&magna=vestibulum&at=eget&nunc=vulputate&commodo=ut&placerat=ultrice', 'rricheln@newyorker.com', 'Poliesportiu dAndorra ', 'Pink', 'https://a.espncdn.com/i/teamlogos/nba/500/sac.png'),
(25, 'Hyrcania Institute of Higher Education', '', '4798 Esker Junction', 369, 'http://ox.ac.uk/rutrum/rutrum/neque/aenean/auctor.html?dapibus=auctor&augue=gravida&vel=sem&accumsan=praesent&tellus=id&nisi=massa&eu=id&orci=nisl&mauris=venenatis&lacinia=lacinia&sapien=aenean&quis=sit&libero=amet&nullam=justo&sit=morbi&amet=ut&turpis=odio&elementum=cras&ligula=mi&vehicula=pede&consequat=malesuada&morbi=in&a=imperdiet&ipsum=et&integer=commodo&a=vulputate&nibh=justo&in=in&quis=blandit&justo=ultrices&maecenas=enim&rhoncus=lorem&aliquam=ipsum&lacus=dolor&morbi=sit&quis=amet&tortor', 'jgiovanittio@ibm.com', 'Pabellon Insular Santiago Martin', 'Orange', 'http://2.bp.blogspot.com/-Z_WCdtVGgAQ/TaRFrXyqkPI/AAAAAAAAFtc/t3yh6-SLkzQ/s1600/Tiburones-logo.jpg'),
(26, 'Universidad de América Bogotá', '', '0748 Commercial Parkway', 290, 'https://deliciousdays.com/diam/cras/pellentesque/volutpat/dui.jsp?morbi=sed&vel=tristique&lectus=in&in=tempus&quam=sit', 'mcluttenp@photobucket.com', 'Gran Canaria Arena', 'Indigo', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQDXmzEiPHGifFOwjs0zPdRhjkgqjHa_riz8TQpd13rGopBXN3a'),
(27, 'Technical University of Varna', '', '23293 Tennessee Pass', 937, 'https://bigcartel.com/hac/habitasse/platea/dictumst/aliquam.jsp?neque=nulla&sapien=sed&placerat=vel&ante=enim&nulla=sit&justo=amet&aliquam=nunc&quis=viverra', 'scurmiq@ted.com', 'Donostia Arena', 'Maroon', 'https://www.mejores-planes-viaje-nueva-york.com/wordpress/wp-content/uploads/2015/01/logo-new-york-liberty.jpg'),
(28, 'Information and Communications Technology Academy', '', '36 Cascade Pass', 117, 'http://ebay.com/nonummy/integer/non/velit/donec.jpg?turpis=nulla&elementum=facilisi&ligula=cras&vehicula=non&consequat=velit&morbi=nec&a=nisi&ipsum=vulputate&integer=nonummy&a=maecenas&nibh=tincidunt&in=lacus&quis=at&justo=velit&maecenas=vivamus&rhoncus=vel&aliquam=nulla&lacus=eget&morbi=eros&quis=elementum&tortor=pellentesque&id=quisque&nulla=porta&ultrices=volutpat&aliquet=erat&maecenas=quisque&leo=erat&odio=eros&condimentum=viverra&id=eget&luctus=congue&nec=eget&molestie=semper&sed=rutrum&jus', 'kanchorr@dion.ne.jp', 'Olimpico de Badalona', 'Teal', 'https://k42.kn3.net/taringa/6/2/8/0/8/1/3/ivank1978/0BF.gif?1644'),
(29, 'Kabarak University', '', '78 Mallard Trail', 822, 'https://cnn.com/mollis.xml?sed=diam&vestibulum=id&sit=ornare&amet=imperdiet&cursus=sapien&id=urna&turpis=pretium&integer=nisl&aliquet=ut&massa=volutpat&id=sapien&lobortis=arcu&convallis=sed&tortor=augue&risus=aliquam&dapibus=erat&augue=volutpat&vel=in&accumsan=congue&tellus=etiam&nisi=justo&eu=etiam&orci=pretium&mauris=iaculis&lacinia=justo&sapien=in&quis=hac&libero=habitasse&nullam=platea&sit=dictumst&amet=etiam&turpis=faucibus&elementum=cursus&ligula=urna&vehicula=ut&consequat=tellus&morbi=nul', 'vslaymakers@hibu.com', ' Wizink Center', 'Maroon', ''),
(30, 'University of the South Pacific', '', '1942 Michigan Crossing', 261, 'http://domainmarket.com/placerat/ante/nulla/justo/aliquam/quis/turpis.json?in=tincidunt&est=lacus&risus=at&auctor=velit&sed=vivamus&tristique=vel&in=nulla&tempus=eget&sit=eros&amet=elementum&sem=pellentesque&fusce=quisque&consequat=porta&nulla=volutpat&nisl=erat&nunc=quisque&nisl=erat&duis=eros&bibendum=viverra&felis=eget&sed=congue&interdum=eget&venenatis=semper&turpis=rutrum&enim=nulla&blandit=nunc&mi=purus&in=phasellus&porttitor=in&pede=felis&justo=donec&eu=semper&massa=sapien&donec=a&dapibus', 'darrant@shutterfly.com', 'Fernando Buesa Arena', 'Goldenrod', 'https://i.pinimg.com/originals/d2/35/6c/d2356c85d6dc7b67ae7e216de910d5ec.png'),
(34, 'Universidad Nacional de Santiago del Estero', '2d1rwJop9', '2 8th Avenue', 111, 'http://google.co.uk/vestibulum/ante.js?tempor=potenti&convallis=nullam&nulla=porttitor&neque=lacus&libero=at&convallis=turpis&eget=donec&eleifend=posuere&luctus=metus&ultricies=vitae&eu=ipsum&nibh=aliquam&quisque=non&id=mauris&justo=morbi&sit=non&amet=lectus&sapien=aliquam&dignissim=sit&vestibulum=amet&vestibulum=diam&ante=in&ipsum=magna&primis=bibendum&in=imperdiet&faucibus=nullam&orci=orci&luctus=pede&et=venenatis&ultrices=non&posuere=sodales&cubilia=sed&curae=tincidunt&nulla=eu&dapibus=felis&', 'scrumbiea@europa.eu', 'Palacio Municipal de Huesca', 'Aquamarine', 'http://www.stickpng.com/img/sports/basketball/nba-teams/san-antonio-spurs-logo'),
(35, 'Rosana', 'sss', 'Galicia nº2', 634927340, 'http://toplist.cz/convallis.aspx?dui=orci&vel=pede&nisl=venenatis&duis=non&ac=sodales&nibh=sed&fusce=tincidunt&lacus=eu&purus=felis&aliquet=fusce&at=posuere&feugiat=felis&non=sed&pretium=lacus&quis=morbi&lectus=sem&suspendisse=mauris&potenti=laoreet&in=ut&eleifend=rhoncus&quam=aliquet&a=pulvinar&odio=sed&in=nisl&hac=nunc&habitasse=rhoncus&platea=dui&dictumst=vel', 'wwaa@s.es', 's', 's', 'C:\\fakepath\\101_0032.JPG');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `disponibilidad`
--

CREATE TABLE `disponibilidad` (
  `ID` int(11) NOT NULL,
  `usuario` int(11) NOT NULL,
  `fecha_no_disp` date NOT NULL,
  `desde_hora_no_disp` time NOT NULL,
  `motivo` varchar(100) NOT NULL,
  `hasta_hora_no_disp` time NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `disponibilidad`
--

INSERT INTO `disponibilidad` (`ID`, `usuario`, `fecha_no_disp`, `desde_hora_no_disp`, `motivo`, `hasta_hora_no_disp`) VALUES
(1, 22, '2019-05-09', '01:00:00', '', '15:00:00'),
(2, 1, '2019-05-17', '16:28:36', 'enfermedad', '22:28:36'),
(3, 1, '2019-05-17', '16:28:36', 'enfermedad', '13:28:36'),
(4, 10, '2018-01-27', '00:00:00', 'laboral', '19:00:00'),
(5, 76, '2019-01-28', '00:00:00', 'enfermedad', '13:00:00'),
(6, 76, '2019-01-28', '00:00:00', 'enfermedad', '13:00:00'),
(7, 9, '2019-05-31', '11:48:36', 'familiar', '20:48:36'),
(8, 9, '2019-06-13', '12:38:01', 'enfermedad', '12:38:01');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `equipos`
--

CREATE TABLE `equipos` (
  `id` int(11) NOT NULL,
  `club` int(11) NOT NULL,
  `nombre` varchar(200) NOT NULL,
  `categoria` int(11) NOT NULL,
  `num_jugadores` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `equipos`
--

INSERT INTO `equipos` (`id`, `club`, `nombre`, `categoria`, `num_jugadores`) VALUES
(1, 21, 'University College of Applied Sciences', 8, 15),
(2, 25, 'Dubna International University for Nature, Society and Man', 2, 12),
(3, 11, 'Kagawa Institute of Nutrition', 10, 14),
(4, 25, 'International Kazakh-Turkish University', 5, 8),
(5, 27, 'Balochistan University of Engineering and Technology Khuzdar', 5, 12),
(6, 7, 'Odessa National Academy of Food Technologies', 7, 7),
(7, 4, 'Baltimore International College', 2, 15),
(8, 27, 'Université de Provence (Aix-Marseille I)', 8, 7),
(9, 26, 'Kobe Shinwa Women\'s University', 10, 15),
(10, 16, 'Hunan University', 3, 10),
(11, 3, 'Nigde University', 6, 14),
(13, 11, 'Universidad Católica de Santo Domingo', 5, 14),
(14, 20, 'Southern Wesleyan University', 1, 10),
(15, 8, 'Fachhochschule Ludwigshafen, Hochschule für Wirtschaft', 7, 11),
(16, 4, 'Wayamba University of Sri Lanka ', 5, 12),
(17, 27, 'Moscow State Institute of Radiotechnics, Electronics and Automation (Technical University)', 7, 15),
(18, 6, 'Akhbar El Yom Academy', 10, 7),
(19, 27, 'Providence College', 6, 15),
(20, 7, 'University of Aquila', 2, 8),
(21, 4, 'Universitas Kristen Duta Wacana', 2, 10),
(22, 5, 'Norfolk State University', 10, 11),
(23, 26, 'KBU International College', 1, 11),
(24, 13, 'KDI School of Public Policy and Management', 4, 8),
(25, 26, 'Logan College of Chiropractic', 4, 12),
(26, 5, 'Davidson College', 3, 15),
(27, 12, 'Universidad de Cienfuegos', 10, 10),
(28, 25, 'Mahamakut Buddhist University', 4, 13),
(29, 28, 'Claremont Lincoln University', 6, 10),
(30, 5, 'Barber-Scotia College', 6, 8),
(31, 9, 'Technical University of Bialystok', 8, 7),
(33, 15, 'St. Petersburg State Conservatory', 10, 11),
(34, 7, 'Fundación Universitaria del Area Andina. Sede Pereira', 8, 10),
(35, 14, 'Ivanovo State University', 6, 13),
(36, 11, 'Obirin University', 1, 11),
(37, 9, 'Bates College', 10, 10),
(39, 7, 'Yorker International University, Milano', 5, 8),
(40, 28, 'VanderCook College of Music', 3, 12),
(41, 5, 'Kazakh British Technical University', 2, 13),
(42, 13, 'Universidad Autónoma del Paraguay', 8, 12),
(43, 14, 'North Kazakhstan State University', 1, 11),
(44, 27, 'Islamic Azad University, Janah', 10, 12),
(45, 25, 'University of Pittsburgh at Johnstown', 9, 8);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `jugadores`
--

CREATE TABLE `jugadores` (
  `id` int(11) NOT NULL,
  `club` int(11) NOT NULL,
  `equipo` int(11) NOT NULL,
  `DNI` varchar(11) NOT NULL,
  `nombre` varchar(100) NOT NULL,
  `apellidos` varchar(100) NOT NULL,
  `fecha_nacimiento` date NOT NULL,
  `dorsal_juego` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `jugadores`
--

INSERT INTO `jugadores` (`id`, `club`, `equipo`, `DNI`, `nombre`, `apellidos`, `fecha_nacimiento`, `dorsal_juego`) VALUES
(1, 13, 30, '23497678G', 'Orland', 'Elsop', '2001-08-13', 73),
(2, 12, 21, '53330773Y', 'Domenico', 'Beiderbecke', '2001-07-03', 18),
(3, 8, 24, '30092310F', 'Kingsly', 'Bredbury', '2007-02-23', 79),
(4, 15, 10, '17610352B', 'Axel', 'Campos', '2004-10-05', 98),
(5, 12, 26, '96219032G', 'Noby', 'Nussen', '2012-10-23', 22),
(6, 25, 7, '33078628M', 'Mari', 'Roskilly', '1993-06-17', 79),
(7, 4, 17, '83739074F', 'Joyce', 'Beavan', '2003-09-28', 15),
(8, 17, 23, '90944139T', 'Shanan', 'Ferrieri', '1994-08-18', 42),
(9, 27, 30, '95635593Y', 'Lori', 'Mattusov', '2003-07-05', 62),
(11, 21, 13, '22247019Q', 'Granthem', 'Lewsley', '2002-12-06', 83),
(12, 24, 27, '14451778G', 'Kakalina', 'Cheel', '2015-11-28', 34),
(13, 11, 27, '69693932E', 'Roz', 'Ferrick', '2009-09-20', 56),
(14, 23, 19, '70202308Y', 'Dian', 'Tilbrook', '2009-08-22', 53),
(15, 9, 16, '95256211D', 'Kynthia', 'Lydall', '2003-03-26', 55),
(16, 18, 9, '76936136D', 'Lorianna', 'Corriea', '2013-01-29', 95),
(17, 3, 16, '70048461Y', 'Tina', 'Frogley', '2010-07-08', 35),
(18, 8, 29, '07791127S', 'Flo', 'Timcke', '1996-06-18', 80),
(19, 16, 20, '95020570A', 'Sianna', 'Blain', '1998-08-24', 94),
(20, 3, 8, '14905003Z', 'Anne', 'Blinckhorne', '1991-04-24', 88),
(21, 20, 27, '07775125K', 'Ashil', 'Pencott', '2010-02-08', 62),
(23, 15, 16, '05414692D', 'Lindsey', 'Castagno', '2001-09-19', 36),
(24, 18, 29, '94519206Q', 'Jillian', 'Meredith', '1995-01-31', 3),
(25, 23, 24, '73614229S', 'Isahella', 'O\'Fearguise', '2017-12-10', 22),
(26, 20, 27, '64424214H', 'Amerigo', 'Hendonson', '2012-12-05', 21),
(27, 8, 17, '93697422E', 'Lynsey', 'Brennans', '2012-04-11', 65),
(28, 15, 15, '21358830H', 'Winfield', 'Dudny', '2009-01-14', 6),
(29, 25, 24, '96858915G', 'Louella', 'Trevethan', '1997-11-18', 19),
(30, 24, 27, '85876273T', 'Belita', 'Andrieux', '2006-03-30', 35),
(31, 12, 5, '18666474L', 'Jessalin', 'Basson', '1997-02-20', 12),
(32, 28, 29, '65792668H', 'Violet', 'Steinham', '1994-05-14', 46),
(33, 11, 23, '21186376H', 'Lester', 'McTrustam', '2009-07-28', 95),
(35, 16, 3, '62958783D', 'Kingsley', 'Brunone', '2000-06-14', 47),
(36, 20, 20, '65492957C', 'Raymond', 'Andres', '2009-06-20', 91),
(37, 13, 28, '25670760T', 'Nicolai', 'Cassam', '1993-07-11', 35),
(39, 19, 16, '91232538W', 'Helene', 'Mattam', '2008-05-25', 75),
(40, 17, 26, '14733821K', 'Nichols', 'Southam', '2014-02-22', 8),
(41, 11, 7, '86970460P', 'Darb', 'Waggitt', '2004-06-18', 71),
(42, 27, 8, '53918900T', 'Agnes', 'Ivanishin', '2004-01-02', 32),
(43, 15, 8, '55678045J', 'Barrie', 'McKue', '2003-12-26', 33),
(44, 20, 21, '13720467R', 'Leeann', 'Casewell', '2008-03-04', 9),
(46, 29, 16, '40282801A', 'Karine', 'Domone', '2014-03-10', 72),
(47, 6, 9, '43239125E', 'Lockwood', 'Brehault', '2009-02-11', 54),
(48, 29, 2, '99186291X', 'Cherilyn', 'Stoffler', '1998-11-22', 64),
(49, 12, 2, '53530945D', 'Benedetta', 'Scala', '2003-06-05', 33),
(51, 9, 11, '29822047V', 'Josias', 'Thews', '2006-09-08', 96),
(52, 5, 22, '09792216N', 'Dorine', 'Wolfart', '2006-10-20', 62),
(54, 9, 44, '83712137A', 'Isidro', 'Pinfold', '2015-01-07', 36),
(55, 7, 2, '28439103V', 'Felizio', 'Birney', '2017-04-12', 31),
(56, 27, 7, '63913015V', 'Doralynne', 'Primo', '2012-03-23', 4),
(57, 23, 23, '83881758E', 'Rollins', 'Rubery', '2017-08-02', 6),
(58, 11, 18, '36574499Z', 'Osborne', 'Robardey', '2013-11-25', 51),
(59, 13, 29, '80952085C', 'Fanechka', 'Anselm', '1999-08-07', 40),
(60, 29, 20, '43144978Z', 'Beth', 'Alton', '1996-01-05', 99),
(61, 9, 23, '15008724M', 'Mikkel', 'Pitway', '2007-03-30', 67),
(62, 4, 23, '50579628Y', 'Emelita', 'Castro', '1994-04-06', 28),
(63, 19, 20, '68677539E', 'Audy', 'De la Eglise', '2012-07-27', 30),
(64, 14, 11, '93518274K', 'Norbert', 'Coppo', '2003-01-22', 34),
(66, 29, 24, '34459954C', 'Kattie', 'Ghelardoni', '2004-05-03', 70),
(67, 7, 22, '65850387F', 'Vania', 'Borkett', '2000-07-08', 35),
(70, 16, 25, '65747430K', 'Devora', 'Dicky', '2018-09-05', 60),
(71, 13, 11, '39390898V', 'Mercedes', 'Cammock', '2019-05-04', 81),
(72, 14, 2, '42788562Y', 'Evyn', 'Whitcher', '2008-09-02', 69),
(73, 6, 3, '83832654T', 'Coraline', 'O\'Glassane', '2014-07-01', 11),
(74, 26, 30, '18379335N', 'Paxton', 'Frankes', '2019-03-01', 86),
(75, 3, 7, '17877019Q', 'Daria', 'Ayrton', '1995-08-03', 30),
(77, 16, 1, '16066973R', 'Kiah', 'Pavie', '2011-06-13', 89),
(78, 3, 23, '75246600F', 'Stace', 'Vergo', '2009-12-15', 73),
(79, 29, 18, '46685118V', 'Killie', 'Denning', '2012-03-02', 6);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `partidos`
--

CREATE TABLE `partidos` (
  `id` int(11) NOT NULL,
  `equipo_1` int(11) NOT NULL,
  `equipo_2` int(11) NOT NULL,
  `fecha` date NOT NULL,
  `categoria` int(11) NOT NULL,
  `hora` time NOT NULL,
  `resultado` varchar(45) DEFAULT NULL,
  `arbitro_1` int(11) DEFAULT NULL,
  `arbitro_2` int(11) DEFAULT NULL,
  `arbitro_3` int(11) DEFAULT NULL,
  `oficial_1` int(11) DEFAULT NULL,
  `oficial_2` int(11) DEFAULT NULL,
  `oficial_3` int(11) DEFAULT NULL,
  `acta` varchar(4000) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `partidos`
--

INSERT INTO `partidos` (`id`, `equipo_1`, `equipo_2`, `fecha`, `categoria`, `hora`, `resultado`, `arbitro_1`, `arbitro_2`, `arbitro_3`, `oficial_1`, `oficial_2`, `oficial_3`, `acta`) VALUES
(6, 18, 3, '2019-05-31', 6, '17:00:00', '56-54', 1, 20, 9, 14, 23, 18, ''),
(7, 7, 8, '2019-06-18', 7, '12:00:00', '09-77', 20, 9, 12, 29, 30, 14, ''),
(8, 45, 40, '2019-06-04', 6, '12:00:00', '', 45, 16, 21, 40, 41, 40, ''),
(9, 43, 30, '2019-06-28', 7, '12:00:00', '', 20, 9, 12, 29, 30, 14, '');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuarios`
--

CREATE TABLE `usuarios` (
  `ID` int(11) NOT NULL,
  `DNI` varchar(10) NOT NULL,
  `PASSWORD` varchar(45) NOT NULL,
  `NOMBRE` varchar(100) NOT NULL,
  `APELLIDOS` varchar(100) NOT NULL,
  `PERMISO` int(2) NOT NULL,
  `CATEGORIA` int(3) NOT NULL,
  `EMAIL` varchar(300) NOT NULL,
  `TELEFONO` varchar(11) NOT NULL,
  `FECHA_NACIMIENTO` date NOT NULL,
  `IBAN` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `usuarios`
--

INSERT INTO `usuarios` (`ID`, `DNI`, `PASSWORD`, `NOMBRE`, `APELLIDOS`, `PERMISO`, `CATEGORIA`, `EMAIL`, `TELEFONO`, `FECHA_NACIMIENTO`, `IBAN`) VALUES
(1, '44657522D', '4631', 'Milly', 'somoza', 1, 0, 'msmss@eee.es', '634927340', '2019-02-26', 'ES662100041'),
(8, '41155072E', 'QZio39svjRBw', 'Cherilyn', 'Jenney', 3, 10, 'cjenney1@google.es', '278', '0000-00-00', 'CY03 4720 1'),
(9, '37150055H', '3f10Gyt', 'Rosana', 'Surr', 2, 7, 'rsurr2@squarespace.com', '526', '2019-05-23', 'TN03 0612 6'),
(10, '46655977V', 'LlqXSakG', 'Alena', 'Glenn', 2, 9, 'aglenn3@pagesperso-orange.fr', '538', '0000-00-00', 'GL42 3687 7'),
(11, '33028983V', 'gbzkUVA', 'Stu', 'Chapell', 3, 7, 'schapell4@tinypic.com', '687', '0000-00-00', 'KZ78 096N N'),
(12, '23226820V', 'jrmnoNJ3PQv4', 'Alvera', 'Skate', 2, 4, 'askate5@ebay.co.uk', '239', '0000-00-00', 'LI80 9526 1'),
(13, '15554563P', 'EQOO7cYDnEz', 'Saw', 'Goodlad', 2, 6, 'sgoodlad6@telegraph.co.uk', '545', '0000-00-00', 'SI30 2498 2'),
(14, '01162287M', 'toapWEnXDl', 'Reggie', 'O\' Cuolahan', 3, 9, 'rocuolahan7@aboutads.info', '993', '0000-00-00', 'GI71 LHVD 2'),
(15, '12825691V', 'GFkZQAGphrs5', 'Corine', 'Lunny', 2, 7, 'clunny8@cnn.com', '970', '0000-00-00', 'IT44 Z336 9'),
(16, '37613198X', 'st9oCpBufSh7', 'Lesya', 'Speeding', 2, 6, 'lspeeding9@storify.com', '830', '0000-00-00', 'BA65 8619 0'),
(17, '67820652T', 'dbE7zI', 'Cairistiona', 'Widdowes', 2, 10, 'cwiddowesa@newyorker.com', '243', '0000-00-00', 'HU28 8728 3'),
(18, '05546966X', 'CSQc0Ttx', 'Rex', 'Batthew', 3, 3, 'rbatthewb@apple.com', '765', '0000-00-00', 'EE75 0986 8'),
(19, '16491687C', 'y5ReXFJI9rCj', 'Katerina', 'Horrigan', 2, 3, 'khorriganc@businessinsider.com', '765', '0000-00-00', 'ES58 9655 4'),
(20, '23805220J', 'Hz3AmaOSrK', 'Shaylynn', 'Scarlin', 2, 4, 'sscarlind@woothemes.com', '734', '0000-00-00', 'GL59 1111 1'),
(21, '81073727S', 'rGJvaYf', 'Cornie', 'Fillingham', 2, 6, 'cfillinghame@accuweather.com', '564', '0000-00-00', 'AD91 3543 0'),
(22, '28314715J', 'L1KCySiDkB2', 'JUnaa', 'O\'Grada', 2, 1, 'bogradaf@chicagotribune.com', '635', '0000-00-00', 'GT31 SN73 Z'),
(23, '26509717D', 'nJrntA7x', 'Rafe', 'Moloney', 3, 7, 'rmoloneyg@amazon.co.uk', '573', '0000-00-00', 'AT55 6202 3'),
(24, '97427508Z', 'dqfW6mjFWZq', 'Pavel', 'Pirelli', 2, 4, 'ppirellih@istockphoto.com', '624', '0000-00-00', 'CH18 2599 8'),
(27, '87792097Q', '0hZnNWQnRQMX', 'Walton', 'Orlton', 2, 5, 'worltonj@elpais.com', '552', '0000-00-00', 'AD27 2705 7'),
(28, '36757055J', '3f10Gyt', 'Juana', 'Surr', 2, 8, 'rsurr2@squarespace.com', '526', '2019-04-26', 'TN03 0612 6'),
(29, '44261655H', 'h2U3ksG', 'Marlowe', 'Mougenel', 3, 2, 'mmougenelo@ask.com', '187', '0000-00-00', 'AZ55 KMYA Y'),
(30, '94919238D', 'OHUyv8u00', 'Zilvia', 'Comber', 3, 3, 'zcomberp@howstuffworks.com', '821', '0000-00-00', 'MU71 ISLU 7'),
(31, '34590522V', '4CbXDVuMEv', 'Lucius', 'Lapworth', 3, 1, 'llapworthq@uiuc.edu', '527', '0000-00-00', 'MK36 624R D'),
(32, '61930844D', 'YT3dw3uySc', 'Darelle', 'Lacky', 3, 7, 'dlackyr@purevolume.com', '805', '0000-00-00', 'VG93 MKNY 0'),
(33, '44876035E', 'NJC6GurfxGwM', 'Matias', 'Klassmann', 2, 10, 'mklassmanns@wsj.com', '369', '0000-00-00', 'MK25 7212 R'),
(34, '81134615E', 'QppUpzqYMhT', 'Ofelia', 'Colaton', 2, 7, 'ocolatont@yale.edu', '365', '0000-00-00', 'GT37 KXFO 7'),
(35, '92905611D', 'xba5B2RzjOW7', 'Harv', 'Dresse', 2, 10, 'hdresseu@chicagotribune.com', '864', '0000-00-00', 'GI80 SBBO O'),
(36, '23017016L', 'Cfb2SaQ4u', 'Gerri', 'Furnival', 3, 2, 'gfurnivalv@cnbc.com', '928', '0000-00-00', 'FR39 6649 2'),
(37, '51350379G', 'bF55B79ZK', 'Sunshine', 'Elletson', 3, 2, 'selletsonw@hatena.ne.jp', '742', '0000-00-00', 'MU41 GPQH 0'),
(38, '31449887D', 'jZ5cf3yX', 'Lewiss', 'Morville', 3, 1, 'lmorvillex@sbwire.com', '581', '0000-00-00', 'ES90 3771 9'),
(40, '82127871T', 'v3B0MLJ', 'Annemarie', 'Phonix', 3, 6, 'aphonixz@va.gov', '143', '0000-00-00', 'SM72 S648 4'),
(41, '88722180W', '85H9TzjKH', 'Tawnya', 'Parsisson', 3, 6, 'tparsisson10@imageshack.us', '315', '0000-00-00', 'FR67 1553 9'),
(42, '45152444V', 'OGgr8h', 'Rorie', 'Colbridge', 2, 8, 'rcolbridge11@mit.edu', '574', '0000-00-00', 'GI49 VJHX J'),
(43, '63844226K', 'DB4uGaJv3Vm', 'Odelia', 'Paolini', 3, 2, 'opaolini12@wikispaces.com', '106', '0000-00-00', 'GB97 ERJB 1'),
(44, '78155500M', 'xGIISpagK', 'Del', 'Richarson', 3, 9, 'dricharson13@dot.gov', '882', '0000-00-00', 'AE61 1151 5'),
(45, '72325783Y', 'RnMOop', 'Jean', 'Deppe', 2, 6, 'jdeppe14@goo.gl', '417', '0000-00-00', 'LI46 8476 3'),
(46, '98582846Q', 'YNEkXpwBZnd', 'Sheilah', 'Kohter', 2, 5, 'skohter15@nsw.gov.au', '750', '0000-00-00', 'MC84 5079 0'),
(47, '54606594V', 'MUug8sRcVuz', 'Page', 'Brennan', 2, 4, 'pbrennan16@surveymonkey.com', '440', '0000-00-00', 'IT10 F839 2'),
(48, '40768529V', 'iTd2ztSRfZpS', 'Sydney', 'Kummerlowe', 2, 4, 'skummerlowe17@icq.com', '287', '0000-00-00', 'CR75 8775 7'),
(49, '57616052V', 'ZD2lhBqHL', 'Myrlene', 'Darragon', 2, 3, 'mdarragon18@disqus.com', '111', '0000-00-00', 'CY17 3851 4'),
(50, '74894715E', '99i8qYUI7j', 'Vernor', 'Have', 3, 1, 'vhave19@ted.com', '407', '0000-00-00', 'PT47 7920 2'),
(52, '86749840G', 'RoDBdsWwD', 'Maryann', 'Zellmer', 2, 1, 'mzellmer1b@123-reg.co.uk', '219', '0000-00-00', 'FR19 6269 0'),
(53, '39563671Z', 'VP8bCM', 'Loreen', 'Slowcock', 2, 5, 'lslowcock1c@pcworld.com', '997', '0000-00-00', 'CR53 0944 0'),
(54, '03425090E', 'crhZqB0rTPDk', 'Andy', 'Mosdall', 2, 10, 'amosdall1d@furl.net', '348', '0000-00-00', 'LV14 MVTO B'),
(55, '63953547T', 'hrO6RTy', 'Daisi', 'Blazy', 2, 3, 'dblazy0@uol.com.br', '517 352 601', '0000-00-00', 'EE56 7861 8'),
(57, 'N2561292J', 'zIUe0O3bcok6', 'Matt', 'Albasini', 3, 2, 'malbasini2@europa.eu', '568 973 340', '0000-00-00', 'FO20 4518 1'),
(58, '97840857F', 'qcpsq5Ia2vt', 'Cosetta', 'Cofax', 2, 1, 'ccofax3@si.edu', '908 826 278', '0000-00-00', 'BA47 0530 7'),
(59, '18198545W', 'O47dVjb0ytWK', 'Benton', 'Keinrat', 3, 4, 'bkeinrat4@facebook.com', '336 497 963', '0000-00-00', 'FR03 4037 8'),
(60, '36732360A', 'nDsRHq', 'Staci', 'Tipling', 2, 1, 'stipling5@arstechnica.com', '131 801 972', '0000-00-00', 'FR08 1092 3'),
(61, '28395880B', 'f6uH9DnjEU', 'Brook', 'Swannie', 2, 2, 'bswannie6@independent.co.uk', '814 751 758', '0000-00-00', 'MK97 3476 N'),
(62, '75087096P', 'GKVLZB3jJv', 'Danika', 'Langmead', 3, 2, 'dlangmead7@boston.com', '719 590 669', '0000-00-00', 'CY12 0109 6'),
(63, '59293494T', 'SR15UgXM', 'Pedro', 'Okell', 3, 7, 'pokell8@dailymail.co.uk', '426 869 956', '0000-00-00', 'FR38 2204 2'),
(64, '60811549D', 'uNnhmwN', 'Brenden', 'Innerstone', 3, 10, 'binnerstone9@youtu.be', '495 989 432', '0000-00-00', 'PL81 9943 5'),
(65, '00503263T', 'p0WMS4HI', 'Quinn', 'Lilley', 3, 4, 'qlilleya@sun.com', '126 736 975', '0000-00-00', 'FR13 4684 0'),
(66, '57696449Y', 'B1b9jiLc8', 'Maximo', 'Girton', 3, 3, 'mgirtonb@oracle.com', '667 568 206', '0000-00-00', 'NO78 3657 9'),
(67, '90432231A', 'F251J4dkes', 'Regina', 'Walcot', 2, 9, 'rwalcotc@squidoo.com', '312 347 846', '0000-00-00', 'HU58 2649 6'),
(68, '09859090W', '3xEMBch2CeM', 'Cullie', 'Byre', 3, 10, 'cbyred@amazon.co.uk', '336 602 256', '0000-00-00', 'DE07 6784 3'),
(69, '28829185L', 'Aqx3SNv7D1', 'Chadd', 'Vasilic', 3, 9, 'cvasilice@sohu.com', '570 833 164', '0000-00-00', 'PL34 0514 7'),
(70, '96601413X', 'ZkVaYUNyP0c', 'Cosmo', 'Trainer', 3, 1, 'ctrainerf@irs.gov', '250 630 103', '0000-00-00', 'FR79 3469 0'),
(71, '26866965K', '3bNLmSlNG', 'Christean', 'Santora', 3, 4, 'csantorag@webmd.com', '695 972 534', '0000-00-00', 'DO95 YUSM 3'),
(72, '73628155A', 'UJLBqy76ObK', 'Abagail', 'Gulliford', 2, 2, 'agullifordh@google.com.au', '872 319 739', '0000-00-00', 'SI25 9884 3'),
(73, '54417233S', 'rwwsrrqNcC', 'Nicolea', 'Sidebottom', 2, 7, 'nsidebottomi@psu.edu', '993 376 780', '0000-00-00', 'FO63 3072 0'),
(74, '13661542W', 'MDvDSKXwfN2e', 'Fawnia', 'Littlemore', 2, 6, 'flittlemorej@wp.com', '860 365 542', '0000-00-00', 'AL59 8020 7'),
(75, '35606074G', 'jdQkq6AGDMeT', 'Reinhold', 'Walklot', 3, 1, 'rwalklotk@dyndns.org', '327 403 582', '0000-00-00', 'RS66 4802 0'),
(76, '42587167E', 'rjUOOamdkKO', 'Marta', 'Buntin', 2, 9, 'mbuntinl@hao123.com', '601 154 370', '0000-00-00', 'FR60 1200 1'),
(77, '67053411Q', 'f4A35a0', 'Leisha', 'Hazlehurst', 3, 5, 'lhazlehurstm@ca.gov', '697 647 341', '0000-00-00', 'PS38 FGYK F'),
(78, '22615750B', 'vP7nLE7I', 'Barbara-anne', 'Hordle', 3, 8, 'bhordlen@soundcloud.com', '447 302 285', '0000-00-00', 'KZ60 644I S'),
(89, '44659116Q', 'qsss', 'ssss', 'sss', 2, 8, 'slsl@ww.es', '634927340', '2019-06-20', 'ES190128982'),
(90, '44659216Q', 'qWW', 'SSSSS', 'SSSSSSS', 2, 8, 'schapell4@tinypic.com', '634927340', '2019-06-14', 'ES190128982');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `categorias`
--
ALTER TABLE `categorias`
  ADD PRIMARY KEY (`ID`);

--
-- Indices de la tabla `clubes`
--
ALTER TABLE `clubes`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `disponibilidad`
--
ALTER TABLE `disponibilidad`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `FK_usuarios` (`usuario`);

--
-- Indices de la tabla `equipos`
--
ALTER TABLE `equipos`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FK_club` (`club`),
  ADD KEY `FK_categoria` (`categoria`);

--
-- Indices de la tabla `jugadores`
--
ALTER TABLE `jugadores`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FK_clubs` (`club`),
  ADD KEY `FK_equipos` (`equipo`);

--
-- Indices de la tabla `partidos`
--
ALTER TABLE `partidos`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FK_arbitro_1` (`arbitro_1`),
  ADD KEY `FK_arbitro_2` (`arbitro_2`),
  ADD KEY `FK_arbitro_3` (`arbitro_3`),
  ADD KEY `FK_oficial_1` (`oficial_1`),
  ADD KEY `FK_oficial_2` (`oficial_2`),
  ADD KEY `FK_oficial_3` (`oficial_3`),
  ADD KEY `fk_categorias` (`categoria`),
  ADD KEY `fk_equipo_1` (`equipo_1`),
  ADD KEY `fk_equipo_2` (`equipo_2`);

--
-- Indices de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `FK_CATEGORIAS` (`CATEGORIA`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `categorias`
--
ALTER TABLE `categorias`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT de la tabla `clubes`
--
ALTER TABLE `clubes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;

--
-- AUTO_INCREMENT de la tabla `disponibilidad`
--
ALTER TABLE `disponibilidad`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT de la tabla `equipos`
--
ALTER TABLE `equipos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=46;

--
-- AUTO_INCREMENT de la tabla `jugadores`
--
ALTER TABLE `jugadores`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=85;

--
-- AUTO_INCREMENT de la tabla `partidos`
--
ALTER TABLE `partidos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=91;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `disponibilidad`
--
ALTER TABLE `disponibilidad`
  ADD CONSTRAINT `FK_usuarios` FOREIGN KEY (`usuario`) REFERENCES `usuarios` (`ID`);

--
-- Filtros para la tabla `equipos`
--
ALTER TABLE `equipos`
  ADD CONSTRAINT `FK_categoria` FOREIGN KEY (`categoria`) REFERENCES `categorias` (`ID`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_club` FOREIGN KEY (`club`) REFERENCES `clubes` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `jugadores`
--
ALTER TABLE `jugadores`
  ADD CONSTRAINT `FK_clubs` FOREIGN KEY (`club`) REFERENCES `clubes` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION,
  ADD CONSTRAINT `FK_equipos` FOREIGN KEY (`equipo`) REFERENCES `equipos` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION;

--
-- Filtros para la tabla `partidos`
--
ALTER TABLE `partidos`
  ADD CONSTRAINT `FK_arbitro_1` FOREIGN KEY (`arbitro_1`) REFERENCES `usuarios` (`ID`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_arbitro_2` FOREIGN KEY (`arbitro_2`) REFERENCES `usuarios` (`ID`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_arbitro_3` FOREIGN KEY (`arbitro_3`) REFERENCES `usuarios` (`ID`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_oficial_1` FOREIGN KEY (`oficial_1`) REFERENCES `usuarios` (`ID`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_oficial_2` FOREIGN KEY (`oficial_2`) REFERENCES `usuarios` (`ID`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_oficial_3` FOREIGN KEY (`oficial_3`) REFERENCES `usuarios` (`ID`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_categorias` FOREIGN KEY (`categoria`) REFERENCES `categorias` (`ID`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_equipo_1` FOREIGN KEY (`equipo_1`) REFERENCES `equipos` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_equipo_2` FOREIGN KEY (`equipo_2`) REFERENCES `equipos` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
