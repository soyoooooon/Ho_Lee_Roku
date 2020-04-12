<?php
    require_once 'load.php';

    $media_table = 'tbl_media';
    $getMedia = getAll($media_table);
?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">

    <link rel="stylesheet" href="css/reset.css">
    <link rel="stylesheet" href="css/dashboard.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.13.0/css/all.min.css">
    <title>Roku Flashback</title>
</head>
<body>
    <header>
        <div id="logo">
            <img src="images/logo_black.svg" alt="">
        </div>

        <div id="menu">
            <img src="images/menu.svg" alt="">
        </div>
    </header>

    <main>
        <section id="welcome">
            <h2>Welcome user!<br>What would you like to watch today?</h2>

            <div id="filter">
                <button></button>
                <input type="text" id="browse">
                <i class="fas fa-search"></i>

                <select name="genre" id="genre">
                    <option value="">Genre</option>
                    <option value="">Family</option>
                    <option value="">Family</option>
                    <option value="">Family</option>
                </select>
                
                <select name="era" id="era">
                    <option value="">Era</option>
                    <option value="">1960</option>
                    <option value="">1970</option>
                </select>
            </div>
        </section>

        <section id="results">
            <?php while($row = $getMedia->fetch(PDO::FETCH_ASSOC)):?>
            <div class="media">
                <img src="images/<?php echo $row['media_image']; ?>" alt="">
                <p><?php echo $row['media_name']; ?></p>
            </div>
            <?php endwhile;?>
        </section>
    </main>


    
</body>
</html>