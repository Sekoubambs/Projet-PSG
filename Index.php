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
    <link rel="stylesheet" href="./styles/style.css">
</head>
<body>



<section>




    <div class="barre-nav">

        <div class="fanclub">

        <span class="paris">ICI C'EST PARIS</span>
        <span class="fan">FANCLUB</span>
        <img src="./Images/Logo-PSG.png" alt="Logo" class="logo">
        </div>
        
        <div class="bandeau blanc"></div>
        <div class="bandeau rouge">
           
            <ul class="tab-container">
                    <li><a href="index.php?page=accueil">Accueil</a></li>
                    <li><a href="index.php?page=histoire">Histoire</a></li>
                    <li><a href="index.php?page=equipe">Equipe</a></li>
                    <li><a href="index.php?page=staff">Staff</a></li>
                    <li><a href="index.php?page=compo">Compo</a></li>
                    <li><a href="index.php?page=galerie">Galerie</a></li>
                    <li><a href="index.php?page=settings">Paramètres</a></li>
            </ul>
        </div>
        <div class="bandeau blanc"></div>
        <div class="bandeau bleu"></div>

<?php 
        if (isset($_SESSION) && !empty($_SESSION)) { ?>

            <form action="?page=deconnexion" method="post">
            <input type="submit" name="deconnexion" value="Déconnexion" class="connexion">
            </form>

<?php } else { ?>

            <form action="?page=connexion" method="post">
            <input type="submit" value="Connexion" class="connexion">
            </form>

<?php } ?>

</ul>
</nav>




    <?php
 


// *********************************************** Accueil ********************************************************************************************
 
        if (isset($_GET['page']) && $_GET['page'] == 'accueil') {?>


        <div class="pageAccueil">  
                <span class="bienvenue">Bienvenue à toi ami parisien !</span>
                <div class="image-container-bienvenue">

                    <img src="./Images/Lettrage PSG.png" alt="Image 2">
                    <img src="./Images/Logo-ville-Paris.jpg" alt="Image 2">
                    <img src="./Images/Ecusson-old.png" alt="Image 1">

                </div>
                <br>
                <p>Si tu es sur ce site c’est que, comme beaucoup de  gens à travers le monde, tu partage les mêmes couleurs que nous, la même passion pour ce magnifique club de football qu’est le Paris-Saint-Germain.</p>
                <br>
                <p>Sur ce site tu pourras trouver des infos sur l’histoire du PSG,  ainsi que  sur le staff et l’effectif actuel.</p>
                <br>
                <p>Si tu as envie de nous contacter pour vivre ta passsion avec nous, n’hésite pas. Nous serons toujours présent pour discuter de ce club déjà mythique malgré sa jeune histoire.</p>
                <br>
                <p>Ne reste pas seul . Soyons soudés pour supporter notre équipe et l’aider à atteindre les sommets.</p>
                <br>
                <br>
                <p>Rêvons plus grand ! Et vive le Paris- Saint-Germain !</p>
                <p>Fluctuat nec mergitur!</p>
        </div>

        <div class="images-container-accueil">

            <img src="./Images/wp3631445.webp">

        </div>

            <?php }

// *********************************************** Histoire ********************************************************************************************


        if (isset($_GET['page']) && $_GET['page'] == 'histoire' && empty($_SESSION)){ ?>
                <p class="alert warning">Vous devez être connecté pour pouvoir avoir accès à cette partie du site</p>
            <?php }
        
        if (isset($_GET['page']) && $_GET['page'] == "histoire" && !empty($_SESSION) ) { ?>

                <span class="bienvenue">Quelques dates marquantes</span>

                <div class="column-container">
                        <div class="column">
                            <br>
                            <br>
                            <div class="date">1970 :</div><span class="textHistoire">Fondation du Paris Saint-Germain, né de la fusion du Stade Saint-Germanois et du Paris Football  Club.</span>
                            <br>
                            <br>
                            <div class="date">1971 :</div><span class="textHistoire">Premier match en D1.</span>
                            <br>
                            <br>
                            <div class="date">1973 :</div><span class="textHistoire">Le couturier Daniel Hechter devient  président du club, avec Just Fontaine comme entraîneur. Il  dessinera le maillot de l’équipe.</span>
                            <br>
                            <br>
                            <div class="date">1978 :</div><span class="textHistoire">Francis Borelli succéde à Daniel Hecter.</span>
                            <br>
                            <br>
                            <div class="date">1982 :</div><span class="textHistoire">Premier titre avec la Coupe de France.</span>
                            <br>
                            <br>
                            <div class="date">1986 :</div><span class="textHistoire">Premier titre de champion de France de D1.</span>

                        </div>

                        <div class="column">
                            <br>
                            <br>
                            <div class="date">1991 :</div><span class="textHistoire">Début de l’ère Canal + à la tête du club (1991-2006).</span>
                            <br>
                            <br>
                            <div class="date">1996 :</div><span class="textHistoire">Premier titre européen. Le PSG est vainqueur de la Coupe d'Europe des vainqueurs de Coupe. </span>
                            <br>
                            <br>
                            <div class="date">2006 :</div><span class="textHistoire">Début de l’ère Colony Capital (2006-2011) . Période qui constituera un échec dans la gouvernance du club.</span>
                            <br>
                            <br>
                            <div class="date">2011 :</div><span class="textHistoire">Début de l’ère QSI. Cette période marquera un changement de dimenseion, notamment par l’intermédiraire d’un investissement massif.</span>
                            <br>
                            <br>
                            <img src="./Images/LIVRE-OUVERT-TEAM-HD-e1542122814243.jpg" >
                            <br>

                        </div>

                </div>

                <div class="imageHistorique">
                            <br>
                            <span class="trophées">Palmarès</span>
                            <br>
                            <br>
                            <img src="./Images/frise-chronologique-palmares-PSG.png">
                </div>

                <div>
                    <p></p>
                </div>

          
<?php 
        }

// *********************************************** Equipe ********************************************************************************************


    if (isset($_GET['page']) && $_GET['page'] == 'equipe' && empty($_SESSION)){ ?>
            <p class="alert warning">Vous devez être connecté pour pouvoir avoir accès à cette partie du site</p>
        <?php }
    
    if (isset($_GET['page']) && $_GET['page'] == "equipe" && !empty($_SESSION)) {
        echo '<span class="bienvenue">Effectif de l\'équipe première</span>';
    
        echo '<form method="POST">';    
        echo '<select name="joueur">';
        echo '<option value="">-- Sélectionner un joueur --</option>';
    
        $joueurs = $db->readAllJoueur(); 
    
        foreach ($joueurs as $joueur) {
            echo '<option value="' . $joueur['id_joueur'] . '">' . $joueur['prenom_joueur'] . ' ' . $joueur['nom_joueur'] . ' ' . '</option>';
        }
        echo '</select>';
        echo '<input type="submit" name="submitJoueur">';
        echo '</form>';
    
        if (isset($_POST['submitJoueur']) && isset($_POST['joueur']) && !empty($_POST['joueur'])) { // ******submit joueur
            $joueurSelectionne = $_POST['joueur'];
            $result = $db->postJoueur($joueurSelectionne);
    
           
            if (!empty($result)) {
                foreach ($result as $joueurInfo) {
                    echo '<div>';
                    echo 'Nom : ' . $joueurInfo['prenom_joueur'] . ' ' . $joueurInfo['nom_joueur'] .  $joueurInfo['poste'] .'<br>';
                   
                    echo '</div>';
                }
            } else {
                echo 'Aucun joueur trouvé avec l\'ID spécifié.';
            }
        } else {
           
            $result = $db->readAllJoueur();
        
          ?>
        <div class="card-container">
            <?php foreach ($result as $joueurInfo) { ?>

            <div class="card">
                <div class="card-body">
                    <img src="<?php echo isset($joueurInfo['photo_joueur']) ? $joueurInfo['photo_joueur'] : ''; ?>" alt="Photo du joueur" class="player-photo">
                    <h5 class="card-title">
                    <?php echo isset($joueurInfo['prenom_joueur']) && isset($joueurInfo['nom_joueur']) ? $joueurInfo['prenom_joueur'] . ' ' . $joueurInfo['nom_joueur'] : 'Nom du joueur inconnu'; ?>
                    </h5>
                    <p class="card-text">
                        <strong>Age:</strong> <?php echo isset($joueurInfo['age']) ? $joueurInfo['age'] : 'Âge inconnu'; ?><br>
                        <strong>Poste:</strong> <?php echo isset($joueurInfo['poste']) ? $joueurInfo['poste'] : 'Poste inconnu'; ?>
                    </p>
                </div>
            </div>
                
    <?php } ?>
        </div>
                    </div>
            <?php } ?>
        <?php } ?>

            </div>
<?php    
 


// *********************************************** Staff ********************************************************************************************


        if (isset($_GET['page']) && $_GET['page'] == 'staff' && empty($_SESSION)){ ?>
        <p class="alert warning">Vous devez être connecté pour pouvoir avoir accès à cette partie du site</p>
        <?php }

        if (isset($_GET['page']) && $_GET['page'] == "staff" && !empty($_SESSION) ) {
                echo '<span class="title">Staff de l\'équipe première</span>';
    
                echo '<form method="POST">';  
                echo '<select name="staff">';
                echo '<option value="">-- Sélectionner un membre du staff --</option>';

                $staffs = $db->readAllStaff();

        foreach ($staffs as $staff) {
                echo '<option value="' . $staff['id_staff'] . '">' . $staff['prenom_staff'] . ' ' . $staff['nom_staff'] . ' ' . '</option>';
        }
                echo '</select>';
                echo '<input type="submit" name="submitStaff">';
                echo '</form>';

        if (isset($_POST['submitStaff']) && isset($_POST['staff']) && !empty($_POST['staff'])) {
            $joueurSelectionne = $_POST['staff'];
            $resultStaff = $db->postStaff($joueurSelectionne);

        if (!empty($resultStaff)) {
            foreach ($resultStaff as $staffInfo) {
                echo '<div>';
                echo 'Nom : ' . $staffInfo['prenom_staff'] . ' ' . $staffInfo['nom_staff'] .  $staffInfo['nom_role'] .'<br>';
                
                echo '</div>';
            }
        }   else {
                echo 'Aucun staff trouvé.';
        }
            } else {
        
                $resultStaff = $db->readAllStaff();
    
        ?>
                <div class="card-container">
                    <?php foreach ($resultStaff as $staffInfo) { ?>
                        <div class="card">
                            <div class="card-body">
                                <img src="<?php echo $staffInfo['photo_staff']; ?>" alt="Photo du staff" class="player-photo">
                                <h5 class="card-title"><?php echo $staffInfo['prenom_staff'] . ' ' . $staffInfo['nom_staff']; ?></h5>
                                <p class="card-text">
                                <strong>Poste:</strong> <?php echo $staffInfo['nom_role']; ?>
                                </p>


                            </div>
                        </div>
    <?php } ?>
                </div>

        <?php } 
     } 

        
   


// *********************************************** Compo ********************************************************************************************


        if (isset($_GET['page']) && $_GET['page'] == 'compo' && empty($_SESSION)){ ?>
            <p class="alert warning">Vous devez être connecté pour pouvoir avoir accès à cette partie du site</p>
        <?php }

        if (isset($_GET['page']) && $_GET['page'] == "compo" && !empty($_SESSION) ) {?>

            <span class="title">Compo de l'équipe</span>
            <br>
            <br>
            <div class="terrain">
                <img src="./Images/COMPO.jpg" alt="Terrain de football" class="terrain-image">
        
                    <ul class="joueurs-liste">
                        <p class="descriptionRemplacant">remplaçant :</p>
                        <li>1.  KEYLOR NAVAS</li>
                        <li>25. NUNO MENDES</li>
                        <li>3.  PRESNEL KIMPEMBE</li>
                        <li>26. NORDI MUKIELE</li>
                        <li>8.  FABIAN RUIZ</li>
                        <li>15. DANILO PEREIRA</li>
                        <li>11. MARCO ASENSIO</li>
                        <li>19. KANG-IN LEE</li>
                    </ul>
            </div>
            <p class="descriptionReserve">Réserve : Anau Tenas, Colin Dagba, Soler Carlos, Edouard Michut, Ndour Cher, Ilyes Housni, Juan Bernat, Marco Verratti</p>    <?php 
}



// *********************************************** Galerie Photo ********************************************************************************************


        if (isset($_GET['page']) && $_GET['page'] == 'galerie' && empty($_SESSION)){ ?>
            <p class="alert warning">Vous devez être connecté pour pouvoir avoir accès à cette partie du site</p>
        <?php }

        if (isset($_GET['page']) && $_GET['page'] == "galerie" && !empty($_SESSION) ) { ?>

                    <body class="gal">
                            <div class="gallery">
                                <img src="./Images/Parc1.jpg" alt="Image 1">
                                <img src="./Images/télécharger.jpg" alt="Image 2 ">
                                <img src="./Images/Ultras1.jpg" alt="Image 3" >
                                <img src="./Images/OIP.jpg" alt="Image 4">
                                <img src="./Images/psg odschool.jpg" alt="Image 5">
                                <img src="./Images/drapeau.jpg" alt="Image 5">
                                <img src="./Images/echarpes.jpg" alt="Image 5">
                                <img src="./Images/ginola.jpg" alt="Image 5">
                                <img src="./Images/wp3631433.jpg" alt="Image 5" >
                                <img src="./Images/supporter1.jpg" alt="Image 5">

   
                            </div>
                    </body>            
        <?php }




// *********************************************** Settings ********************************************************************************************
           
        if (isset($_GET['page']) && $_GET['page'] == "settings" && empty($_SESSION)) { ?>
        <p class="alert warning">Vous devez être connecté pour pouvoir avoir accès à cette partie du site</p>
        <?php }
        
        if (isset($_GET['page']) && $_GET['page'] == 'settings' && !empty($_SESSION)){ ?>

            <div class="forms-container">
                <div class="form-wrapper">
                    <span class="bienvenue">CRUD joueurs</span>

                    <?php

                    echo '<form method="post">'; 
                    echo   '<input type="text" name="nom_joueur" placeholder="Nom du joueur">';
                    echo   '<br>';
                    echo   '<input type="text" name="prenom_joueur" placeholder="Prénom du joueur">';
                    echo   '<br>';
                    echo   '<input type="date" name="date_de_naissance">';
                    echo   '<br>';
                    echo   '<input type="number" name="age" placeholder="Age">';
                    echo   '<br>';
                    echo   '<input type="text" name="nationalite" placeholder="Nationalité">';
                    echo   '<br>';
                    echo   '<input type="url" name="photo_joueur" placeholder="Photo du joueur">';
                    echo   '<br>';
                    echo   '<br>';
                    echo   '<input type="text" name="poste" placeholder="Poste">';
                    echo   '<br>';
                    echo   '<br>';
                    echo   '<input type="submit" name="submitCreateJoueur" value="Ajouter Joueur">';
                    echo   '<br>';
                    echo   '<br>';
                    echo   '<br>';

                    echo   '<input type="number" name="UpdateIdJoueur" placeholder="Id du joueur">';
                    echo   '<br>';
                    echo   '<input type="text" name="UpdateNom_joueur" placeholder="Nom du joueur">';
                    echo   '<br>';
                    echo   '<input type="text" name="UpdatePrenom_joueur" placeholder="Prénom du joueur">';
                    echo   '<br>';
                    echo   '<input type="date" name="UpdateDate_de_naissance">';
                    echo   '<br>';
                    echo   '<input type="number" name="UpdateAge" placeholder="Age">';
                    echo   '<br>';
                    echo   '<input type="text" name="UpdateNationalite" placeholder="Nationalité">';
                    echo   '<br>';
                    echo   '<input type="url" name="UpdatePhoto_joueur" placeholder="Photo du joueur">';
                    echo   '<br>';
                    echo   '<br>';
                    echo   '<input type="text" name="UpdatePoste" placeholder="Poste">';
                    echo   '<br>';
                    echo   '<br>';
                    echo   '<input type="submit" name="submitUpdateJoueur" value="Update joueur">';
                    echo   '<br>';
                    echo   '<br>';

                    echo   '<input type="number" name="DeleteIdJoueur" placeholder="Id du joueur">';
                    echo   '<br>';
                    echo   '<input type="submit" name="submitDeleteJoueur" value="Supprimer joueur">';
                    echo   '<br>';
                    echo   '<br>';
                    echo '</form>';
                ?>
                </div>
    
                <div class="form-wrapper">
                    <span class="bienvenue">CRUD staff</span>

                    <?php

                    echo '<form method="post" >';
                    echo   '<input type="text" name="nom_staff" placeholder="Nom du staff">';
                    echo   '<br>';
                    echo   '<input type="text" name="prenom_staff" placeholder="Prénom du staff">';
                    echo   '<br>';
                    echo   '<input type="url" name="photo_staff" placeholder="Photo du staff">';
                    echo   '<br>';
                    echo   '<br>';
                    echo   '<input type="text" name="nom_role" placeholder="Rôle">';
                    echo   '<br>';
                    echo   '<br>';
                    echo   '<input type="submit" name="submitCreateStaff" value="Ajouter Membre du staff">';
                    echo   '<br>';
                    echo   '<br>';
                    echo   '<br>';

                    echo '<form method="post" action="">'; 
                    echo '<input type="number" name="UpdateIdStaff" placeholder="Id du staff"><br>';
                    echo '<input type="text" name="UpdateNom_staff" placeholder="Nom du staff"><br>';
                    echo '<input type="text" name="UpdatePrenom_staff" placeholder="Prénom du staff"><br>';
                    echo '<input type="url" name="UpdatePhoto_staff" placeholder="Photo du staff">';
                    echo   '<br>';
                    echo   '<br>';
                    echo '<input type="text" name="UpdatePoste" placeholder="Poste">';
                    echo   '<br>';
                    echo   '<br>';

                    echo '<input type="submit" name="submitUpdateStaff" value="Update Staff"><br><br>';

                    echo '</form>';
                    
                    echo '</form>';

                    echo '<form method="post">';
                    echo '<input type="number" name="DeleteIdStaff" placeholder="Id du staff">';
                    echo '<br>';
                    echo '<input type="submit" name="submitDeleteStaff" value="Supprimer staff">';
                    echo '<br>';
                    echo '<br>';
                    echo '</form>';
                ?>
                </div>
            </div>
<?php
            }
    

            if (isset($_POST["submitCreateJoueur"])) {
                $nomJoueur = $_POST['nom_joueur'];
                $prenomJoueur = $_POST['prenom_joueur'];
                $nationalite = $_POST['nationalite'];
                $dateDeNaissance = $_POST['date_de_naissance'];
                $photoJoueur = $_POST['photo_joueur'];
                $age = $_POST['age'];
                $poste = $_POST['poste'];
            
                
                $db->insertJoueur($nomJoueur, $prenomJoueur, $nationalite, $photoJoueur, $age, $dateDeNaissance, $poste);

            }
        
            
                            
                
            if (isset($_POST["submitUpdateJoueur"])) {

                $UpdateIdJoueur = $_POST['UpdateIdJoueur'];
                $UpdateNom_joueur = $_POST['UpdateNom_joueur'];
                $UpdatePrenom_joueur = $_POST['UpdatePrenom_joueur'];
                $UpdateNationalite = $_POST['UpdateNationalite'];
                $UpdateDate_de_naissance = $_POST['UpdateDate_de_naissance'];
                $UpdatePhoto_joueur = $_POST['UpdatePhoto_joueur'];
                $UpdateAge = $_POST['UpdateAge'];
                $UpdatePoste = $_POST['poste'];
        
                $db->UpdateJoueur($UpdateIdJoueur, $UpdateNom_joueur, $UpdatePrenom_joueur, $UpdateDate_de_naissance, $UpdatePhoto_joueur,  $UpdateAge, $UpdateNationalite, $UpdatePoste) ;   
        
             }    

                    
            if (isset($_POST["submitDeleteJoueur"])) {
                       
                $DeleteIdJoueur = $_POST['DeleteIdJoueur'];
                    
                $db->DeleteJoueur($DeleteIdJoueur);
                    
            }                    
                     
                    
                            

                    // *****************CRUD STAFF**************************
    
            if (isset($_POST["submitCreateStaff"])) {
                $nom_staff = $_POST['nom_staff'];
                $prenom_staff = $_POST['prenom_staff'];
                $photo_staff = $_POST['photo_staff'];
                $nom_role = $_POST['nom_role'];
                
                $db-> insertStaff ($nom_staff,$prenom_staff, $photo_staff, $nom_role);
    
            }
            
    
            if (isset($_POST["submitUpdateStaff"])) {
              
                $UpdateIdStaff = intval($_POST['UpdateIdStaff']);
                $UpdateNomStaff = $_POST['UpdateNom_staff'];
                $UpdatePrenomStaff = $_POST['UpdatePrenom_staff'];
                $UpdatePhotoStaff = $_POST['UpdatePhoto_staff'];
                $UpdateRole = $_POST['nom_role'];
              
                
               
                $db->UpdateStaff($UpdateIdStaff, $UpdateNomStaff, $UpdatePrenomStaff, $UpdatePhotoStaff, $UpdateRole);
               
            }


            if (isset($_POST["submitDeleteStaff"])) {
                $DeleteIdStaff = $_POST['DeleteIdStaff'];
                
                $db->DeleteStaff($DeleteIdStaff);
                
            }            

// *********************************************** Connexion ********************************************************************************************



if (isset($_GET['page']) && $_GET['page'] == "connexion" && empty($_SESSION)) {

    echo '<form class="form" method="POST">';
    echo '<p>Identifiant</p><input type="text" name="identifiant">';
    echo '<p>Mot de passe</p><input type="password" name="password">';
    echo '<br>';
    echo '<br>';
    echo '<input type="submit" name="submit" value="connexion">';
    echo '</form>';

}


if (isset($_POST['submit']) && ($_POST['identifiant'] == 'sekoubambs' && $_POST['password'] === '100385')) {
    $_SESSION = [
        'identifiant' => 'sekoubambs',
        'password' => '100385',
        
    ];
    
    ?>
    <p class="alert-success">Vous êtes maintenant connecté</p>
     <?php

    header("refresh:1;http://localhost/Projet%20PSG/index.php?page=accueil");


    exit;
}



if (isset($_POST['submit']) && ($_POST['identifiant'] != 'sekoubambs' || $_POST['password'] != '100385')) {
    echo '<p class="alert-error">Votre identifiant ou votre mot de passe est incorrect</p>';
}

if (isset($_GET['page']) && $_GET['page'] == "connexion" && !empty($_SESSION)) {
    
    ?>
    <p class="alert-success">Vous êtes connecté</p>
     <?php

            echo '<form method="POST">';
            echo '<br>';
            echo '<input type="submit" name="deconnexion" value="Déconnexion">';
            echo '</form>';


}



// *********************************************** Déconnexion ********************************************************************************************

if (isset($_POST['deconnexion'])) {
    session_destroy();
    header("refresh:1;http://localhost/Projet%20PSG/index.php?page=accueil");
    exit;
}



    ?>
        
    


</section>

</div>


</body>
</html>