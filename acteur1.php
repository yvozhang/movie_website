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
include"top.php";
?>
        
        <form class="chercher" method="GET" action="acteur2.php">
            <div>Annee:
                <input type="text" name="annee">
                <button type="submit">ok</button>
            </div>
        </form>

<?php
include"bottom.php";
?>
