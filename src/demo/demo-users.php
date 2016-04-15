<?php
	

        try{
        	// connect to the database
        	include('../db.php');
			
			// a query get all the records from the users table
	        $sql = '
	        SELECT firstname, lastname 
	        FROM users	        
	        WHERE active = 1
	        ';

	        // use prepared statements, even if not strictly required is good practice
	        $stmt = $dbh->prepare( $sql );

	        // execute the query
	        $stmt->execute();

	        // fetch the results into an array
	        $result = $stmt->fetchAll( PDO::FETCH_ASSOC );

	        // convert to json
	        $json = json_encode( $result );

	        // echo the json string
	        echo $json;

        } catch (PDOException $e){
        	$error_message = $e->getMessage();
        	echo "this is displayed because an error was found";
        	exit();
        }
        

        
?>