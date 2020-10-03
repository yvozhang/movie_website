<?php 
    header("Content-Type: text/html; charset=utf8");

    if(!isset($_POST['submit'])){
        exit("erreur");
    }//判断是否有submit操作

    $name=$_POST['name'];//post获取表单里的name
    $password=$_POST['password'];//post获取表单里的password
    $email=$_POST['email'];
    $birthday=$_POST['birthday'];

    include('projetfunction.php');//链接数据库
    $q="INSERT INTO `utilisateur`(`id`, `nom`, `email`, `password`, `date`) VALUES (null,'$name','$email','$password','$birthday')";//向数据库插入表单传来的值的sql

    $reslut=connexion_requete($q);//执行sql
    
    if (!$reslut){
        die('Error: ' . mysql_error());//如果sql执行失败输出错误
    }else{
        header("refresh:2;url=old acceuil.php");//如果成功跳转至old acceuil.php页面
    }

?>



