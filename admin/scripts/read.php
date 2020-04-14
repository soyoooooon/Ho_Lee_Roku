<?php
function getAll($tbl){
    $pdo = Database::getInstance()->getConnection();

    $queryAll = 'SELECT * FROM '.$tbl;
    $results = $pdo->query($queryAll);
    

    if($results) {
        return $results->fetchAll(PDO::FETCH_ASSOC);
    } else {
        return 'There was a problem accessing this info';
    }
};

function getMoviesByFilter($args) {
    $pdo = Database::getInstance()->getConnection();

    $queryAll = 'SELECT * FROM '. $args['tbl'].' AS t,';
    $queryAll .= ' '. $args['tbl2'].' AS t2,';
    $queryAll .= ' '. $args['tbl3'].' AS t3';
    $queryAll .= ' WHERE t.'. $args['col1'].' = t3.'.$args['col1'];
    $queryAll .= ' AND t2.'. $args['col2'].' = t3.'.$args['col2'];
    $queryAll .= ' AND t2.'. $args['col3'].' = "'.$args['filter'].'"';



    $results = $pdo->query($queryAll);

    if($results) {
        return $results;
    } else {
        return 'There was a problem accessing this info';
    }
}; 
