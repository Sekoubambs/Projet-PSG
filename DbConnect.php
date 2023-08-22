<?php

include 'Database.php';

class DbConnect extends Database{
    private $dbConnect;    


    public function __construct()
    {
        
        $this->dbConnect = Database::dbConnect();
    }



    public function readAllJoueur (){
        $sqlJoueur = "SELECT joueur.*,joue.*, position.* FROM joueur INNER JOIN joue ON joueur.Id_joueur = joue.Id_joueur INNER JOIN position ON position.Id_position = joue.Id_position;";
        $stmtJoueur = $this->dbConnect->prepare($sqlJoueur);
        $stmtJoueur->execute();
        return $stmtJoueur->fetchAll(PDO::FETCH_ASSOC);

    }

    public function readAllStaff() {
        $sqlStaff = "SELECT * FROM staff";
        $stmtStaff = $this->dbConnect->prepare($sqlStaff);
        $stmtStaff->execute();
        return $stmtStaff->fetchAll(PDO::FETCH_ASSOC);    }
    



    public function insertJoueur($nomJoueur, $prenomJoueur, $nationalite, $photoJoueur, $age, $dateDeNaissance, $poste) {

        $sqlInsertJoueur = "INSERT INTO `joueur`(`nom_joueur`, `prenom_joueur`, `nationalite`, `photo_joueur`, `age`, `date_de_naissance`)
                            VALUES (:nomJoueur, :prenomJoueur, :nationalite, :photoJoueur, :age, :dateDeNaissance)";
        $stmtInsertJoueur = $this->dbConnect->prepare($sqlInsertJoueur);
        $stmtInsertJoueur->bindValue(':nomJoueur', $nomJoueur);
        $stmtInsertJoueur->bindValue(':prenomJoueur', $prenomJoueur);
        $stmtInsertJoueur->bindValue(':nationalite', $nationalite);
        $stmtInsertJoueur->bindValue(':photoJoueur', $photoJoueur);
        $stmtInsertJoueur->bindValue(':age', $age);
        $stmtInsertJoueur->bindValue(':dateDeNaissance', $dateDeNaissance);
        $stmtInsertJoueur->execute();
    
        $lastInsertedId = $this->dbConnect->lastInsertId();
    
        $sqlInsertPosition = "INSERT INTO `position`(`poste`) VALUES (:poste)";
        $stmtInsertPosition = $this->dbConnect->prepare($sqlInsertPosition);
        $stmtInsertPosition->bindValue(':poste', $poste);
        $stmtInsertPosition->execute();
    
    }
    


                        
    public function insertStaff ($nom_staff,$prenom_staff,$photo_staff, $nom_role){        
        $sqlinsertStaff = "INSERT INTO `staff`(`nom_staff`, `prenom_staff`, `photo_staff`) VALUES (:nom_staff, :prenom_staff, :photo_staff)";
        $stmtinsertStaff =$this->dbConnect->prepare($sqlinsertStaff);
        $stmtinsertStaff->bindValue(':nom_staff', $nom_staff);
        $stmtinsertStaff->bindValue(':prenom_staff', $prenom_staff);
        $stmtinsertStaff->bindValue(':photo_staff', $photo_staff);

        $stmtinsertStaff->execute();

        $sqlinsertRole = "INSERT INTO `fonction`(`nom_role`) VALUES (:nom_role)";
        $stmtinsertRole = $this->dbConnect->prepare($sqlinsertRole);
        $stmtinsertRole->bindValue(':nom_role', $nom_role);
    }




    public function UpdateJoueur($UpdateIdJoueur, $UpdateNom_joueur, $UpdatePrenom_joueur, $UpdateDate_de_naissance, $UpdatePhoto_joueur,  $UpdateAge, $UpdateNationalite, $poste) {
        $sqlUpdateJoueur = "UPDATE `joueur` SET nom_joueur = :UpdateNom_joueur, prenom_joueur = :UpdatePrenom_joueur, nationalite = :UpdateNationalite, photo_joueur = :UpdatePhoto_joueur, age = :UpdateAge, date_de_naissance = :UpdateDate_de_naissance
        WHERE Id_joueur = :UpdateIdJoueur";
        
        $stmtUpdateJoueur = $this->dbConnect->prepare($sqlUpdateJoueur);
        $stmtUpdateJoueur->bindValue(':UpdateIdJoueur', $UpdateIdJoueur);
        $stmtUpdateJoueur->bindValue(':UpdateNom_joueur', $UpdateNom_joueur);
        $stmtUpdateJoueur->bindValue(':UpdatePrenom_joueur', $UpdatePrenom_joueur);
        $stmtUpdateJoueur->bindValue(':UpdateNationalite', $UpdateNationalite);
        $stmtUpdateJoueur->bindValue(':UpdatePhoto_joueur', $UpdatePhoto_joueur);
        $stmtUpdateJoueur->bindValue(':UpdateAge', $UpdateAge);
        $stmtUpdateJoueur->bindValue(':UpdateDate_de_naissance', $UpdateDate_de_naissance);

    
        $stmtUpdateJoueur->execute();


        $sqlUpdatePosition = "UPDATE `position` SET poste = :UpdatePoste WHERE Id_position = :UpdatePoste";
        $stmtUpdatePosition = $this->dbConnect->prepare($sqlUpdatePosition);
        $stmtUpdatePosition->bindValue(':UpdatePoste', $sqlUpdatePosition);

        $stmtUpdatePosition->execute();

    }
    


    public function UpdateStaff($UpdateIdStaff, $UpdateNomStaff, $UpdatePrenomStaff, $UpdatePhotoStaff) {
      
        $sqlUpdateStaff = "UPDATE `Staff` SET nom_Staff = :UpdateNomStaff, prenom_Staff = :UpdatePrenomStaff, photo_Staff = :UpdatePhotoStaff WHERE Id_Staff = :UpdateIdStaff";
        $stmtUpdateStaff = $this->dbConnect->prepare($sqlUpdateStaff);
        $stmtUpdateStaff->bindValue(':UpdateIdStaff', $UpdateIdStaff);
        $stmtUpdateStaff->bindValue(':UpdateNomStaff', $UpdateNomStaff);
        $stmtUpdateStaff->bindValue(':UpdatePrenomStaff', $UpdatePrenomStaff);
        $stmtUpdateStaff->bindValue(':UpdatePhotoStaff', $UpdatePhotoStaff);
    
        
        $stmtUpdateStaff->execute();

        $sqlUpdateRole = "UPDATE `fonction` SET nom_role = :UpdateRole WHERE Id_fonction = :UpdateRole";
        $stmtUpdateRole = $this->dbConnect->prepare($sqlUpdateRole);
        $stmtUpdateRole->bindValue(':UpdateRole', $sqlUpdateRole);

        $stmtUpdateRole->execute();
    }    




    public function DeleteJoueur($DeleteIdJoueur) {
        
        $sqlDeleteJoue = "DELETE FROM `joue` WHERE Id_joueur = :DeleteIdJoueur";

        $stmtDeleteJoue = $this->dbConnect->prepare($sqlDeleteJoue);
        $stmtDeleteJoue->bindValue(':DeleteIdJoueur', $DeleteIdJoueur);
        
        $stmtDeleteJoue->execute();
    
       
        $sqlDeleteJoueur = "DELETE FROM `joueur` WHERE Id_joueur = :DeleteIdJoueur";
        
        $stmtDeleteJoueur = $this->dbConnect->prepare($sqlDeleteJoueur);
        $stmtDeleteJoueur->bindValue(':DeleteIdJoueur', $DeleteIdJoueur);
        $stmtDeleteJoueur->execute();
    }           
    
    
    
    public function DeleteStaff($DeleteIdStaff) {

        $sqlDeleteFonction = "DELETE FROM `fonction` WHERE Id_fonction = :DeleteIdFonction";
        $stmtDeleteFonction = $this->dbConnect->prepare($sqlDeleteFonction);
        $stmtDeleteFonction->bindValue(':DeleteIdStaff', $DeleteIdStaff);


        $sqlDeleteStaff = "DELETE FROM `staff` WHERE Id_staff = :DeleteIdStaff";
        
        $stmtDeleteStaff = $this->dbConnect->prepare($sqlDeleteStaff);
        $stmtDeleteStaff->bindValue(':DeleteIdStaff', $DeleteIdStaff); 
        
        $stmtDeleteStaff->execute();
    }




    public function postJoueur($joueurSelectionne) {
        $sqlListeJoueurs = "SELECT joueur.id_joueur, joueur.nom_joueur, joueur.prenom_joueur, joueur.nationalite, joueur.pied_preferentiel, joueur.photo_joueur, joueur.age, joueur.date_de_naissance, statut.id_statut, statut.joueur_statut, position.id_position, position.poste, position.cote_terrain
        FROM `joueur`
        INNER JOIN `statut` ON joueur.id_statut = statut.id_statut
        INNER JOIN `position` ON joueur.id_position = position.id_position
        WHERE joueur.id_joueur = :joueurSelectionne";
    
    
        $stmtListeJoueurs = $this->dbConnect->prepare($sqlListeJoueurs);
        $stmtListeJoueurs->bindParam(':joueurSelectionne', $joueurSelectionne, PDO::PARAM_INT);
        $stmtListeJoueurs->execute();
                
        return $stmtListeJoueurs->fetchAll(PDO::FETCH_ASSOC);
    }



        
    public function postStaff($staffSelectionne) {
        $sqlListestaffs = "SELECT staff.nom_staff, staff.prenom_staff, staff.nationalite_staff, staff.photo_staff, fonction.nom_role
        FROM staff 
        INNER JOIN fonction ON staff.id_staff = fonction.id_fonction";
    
    
        $stmtListeStaffs = $this->dbConnect->prepare($sqlListestaffs);
        $stmtListeStaffs->bindParam(':staffSelectionne', $staffSelectionne, PDO::PARAM_INT);
        $stmtListeStaffs->execute();
                
        return $stmtListeStaffs->fetchAll(PDO::FETCH_ASSOC);
    }

}
    