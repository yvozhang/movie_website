<?php
include"top.php";
?>
        <form id="compte" method="POST" action="creer2.php">
            <div class="compte">
            <h2>Creer un compte</h2>
                Nom du compte &nbsp&nbsp
                <input type="text" name="name" placeholder="Entrer" style="border-radius: 6px"/>
                
                <p>Adresse e-mail &nbsp&nbsp&nbsp&nbsp
                <input type="text" name="email" placeholder="Entrer" style="border-radius: 6px"/>
                </p>
                <p>Mot de passe &nbsp&nbsp&nbsp&nbsp&nbsp&nbsp
                <input type="password" name="password"placeholder="Entrer" style="border-radius: 6px"/>
                </p>
                <p>Date de naissance
                <input type="date" name="birthday" style="border-radius: 6px">
                </p>
  
        </br>      
            <input type="submit" name="submit" value="inscription" class="inscription"/></br></br>
    </div>
    </form>
<?php
include"bottom.php";
?>