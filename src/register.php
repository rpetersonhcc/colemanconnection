<?php
	

        try{

        	// retrive user data and set variables
        	$data = json_decode(file_get_contents("php://input"));
        	$stuID = mysql_real_escape_string($data->stuID);
        	$firstname = mysql_real_escape_string($data->firstname);
        	$lastname = mysql_real_escape_string($data->lastname);
        	$email = mysql_real_escape_string($data->email);
        	$password = password_hash($data->password, PASSWORD_BCRYPT);
        	$active = '1';
        	$sessionID = 'null';

        	// connect to the database
        	include('db.php');

        	//get count of email address that match
        	$email_count = '
        	SELECT count(*) as nbr from students where email = "'.$email.'"';

        	$stmt_count = $dbh->prepare( $email_count );
        	$stmt_count->execute();
        	$result_count = $stmt_count->fetchAll( PDO::FETCH_ASSOC );

        	//get count of student ID's that match
        	$id_count = '
        	SELECT count(*) as stu from students where stuID = "'.$stuID.'"';

        	$stmt_count_id = $dbh->prepare( $id_count );
        	$stmt_count_id->execute();
        	$result_count_id = $stmt_count_id->fetchAll( PDO::FETCH_ASSOC );
        	
        	if($result_count[0]['nbr'] == 0){

        		if($result_count_id[0]['stu'] == 0){

        			// a query get all the records from the users table
			        $sql = '	        
			        INSERT INTO students (stuID, firstname, lastname, email, password, active, sessionID) 
			        VALUES ("'.$stuID.'","'.$firstname.'","'.$lastname.'","'.$email.'","'.$password.'", "1" , NULL)';

			        // use prepared statements, even if not strictly required is good practice
			        $stmt = $dbh->prepare( $sql );

			        // execute the query
			        $stmt->execute();

			        if(!$stmt){
                                        $array = array('messages' => "", 'error' => "Error registering new student.");
                                        $json = json_encode($array);
                                        echo $json;

			        	
			        }	else {			        	
			        	$array = array('messages' => "Student registered successfully", 'error' => '');
                                        $json = json_encode($array);
                                        echo $json; 

			        }	        
        		}	
        			else{
	        		$array = array('messages' => "", 'error' => 'Sorry, that Student ID is already registered.');
	        		$json = json_encode($array);
	        		echo $json;      
		       	}
		       	
		    }	else{
        		$array = array('messages' => "", 'error' => 'Sorry, that email address is already registered.');
        		$json = json_encode($array);
        		echo $json;

        	}	        	

        } catch (PDOException $e){
        	$error_message = $e->getMessage();
        	echo "this is displayed because an error was found";
        	exit();
        }
        

        
?>