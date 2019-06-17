-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 17, 2019 at 07:20 AM
-- Server version: 10.1.29-MariaDB
-- PHP Version: 7.2.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `liga`
--

-- --------------------------------------------------------

--
-- Table structure for table `informe`
--

CREATE TABLE `informe` (
  `idInforme` int(11) NOT NULL,
  `fecha` datetime NOT NULL,
  `totalUsuarios` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `pospago`
--

CREATE TABLE `pospago` (
  `idpospago` int(11) NOT NULL,
  `ID_USUARIO` bigint(20) NOT NULL,
  `MIN` bigint(20) NOT NULL,
  `TIPO_DE_ACTIVACION` text NOT NULL,
  `FECHA` date NOT NULL,
  `VIGENCIA` int(11) NOT NULL,
  `DNI_VENTA` bigint(20) NOT NULL,
  `NOMBRES` text NOT NULL,
  `PATERNO` text NOT NULL,
  `MATERNO` text NOT NULL,
  `DNI` bigint(20) NOT NULL,
  `TELEFONO` bigint(20) NOT NULL,
  `CORREO` text NOT NULL,
  `GENERO` text NOT NULL,
  `EMPRESA` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `pospago`
--

INSERT INTO `pospago` (`idpospago`, `ID_USUARIO`, `MIN`, `TIPO_DE_ACTIVACION`, `FECHA`, `VIGENCIA`, `DNI_VENTA`, `NOMBRES`, `PATERNO`, `MATERNO`, `DNI`, `TELEFONO`, `CORREO`, `GENERO`, `EMPRESA`) VALUES
(1, 52279219, 3133978646, 'POSPAGO', '0000-00-00', 365, 1012430963, 'samanda rocio', 'prieto', 'guarnizo', 52279219, 3105805963, 'gerencia@domi.com.co', 'Femenino', 'CONFEMOVIL (CONFEHOGAR) S.A.S.\r\n'),
(2, 52279219, 3134060051, 'POSPAGO', '0000-00-00', 365, 1012430963, 'samanda rocio', 'prieto', 'guarnizo', 52279219, 3105805963, 'gerencia@domi.com.co', 'Femenino', 'CONFEMOVIL (CONFEHOGAR) S.A.S.\r\n'),
(3, 52279219, 3134060051, 'POSPAGO', '0000-00-00', 365, 1012430963, 'samanda rocio', 'prieto', 'guarnizo', 52279219, 3105805963, 'gerencia@domi.com.co', 'Femenino', 'CONFEMOVIL (CONFEHOGAR) S.A.S.\r\n'),
(4, 52279219, 3142360007, 'POSPAGO', '0000-00-00', 365, 1110486554, 'samanda rocio', 'prieto', 'guarnizo', 52279219, 3105805963, 'gerencia@domi.com.co', 'Femenino', 'CONFEMOVIL (CONFEHOGAR) S.A.S.\r\n'),
(5, 52279219, 3057095203, 'POSPAGO', '0000-00-00', 365, 1233489477, 'samanda rocio', 'prieto', 'guarnizo', 52279219, 3105805963, 'gerencia@domi.com.co', 'Femenino', 'CONFEMOVIL (CONFEHOGAR) S.A.S.\r\n'),
(6, 52279219, 3002561712, 'POSPAGO', '0000-00-00', 365, 52705462, 'samanda rocio', 'prieto', 'guarnizo', 52279219, 3105805963, 'gerencia@domi.com.co', 'Femenino', 'CONFEMOVIL (CONFEHOGAR) S.A.S.\r\n'),
(7, 52279219, 3138568947, 'POSPAGO', '0000-00-00', 365, 1116723268, 'samanda rocio', 'prieto', 'guarnizo', 52279219, 3105805963, 'gerencia@domi.com.co', 'Femenino', 'CONFEMOVIL (CONFEHOGAR) S.A.S.\r\n'),
(8, 52279219, 3134136967, 'POSPAGO', '0000-00-00', 365, 1012430963, 'samanda rocio', 'prieto', 'guarnizo', 52279219, 3105805963, 'gerencia@domi.com.co', 'Femenino', 'CONFEMOVIL (CONFEHOGAR) S.A.S.\r\n'),
(9, 52279219, 3134422197, 'POSPAGO', '0000-00-00', 365, 1023962291, 'samanda rocio', 'prieto', 'guarnizo', 52279219, 3105805963, 'gerencia@domi.com.co', 'Femenino', 'CONFEMOVIL (CONFEHOGAR) S.A.S.\r\n'),
(10, 52279219, 3134418397, 'POSPAGO', '0000-00-00', 365, 1023962291, 'samanda rocio', 'prieto', 'guarnizo', 52279219, 3105805963, 'gerencia@domi.com.co', 'Femenino', 'CONFEMOVIL (CONFEHOGAR) S.A.S.\r\n');

-- --------------------------------------------------------

--
-- Table structure for table `prepago`
--

CREATE TABLE `prepago` (
  `idprepago` int(11) NOT NULL,
  `ID_USUARIO` bigint(20) NOT NULL,
  `ICCID` bigint(20) NOT NULL,
  `TIPO_DE_ACTIVACION` text NOT NULL,
  `FECHA` date NOT NULL,
  `VIGENCIA` int(11) NOT NULL,
  `NOMBRES` text NOT NULL,
  `PATERNO` text NOT NULL,
  `MATERNO` text NOT NULL,
  `DNI` bigint(20) NOT NULL,
  `TELEFONO` bigint(20) NOT NULL,
  `CORREO` text NOT NULL,
  `GENERO` text NOT NULL,
  `EMPRESA` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `prepago`
--

INSERT INTO `prepago` (`idprepago`, `ID_USUARIO`, `ICCID`, `TIPO_DE_ACTIVACION`, `FECHA`, `VIGENCIA`, `NOMBRES`, `PATERNO`, `MATERNO`, `DNI`, `TELEFONO`, `CORREO`, `GENERO`, `EMPRESA`) VALUES
(1, 1053774664, 356454082362475, 'PREPAGO', '0000-00-00', 365, 'Paula Andrea', 'Murillo', 'Chica', 1053774664, 3148901378, 'Paulamurillo@cell-people.coma', 'Masculino', 'CELL PEOPLE S.A.S.\r\n'),
(2, 1053774664, 863152031348365, 'PREPAGO', '0000-00-00', 365, 'Paula Andrea', 'Murillo', 'Chica', 1053774664, 3148901378, 'Paulamurillo@cell-people.coma', 'Masculino', 'CELL PEOPLE S.A.S.\r\n'),
(3, 1053774664, 359062092989273, 'PREPAGO', '0000-00-00', 365, 'Paula Andrea', 'Murillo', 'Chica', 1053774664, 3148901378, 'Paulamurillo@cell-people.coma', 'Masculino', 'CELL PEOPLE S.A.S.\r\n'),
(4, 1053774664, 356454082377473, 'PREPAGO', '0000-00-00', 365, 'Paula Andrea', 'Murillo', 'Chica', 1053774664, 3148901378, 'Paulamurillo@cell-people.coma', 'Masculino', 'CELL PEOPLE S.A.S.\r\n'),
(5, 1053774664, 15226009832209, 'PREPAGO', '0000-00-00', 365, 'Paula Andrea', 'Murillo', 'Chica', 1053774664, 3148901378, 'Paulamurillo@cell-people.coma', 'Masculino', 'CELL PEOPLE S.A.S.\r\n'),
(6, 1053774664, 863152031342962, 'PREPAGO', '0000-00-00', 365, 'Paula Andrea', 'Murillo', 'Chica', 1053774664, 3148901378, 'Paulamurillo@cell-people.coma', 'Masculino', 'CELL PEOPLE S.A.S.\r\n'),
(7, 1053774664, 359062091458684, 'PREPAGO', '0000-00-00', 365, 'Paula Andrea', 'Murillo', 'Chica', 1053774664, 3148901378, 'Paulamurillo@cell-people.coma', 'Masculino', 'CELL PEOPLE S.A.S.\r\n'),
(8, 1053774664, 353971080201028, 'PREPAGO', '0000-00-00', 365, 'Paula Andrea', 'Murillo', 'Chica', 1053774664, 3148901378, 'Paulamurillo@cell-people.coma', 'Masculino', 'CELL PEOPLE S.A.S.\r\n'),
(9, 1053774664, 354454094657898, 'PREPAGO', '0000-00-00', 365, 'Paula Andrea', 'Murillo', 'Chica', 1053774664, 3148901378, 'Paulamurillo@cell-people.coma', 'Masculino', 'CELL PEOPLE S.A.S.\r\n'),
(10, 1053774664, 353737090079898, 'PREPAGO', '0000-00-00', 365, 'Paula Andrea', 'Murillo', 'Chica', 1053774664, 3148901378, 'Paulamurillo@cell-people.coma', 'Masculino', 'CELL PEOPLE S.A.S.\r\n');

-- --------------------------------------------------------

--
-- Table structure for table `usuarios`
--

CREATE TABLE `usuarios` (
  `CLI_RUT` bigint(20) NOT NULL,
  `CLI_ID` int(11) NOT NULL,
  `CLI_NMB` text CHARACTER SET utf8 COLLATE utf8_spanish_ci NOT NULL,
  `CLI_PATERNO` text CHARACTER SET utf8 COLLATE utf8_spanish_ci NOT NULL,
  `CLI_MATERNO` text CHARACTER SET utf8 COLLATE utf8_spanish_ci NOT NULL,
  `CLI_NUM_TEL` bigint(20) NOT NULL,
  `CLI_CORREO` text CHARACTER SET utf8 COLLATE utf8_spanish_ci NOT NULL,
  `CLI_REGION` text CHARACTER SET utf8mb4 COLLATE utf8mb4_spanish2_ci NOT NULL,
  `CLI_GENERO` text CHARACTER SET utf8 COLLATE utf8_spanish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `usuarios`
--

INSERT INTO `usuarios` (`CLI_RUT`, `CLI_ID`, `CLI_NMB`, `CLI_PATERNO`, `CLI_MATERNO`, `CLI_NUM_TEL`, `CLI_CORREO`, `CLI_REGION`, `CLI_GENERO`) VALUES
(52279219, 2377, 'samanda rocio', 'prieto', 'guarnizo', 3105805963, 'gerencia@domi.com.co', 'BOGOT?', 'Femenino\r\n'),
(1053774664, 3768, 'Paula Andrea', 'Murillo', 'Chica', 3148901378, 'Paulamurillo@cell-people.coma', 'CALDAS', 'Masculino\r\n'),
(80577811, 3563, 'Armando', 'Lizarazo', 'Ramirez', 3118135130, 'contabilidad@andinocell.com', 'CUNDINAMARCA', 'Masculino\r\n'),
(1017173051, 2412, 'Edison Andr?s ', 'Herrera ', 'Zapata', 3146282520, 'inventarios@teamcomunicaciones.com', 'ANTIOQUIA', 'Masculino\r\n'),
(1058460007, 2344, 'lucy esperanza', 'chaparro', 'martinez', 3194113141, 'lucychaparro1986@gmail.com', 'BOGOT?', 'Masculino\r\n'),
(11365288, 1085, 'Jhon Fredy', 'cuartas', 'cardenas', 3118652935, 'jhonfredycuartascardenas@gmail.coma', 'CUNDINAMARCA', 'Masculino\r\n'),
(88248736, 1459, 'Alvaro', 'Gutierrez', 'Paez', 3118540709, 'alvarovgutierrezp@gmail.com', 'NORTE DE SANTANDER', 'Masculino\r\n'),
(1094919227, 2168, 'Duvan Ricardo', 'Hoyos', 'Castillo', 3108105710, 'duvanbp@hotmail.com', 'BOYAC?', 'Masculino\r\n'),
(79504998, 4903, 'Cesar augusto', 'Henao', 'Gallego', 3117714221, 'ceauhe@hotmail.com', 'BOGOT?', 'Masculino\r\n'),
(27354391, 142, 'Judith ', 'Cuesvas', 'Mu?oz', 3102209905, 'judithcuesvas@gredcosas.com', 'PUTUMAYO', 'Femenino\r\n');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `informe`
--
ALTER TABLE `informe`
  ADD PRIMARY KEY (`idInforme`);

--
-- Indexes for table `pospago`
--
ALTER TABLE `pospago`
  ADD PRIMARY KEY (`idpospago`);

--
-- Indexes for table `prepago`
--
ALTER TABLE `prepago`
  ADD PRIMARY KEY (`idprepago`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `informe`
--
ALTER TABLE `informe`
  MODIFY `idInforme` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pospago`
--
ALTER TABLE `pospago`
  MODIFY `idpospago` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `prepago`
--
ALTER TABLE `prepago`
  MODIFY `idprepago` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
