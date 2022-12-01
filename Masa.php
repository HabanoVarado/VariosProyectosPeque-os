<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="style.css">
    <title>MAsa corporal</title>
</head>
<body>
    <main>
    <form action="Masa.php" method="post">
        <td>
            <tr>
                <label for="">Estatura</label>
                <input type="text" name="estatura" id="estatura">
            </tr>
            <tr>
                <label for="">Peso</label>
                <input type="text" name="peso" id="peso">
            </tr>
            <tr>
                <input type="submit" value="Total" name="btntotal"
                >
            </tr>
        </td>
    </form>
    </main>
    <?php


$Totalp= $_POST['peso'];
$estatura = $_POST['estatura'];
$peso = $Totalp ;
$Total = $_POST['btntotal'];

    if($peso <= 18.5){

        echo "<h1>Estas bajo de peso</h1>";
    }

else{
    if($peso == 18.6 && $peso<= 24.9){

        echo "<h1> Tienes un peso normal </h1> ";
    }
}
   
    if ($peso == 25.0 && $peso <= 26.9 ){

        echo "<h1> Tienes Sobrepeso Grado 1 </h1>";

    }
    
else{
    if ($peso == 27.0 && $peso <= 29.9 ){

        echo "<h1> Tienes Sobrepeso Grado 2 </h1>";

    }
}
    
    if($peso == 30.0 && $peso <= 34.9 ){

        echo "<h1> Tienes Obesidad Grado 1 </h1>";

    }
   
else{
    if($peso -= 35.0 && $peso <= 39.9){

        echo "<h1> Tienes Obesidad Grado 2 </h1>";

    }
}


    if($peso == 40.0 && $peso <= 49.9){

         echo "<h1> Tienes Obesidad Grado 3 </h1>";

    }
      

    


if(isset($_POST['btntotal'])){
    
    


    

}

?>
</body>
</html>