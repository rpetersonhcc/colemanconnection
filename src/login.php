<?php      
        include('db.php');

        //get data from login 
        $data=json_decode(file_get_contents('php://input'));
        $email = mysql_real_escape_string($data->email);
        $password = mysql_real_escape_string($data->password);

        //get password from database
        $p_qry = '
        SELECT password 
        FROM students 
        UNION 
        SELECT password 
        FROM users 
        WHERE email = "'.$email.'"';
        

        $stmt_pass = $dbh->prepare( $p_qry );
        $stmt_pass->execute();
        $pass_result = $stmt_pass->fetchAll( PDO::FETCH_ASSOC );



        if(in_array('SBT01OGC0WH', $pass_result)){
                echo 'S';
        } else{
                echo 'N';
        }
        
        
?>