<?php
//  防止全局变量造成安全隐患
$admin = false;
//  启动会话，这步必不可少
session_start();
//  判断是否登陆
if (isset($_SESSION["admin"]) && $_SESSION["admin"] === true) {
    echo "Bienvenue!";
    ?><form action="exit.php">
	<input type="submit" name="exit" value="Exit" class="exit"/></br></br>
    </form>
    <?php
}
    include'top.php';
        $annee = $_GET['annee'];
        
        echo '<h3 class="hh">Les informations sur les acteurs qui sont nominé en : '.$annee.'</h3>';
        
        $req1 = "SELECT `nom`,`prenom`,`date de naissance`,`nationalite`,`laureat`,`session`.`session`,`image` FROM `acteur`, `session` WHERE `acteur`.session=`session`.session and `session`.annee ='$annee'";
        
        include 'projetfunction.php';
        
        $data = connexion_requete($req1);
        affichage($data);
    include'bottom.php';
?>