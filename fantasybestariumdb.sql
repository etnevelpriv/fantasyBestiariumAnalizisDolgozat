-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Gép: 127.0.0.1
-- Létrehozás ideje: 2026. Nov 16. 23:12
-- Kiszolgáló verziója: 10.4.32-MariaDB
-- PHP verzió: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Adatbázis: `fantasybestariumdb`
--

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `szornyek`
--

CREATE TABLE `szornyek` (
  `Id` int(11) NOT NULL,
  `Nev` varchar(100) NOT NULL,
  `VeszelyessegiSzint` int(11) NOT NULL,
  `Elohely` varchar(100) NOT NULL,
  `FoGyengeseg` varchar(100) NOT NULL,
  `LeggyakoribbZsakmany` varchar(100) NOT NULL,
  `VeszelyesE` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_hungarian_ci;

--
-- A tábla adatainak kiíratása `szornyek`
--

INSERT INTO `szornyek` (`Id`, `Nev`, `VeszelyessegiSzint`, `Elohely`, `FoGyengeseg`, `LeggyakoribbZsakmany`, `VeszelyesE`) VALUES
(1, 'Árnyékfarkas', 6, 'Sötét Erdő', 'Erős fény', 'Elveszett utazók', 1),
(2, 'Mocsári Lidérc', 4, 'Fekete Mocsár', 'Szenteltvíz', 'Halászok', 1),
(3, 'Vörös Sárkány', 10, 'Vulkáni Kráter', 'Hasa alatti pikkelyhiány', 'Királyi kincstár', 1),
(4, 'Kristály Gólem', 8, 'Föld alatti barlangok', 'Hangrezonancia', 'Bányászok', 1),
(5, 'Kőszáli Griffin', 7, 'Magas Hegyvidék', 'Arany illata', 'Kecskék', 1),
(6, 'Homokféreg', 9, 'Végtelen Sivatag', 'Vibráció hiánya', 'Karavánok', 1),
(7, 'Síró Szellem', 5, 'Elhagyatott Kastély', 'Vas fegyverek', 'Életenergia', 1),
(8, 'Tűzmanó', 3, 'Kovácsműhelyek', 'Hideg víz', 'Szerszámok', 0),
(9, 'Fagyóriás', 9, 'Északi Tundra', 'Tűzvarázs', 'Mamutok', 1),
(10, 'Miriád Pók', 6, 'Pókerdő', 'Tűz', 'Erdei vadak', 1),
(11, 'Mocsári Zombipatkány', 2, 'Fekete Mocsár', 'Tűz', 'Gabona', 0),
(12, 'Éji Rém', 7, 'Álmok birodalma', 'Éberség', 'Lelkek', 1),
(13, 'Vaspikkelyű Hidra', 10, 'Királyi Mocsár', 'Tűz a nyakakra', 'Hadseregek', 1),
(14, 'Poronty Manó', 1, 'Pince', 'Cukor', 'Sütemények', 0),
(15, 'Vihar Harpia', 5, 'Viharos-hegycsúcs', 'Háló', 'Madarak', 1),
(16, 'Láva Csomó', 8, 'Vulkán belseje', 'Jég', 'Kőzetek', 1),
(17, 'Köd Szellem', 4, 'Tengerpart', 'Szél', 'Halak', 0),
(18, 'Mágikus Unikornis', 6, 'Elvarázsolt Liget', 'Sötét mágia', 'Virágok', 0),
(19, 'Csontváz Harcos', 3, 'Temető', 'Zúzó fegyverek', 'Kalandorok', 1),
(20, 'Mérges Vizi-tündér', 4, 'Tómeder', 'Szárazföld', 'Békák', 0),
(21, 'Földrengés Kobra', 7, 'Tektonikus hasadék', 'Zene', 'Kisemlősök', 1),
(22, 'Plazma Szellem', 9, 'Laboratórium romok', 'Mágneses mező', 'Energia', 1),
(23, 'Mocsári Óriásbéka', 3, 'Fekete Mocsár', 'Só', 'Rovarok', 0),
(24, 'Szikla Torlasz', 5, 'Hegycsúcs', 'Dinamit', 'Kőszáli kecske', 0),
(25, 'Vérszívó Denevér-ember', 6, 'Katakomba', 'Fokhagyma', 'Utazók', 1),
(26, 'Tengeri Kígyó', 8, 'Nyílt Óceán', 'Sekély víz', 'Hajók', 1),
(27, 'Aszteroida Falánk', 10, 'Aszteroida mező', 'Lézer', 'Üstökösök', 1),
(28, 'Epekedő Banshee', 7, 'Romos Apátság', 'Csend', 'Remény', 1),
(29, 'Gőgös Griffmadár', 7, 'Magas Hegyvidék', 'Büszkeség', 'Juok', 1),
(30, 'Tűz-Madár (Főnix)', 8, 'Égő sivatag', 'Könnyek', 'Hamu', 0),
(31, 'Káosz Démon', 10, 'Dimenzióhatár', 'Rend', 'Minden', 1),
(32, 'Fémzabáló Bogár', 3, 'Fegyverraktár', 'Kerámia', 'Páncélzat', 1),
(33, 'Jégvirág Tündér', 2, 'Téli erdő', 'Meleg', 'Nektár', 0),
(34, 'Mágneses Vadkan', 4, 'Ércmező', 'Fa pajzs', 'Fém', 0),
(35, 'Láthatatlan Orgyilkos', 8, 'Városi sikátorok', 'Lisztszórás', 'Arany', 1),
(36, 'Mocsári Iszap-szörny', 5, 'Fekete Mocsár', 'Kiszáradás', 'Állatok', 1),
(37, 'Vörös Szemű Bagoly', 3, 'Öreg Tölgyes', 'Nappali fény', 'Egerek', 0),
(38, 'Mennydörgő Oroszlán', 9, 'Szavanna', 'Földelt pajzs', 'Zsiráfok', 1),
(39, 'Sivatagi délibáb-szörny', 5, 'Végtelen Sivatag', 'Valóság', 'Szomjazók', 1),
(40, 'Fémmanó', 2, 'Bányászfalvak', 'Rozsda', 'Szerszámok', 0),
(41, 'Kaptár Királynő', 9, 'Föld alatti barlangok', 'Királynő megölése', 'Méh-szerű lények', 1),
(42, 'Tűzszájú Sárkánygyík', 6, 'Vulkáni Kráter', 'Víz', 'Kígyók', 1),
(43, 'Bűvös Tükör Szellem', 6, 'Elhagyatott Kastély', 'Tükör törése', 'Hiú emberek', 1),
(44, 'Mérges Gomba-ember', 3, 'Sötét Erdő', 'Gyomirtó', 'Rovarok', 0),
(45, 'Kráterlakó', 7, 'Vulkáni Kráter', 'Fagy', 'Kőzetek', 1),
(46, 'Égi Palota Őre', 8, 'Lebegő szigetek', 'Kulcs', 'Behatolók', 1),
(47, 'Föld alatti Vakond-óriás', 5, 'Föld alatti barlangok', 'Erős fény', 'Gyökerek', 0),
(48, 'Óriás Teknős', 4, 'Tómeder', 'Saláta', 'Hínár', 0),
(49, 'Ködlovag', 7, 'Ködös-völgy', 'Igaz szerelem', 'Kalandorok', 1),
(50, 'Csillagközi Medúza', 8, 'Világűr', 'Vákuum', 'Űrhajók', 1),
(51, 'Láva Cápák', 8, 'Vulkán belseje', 'Hideg', 'Tűzszellem', 1),
(52, 'Mocsári Rém', 6, 'Fekete Mocsár', 'Tűz', 'Vándorok', 1),
(53, 'Sötétség Angyala', 10, 'Alvilág', 'Szent Fény', 'Lelkek', 1),
(54, 'Kristály Pillangó', 1, 'Kristálybarlang', 'Olaj', 'Virágpor', 0),
(55, 'Kősó Gólem', 4, 'Sóbánya', 'Eső', 'Turisták', 0),
(56, 'Viharmadár', 6, 'Viharos-hegycsúcs', 'Csend', 'Halak', 0),
(57, 'Fekete Özvegy Óriás', 7, 'Pókerdő', 'Tűz', 'Emlősök', 1),
(58, 'Smaragd Sárkány', 9, 'Elvarázsolt Liget', 'Gyémánt', 'Drágakövek', 1),
(59, 'Földi Démon', 8, 'Földalatti barlangok', 'Szenteltvíz', 'Kalandorok', 1),
(60, 'Óriás Hangya', 3, 'Erdőszél', 'Füst', 'Levelek', 0),
(61, 'Tengeri Boszorkány', 8, 'Nyílt Óceán', 'A saját tükörképe', 'Tengerészek', 1),
(62, 'Lángoló Farkas', 6, 'Vulkáni Kráter', 'Víz', 'Vadkanok', 1),
(63, 'Fagyos Leheletű Medve', 6, 'Északi Tundra', 'Tűz', 'Halak', 1),
(64, 'Ködös Lidérc', 5, 'Fekete Mocsár', 'Szél', 'Utazók', 1),
(65, 'Arany Sárkány', 10, 'Királyi Kincstár', 'Jóság', 'Kincsek', 1);

--
-- Indexek a kiírt táblákhoz
--

--
-- A tábla indexei `szornyek`
--
ALTER TABLE `szornyek`
  ADD PRIMARY KEY (`Id`);

--
-- A kiírt táblák AUTO_INCREMENT értéke
--

--
-- AUTO_INCREMENT a táblához `szornyek`
--
ALTER TABLE `szornyek`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=66;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
