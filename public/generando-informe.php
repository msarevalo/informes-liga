<!DOCTYPE html>
<html>
<head>
    <title>Liga de Campeones</title>
    <meta charset="UTF-8">
    <!-- Estilos -->
    <link href="../css/estilos.css" rel="stylesheet">
    <link rel="shortcut icon" href="../images/logo.png">
    <!--<link href="../css/estilos.css" rel="stylesheet">
    <!-- Scripts -->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
    <script src="../js/script.js" type="application/javascript"></script>
</head>
<body onload="noVolver()">
<div style="margin-left: 450px; margin-top: 10%">
    <img src="../images/logo.png" style="width: 200px; margin-left: 100px; opacity: 0.2">
    <img src="../images/cargando.gif" style="margin-left: -340px; margin-top: -50px; position: absolute;">
</div>
<?php

include('../back/conexion.php');

$total = mysqli_query($con, "SELECT COUNT(usuarios.CLI_ID) FROM usuarios");
$totalusuarios = mysqli_fetch_all($total);
echo $totalusuarios[0][0];

$femenino = mysqli_query($con, "SELECT COUNT(usuarios.CLI_ID) FROM usuarios WHERE usuarios.CLI_GENERO LIKE \"%Femenino%\"");
$totalfemenino = mysqli_fetch_all($femenino);
echo "<br>" . $totalfemenino[0][0];

$masculino = mysqli_query($con, "SELECT COUNT(usuarios.CLI_ID) FROM usuarios WHERE usuarios.CLI_GENERO LIKE \"%Masculino%\"");
$totalmasculino = mysqli_fetch_all($masculino);
echo "<br>" . $totalmasculino[0][0];

$pospago = mysqli_query($con, "SELECT COUNT(pospago.idpospago) FROM pospago");
$totalpospago = mysqli_fetch_all($pospago);
echo "<br>" . $totalpospago[0][0];

$prepago = mysqli_query($con, "SELECT COUNT(prepago.idprepago) FROM prepago");
$totalprepago = mysqli_fetch_all($prepago);
echo "<br>" . $totalprepago[0][0];