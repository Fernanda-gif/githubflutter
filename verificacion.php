<?php 
                       
$id = $_GET ['codigo'];
              
                                  
include("db.php");
$sql=mysqli_query($con, "SELECT * FROM Visitante WHERE unico='$id'");
$row = mysqli_fetch_assoc($sql);
$nombre = $row["nombre"]; 
$apellido = $row["apellido"]; 
$unico = $row["unico"];

echo $nombre;
echo "<br>";
echo $apellido;
echo "<br>";
echo $unico;


?> 




<?php 
                       
$id = $_GET ['codigo'];
              
                                  
include("db.php");
$sql=mysqli_query($con, "SELECT * FROM Proveedor_nuevo WHERE unico='$id'");
$row = mysqli_fetch_assoc($sql);
$nombre = $row["nombre"]; 
$apellido = $row["apellido"]; 
$unico = $row["unico"];

echo $nombre;
echo "<br>";
echo $apellido;
echo "<br>";
echo $unico;


?> 




<?php 
                       
$id = $_GET ['codigo'];
              
                                  
include("db.php");
$sql=mysqli_query($con, "SELECT * FROM proveedor_frecuente WHERE unico='$id'");
$row = mysqli_fetch_assoc($sql);
$nombre = $row["nombre"]; 
$apellido = $row["apellido"]; 
$unico = $row["unico"];

echo $nombre;
echo "<br>";
echo $apellido;
echo "<br>";
echo $unico;


?> 