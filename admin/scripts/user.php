<?php
function getAllUsers(){
    $pdo = Database::getInstance()->getConnection();

    $get_user_query = 'SELECT * FROM tbl_user';
    $get_user_set = $pdo->prepare($get_user_query);
    $get_user_result = $get_user_set->execute();

    $users = array();

    if ($get_user_result) {
        while($user = $get_user_set->fetch(PDO::FETCH_ASSOC)){
            $currentuser = array();

            $currentuser['id'] = $user['user_id'];
            $currentuser['username'] = $user['user_name'];
            $currentuser['admin'] = $user['user_admin'];
            $currentuser['access'] = $user['user_permissions'];
            $currentuser['avatar'] = $user['user_avatar'];

            $users[] = $currentuser;
        }

         return json_encode($users);

    }else{
        return "There was an issue getting back users";
    }
   
}



