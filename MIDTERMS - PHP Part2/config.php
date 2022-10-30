<?php

	$db_registration = "root";
	$db_pass		 = "";
	$db_name		 = "tastybudscuisine";
	
	$db = new PDO('mysql:host=localhost;dbname=' , $db_name ,  ";charset=utf8", $db_registration, $db_pass);
	$db->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
?>