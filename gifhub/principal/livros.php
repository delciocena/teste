<?php


$consulta = $conn->prepare("select * from usuarios INNER JOIN pessoa  on pessoa.idpessoa = usuarios.main_id ");
$consulta->execute();


//Livros de informática
$consulta = $conn->prepare("select * from livros INNER JOIN pdf  on pdf.id_livro = livros.idlivro  where disponivel='1' ORDER BY idlivro desc limit 0,6");
$consulta->execute();

//Livros de religião
$consulta2 = $conn->prepare("select * from livros limit 0,6");
$consulta2->execute();

//Livros de anatomia
$consulta3 = $conn->prepare("select * from livros limit 0,6");
$consulta3->execute();


//Livros de modelagem 3d
$consulta4 = $conn->prepare("select * from libros limit 0,6");
$consulta4->execute();


//Livros de animação
$consulta5 = $conn->prepare("select * from libros limit 0,6");
$consulta5->execute();




?>
