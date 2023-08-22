<?php

session_start();

include './DbConnect.php';

$db = new DbConnect;

?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <link rel="stylesheet" href="styles/style.css">
</head>
<body>

<div class=container>

<header class="header">

    <div class="fanclub">
        <span class="paris">ICI C'EST PARIS</span>
        <span class="fan">FANCLUB</span>
        <img src="/Images/logo2.jpg" alt="Logo" class="logo">
    </div>

</header>

<section>


    <nav>

        <ul class=d-inline-block>

           <a href='index.php?page=histoire'>Histoire</a>
           <a href='index.php?page=equipe'>Equipe</a>
           <a href='index.php?page=staff'>Staff</a>
           <a href='index.php?page=compo'>Compo</a>
           <a href='index.php?page=contact'>Contact</a>
           <a href='index.php?page=settings'>Paramètres</a>
           
           <?php 
                if (isset($_SESSION) and !empty($_SESSION)){ ?>
                     <a href="?page=connexion">Déconnexion</a>
                <?php } else { ?>
                    <a href="?page=connexion">Connexion</a>
                <?php }
                
        if (isset($_GET['page']) && $_GET['page'] == 'user' && empty($_SESSION)){ ?>
            <p class="alert warning">Vous devez être connecté pour pouvoir avoir accès à cette partie du site</p>
        <?php }

if (isset($_GET['page']) && $_GET['page'] == "settings" && empty($_SESSION)) { ?>
    <p class="alert warning">Vous devez être connecté pour pouvoir avoir accès à cette partie du site</p>
    <?php }


                ?>


        </ul>

    </nav>
