<?php 
    include "./database/database.php";
    include "articleClass.php";
    $article = new Article($_GET["id"]);
?>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>TravelBlog</title>
    <link rel="stylesheet" href="style.css">
    <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
</head>
<body>
    <div class="top-bar"><header>TravelBlog</header> <nav><a href="index.php">Mainpage</a></nav></div>
    <div class="display"> <!-- Použijte celou section jako vzor na výpis z php. Pokuď nebude obrazek, nevadí, v css je nastavený že když neni tak bude pozadí černé -->
        <?php $article->render()?>
    </div>
    <footer>
    &copy 2024 - <?php echo " " . date("Y") . "   " ?>
    <?php echo "Dnes je " . date("d.m.y") ?>
    </footer>
</body>
</html>