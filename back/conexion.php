<?php
/**
 * Created by PhpStorm.
 * User: Manuel
 * Date: 16/06/2019
 * Time: 16:58
 */
session_start();
$con = mysqli_connect("localhost", "liga","123456", "liga");
if (!$con){
    //echo "<script>alert('Algo ha ocurrido'); window.location.href='../public/index'</script>";
    //echo "fallo";
}else{
    //echo "ok";
}
/*
$resultado = mysqli_query($con, "SELECT * FROM `usuarios`");
//echo mysqli_fetch_all($resultado)
for ($i=0; $i<=sizeof($resultado); $i++){
    echo $resultado[$i][0];
}*/
/*if (!isset($_SESSION['tiempo'])) {
    $_SESSION['tiempo']=time();
}
else if (time() - $_SESSION['tiempo'] > 10) {
    session_destroy();
    //header("Location: ../views/index.php");
    die();
}
$_SESSION['tiempo']=time();
*/
?>
