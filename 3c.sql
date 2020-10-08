-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Czas generowania: 08 Paź 2020, 14:07
-- Wersja serwera: 10.4.14-MariaDB
-- Wersja PHP: 7.4.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Baza danych: `3c`
--

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `dwa`
--

CREATE TABLE `dwa` (
  `id` int(11) NOT NULL,
  `imie` text COLLATE utf16_polish_ci NOT NULL,
  `nazwisko` text COLLATE utf16_polish_ci NOT NULL,
  `iq` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf16 COLLATE=utf16_polish_ci;

--
-- Zrzut danych tabeli `dwa`
--

INSERT INTO `dwa` (`id`, `imie`, `nazwisko`, `iq`) VALUES
(1, 'Justyna', 'Judasz', 10),
(2, 'Kamil', 'Koralik', 15),
(3, 'Andrzej', 'Dzirdzipala', 77),
(4, 'Andrzej', 'Wagina', 876),
(5, 'Justyna', 'Kebab', 112),
(6, 'Mateusz', 'Muczek', 1);

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `jeden`
--

CREATE TABLE `jeden` (
  `id` int(11) NOT NULL,
  `imie` text COLLATE utf16_polish_ci NOT NULL,
  `nazwisko` text COLLATE utf16_polish_ci NOT NULL,
  `telefon` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf16 COLLATE=utf16_polish_ci;

--
-- Zrzut danych tabeli `jeden`
--

INSERT INTO `jeden` (`id`, `imie`, `nazwisko`, `telefon`) VALUES
(1, 'Kacper', 'Dzirdzimag', 442225123),
(2, 'Jozeph', 'Albatraos', 552112098),
(3, 'Polska', 'Policja', 887442115),
(4, 'Kapi', 'Wipaki', 521098789),
(5, 'Marcin', 'Kawai', 552225552),
(6, 'Juliusz', 'Barabasz', 442224441);

--
-- Indeksy dla zrzutów tabel
--

--
-- Indeksy dla tabeli `dwa`
--
ALTER TABLE `dwa`
  ADD PRIMARY KEY (`id`);

--
-- Indeksy dla tabeli `jeden`
--
ALTER TABLE `jeden`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT dla tabeli `dwa`
--
ALTER TABLE `dwa`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT dla tabeli `jeden`
--
ALTER TABLE `jeden`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
