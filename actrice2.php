<?php
    include'top.php';
        $annee = $_GET['annee'];
        
        echo '<h3 class="hh">Les informations sur les actrices qui sont nominé en : '.$annee.'</h3>';
        
        $req1 = "SELECT `nom`,`prenom`,`date de naissance`,`nationalite`,`laureat`,`session`.`session`,`image` FROM `actrice`, `session` WHERE `actrice`.session=`session`.session and `session`.annee ='$annee'";
        
        include 'projetfunction.php';
        
        $data = connexion_requete($req1);
        affichage($data);
    include'bottom.php';
?>