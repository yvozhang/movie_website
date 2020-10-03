<?php
session_start();
//  这种方法是将原来注册的某个变量销毁
unset($_SESSION['admin']);
//  这种方法是销毁整个 Session 文件
session_destroy();
header("refresh:2;url=old acceuil.php");//如果成功跳转至welcome.html页面

?>