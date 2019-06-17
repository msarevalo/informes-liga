<?php

include ('conexion.php');

$eliminar = mysqli_query($con, "TRUNCATE TABLE `pospago`");

try{
//obtenemos el archivo .csv
    $tipo = $_FILES['archivo']['type'];
    $tamanio = $_FILES['archivo']['size'];
    $archivotmp = $_FILES['archivo']['tmp_name'];
//cargamos el archivo
    $lineas = file($archivotmp);
//inicializamos variable a 0, esto nos ayudará a indicarle que no lea la primera línea
    $i = 0;
    ini_set('max_execution_time', 60000);
//Recorremos el bucle para leer línea por línea
    if ($tipo==="application/vnd.ms-excel") {
        foreach ($lineas as $linea_num => $linea) {
            //echo "entro";
            //abrimos bucle
            /*si es diferente a 0 significa que no se encuentra en la primera línea
            (con los títulos de las columnas) y por lo tanto puede leerla*/
            if ($i != 0) {
                //echo "entro if i";
                //abrimos condición, solo entrará en la condición a partir de la segunda pasada del bucle.
                /* La funcion explode nos ayuda a delimitar los campos, por lo tanto irá
                leyendo hasta que encuentre un ; */
                $datos = explode(";", $linea);
                //Almacenamos los datos que vamos leyendo en una variable
                //usamos la función utf8_decode para leer correctamente los caracteres especiales
                if (isset($datos[0])) {
                    $id = utf8_decode($datos[0]);
                }
                if (isset($datos[1])) {
                    $min = utf8_decode($datos[1]);
                }
                if (isset($datos[2])) {
                    $activacion = utf8_decode($datos[2]);
                }
                if (isset($datos[3])) {
                    $fecha = utf8_decode($datos[3]);
                }
                if (isset($datos[4])) {
                    $vigencia = utf8_decode($datos[4]);
                }
                if (isset($datos[5])) {
                    $venta = utf8_decode($datos[5]);
                }
                if (isset($datos[6])) {
                    $nombres = utf8_decode($datos[6]);
                }
                if (isset($datos[7])) {
                    $paterno = utf8_decode($datos[7]);
                }
                if (isset($datos[8])) {
                    $materno = utf8_decode($datos[8]);
                }
                if (isset($datos[9])) {
                    $dni = utf8_decode($datos[9]);
                }
                if (isset($datos[10])) {
                    $telefono = utf8_decode($datos[10]);
                }
                if (isset($datos[11])) {
                    $correo = utf8_decode($datos[11]);
                }
                if (isset($datos[12])) {
                    $genero = utf8_decode($datos[12]);
                }
                if (isset($datos[13])) {
                    $empresa = utf8_decode($datos[13]);
                }

                //guardamos en base de datos la línea leida
                $insersion = mysqli_query($con, "INSERT INTO `pospago` (`ID_USUARIO`, `MIN`, `TIPO_DE_ACTIVACION`, `FECHA`, `VIGENCIA`, `DNI_VENTA`, `NOMBRES`, `PATERNO`, `MATERNO`, `DNI`, `TELEFONO`, `CORREO`, `GENERO`, `EMPRESA`) VALUES ('" . $id . "', '" . $min . "', '" . $activacion . "', '" . $fecha . "', '" . $vigencia . "', '" . $venta . "', '" . $nombres . "' , '" . $paterno . "', '" . $materno . "', '" . $dni . "', '" . $telefono . "', '" . $correo . "', '" . $genero . "', '" . $empresa . "');");
                if ($insersion) {
                    echo "<script>alert('Se importo el archivo pospago correctamente, por favor prosigue con el archivo de prepago');window.location.href='../public/prepago.php'</script>";
                } else {
                    echo "<script>alert('No se pudo completar la insersion'); window.location.href='../public/pospago.php'</script>";
                }
                //cerramos condición
            }
            /*Cuando pase la primera pasada se incrementará nuestro valor y a la siguiente pasada ya
            entraremos en la condición, de esta manera conseguimos que no lea la primera línea.*/
            $i++;
            //cerramos bucle
        }
    }else{
        echo "<script>alert('El archivo debe ser de extension .csv'); window.location.href='../public/pospago.php'</script>";
    }
}
catch (Exception $e){
    echo "<script>alert('Algo ha pasado, verifica tu archivo'); window.location.href='../public/pospago.php'</script>";
}