<?php
    require_once '../load.php';
    

    if (isset($_GET['media'])) {
        $tbl = "tbl_" . trim($_GET["media"]);

    }


    if (isset($_GET['filter'])) {
        $args = array(
            'tbl' => 'tbl_media',
            'tbl2' => 'tbl_era',
            'tbl3' => 'tbl_era_media',
            'col1' => 'media_id',
            'col2' => 'era_id',
            'col3' => 'year',
            'filter' => $_GET['filter'],
    
        );
        $results = getMoviesByFilter($args);
        echo json_encode($results->fetchAll(PDO::FETCH_ASSOC));

    }
    elseif(isset($_GET['filtertype'])) {

        $args = array(
        
        'tbl' => 'tbl_media',
        'tbl2' => 'tbl_type',
        'tbl3' => 'tbl_media_type',
        'col1' => 'media_id',
        'col2' => 'type_id',
        'col3' => 'name',
        'filter' => $_GET['filtertype'],
        );

        $results = getMoviesByFilter($args);

        echo json_encode($results->fetchAll(PDO::FETCH_ASSOC));
    
    }
    
    else {

        $results = getAll($tbl);
        echo json_encode($results);
    }





    

?>

