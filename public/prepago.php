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
<body>
<div style="margin-left: 350px">
    <a href="home.php"><img src="../images/logo.png" style="width: 200px; margin-left: 100px"></a><br><br>
    <form action="../back/cargar-prepago.php" style="margin-left: 100px" enctype="multipart/form-data" method="post" id="crear" style="padding: 30px">
        <input id="archivo" accept=".csv" name="archivo" type="file" onchange="this.parentNode.setAttribute('title', this.value.replace(/^.*[\\/]/, ''))" required/><br><br>
        <button class="btn w-M br-0 stl-3" href="usuarios.php">Cargar Prepago</button>
    </form>

</div>
</body>
</html>