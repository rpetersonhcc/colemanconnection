<?php
	// set up the connection variables
        $db_name  = 'coleman_connection';
        $hostname = 'localhost';
        $username = 'rpeterson';
        $pass = 'jcole';

        try{
        	// connect to the database
        	$dbh = new PDO("mysql:host=$hostname;dbname=$db_name", $username, $pass);
        				
        } catch (PDOException $e){
        	$error_message = $e->getMessage();
        	echo "Could Not Connect to the database";
        	exit();
        }
        

        
?>