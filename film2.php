<?php
    include'top.php';
        $annee = $_GET['annee'];
        
        echo '<h3 class="hh">Les informations sur les films qui sont nominé en : '.$annee.'</h3>';
        
        $req1 = "SELECT  `nom`,`laureat`,`session`.`session`FROM `meilleur films`, `session` WHERE `meilleur films`.session=`session`.session and `session`.annee ='$annee'";
        
        include 'projetfunction.php';
        
        $data = connexion_requete($req1);
        affichage($data);
    include'bottom.php';
?>