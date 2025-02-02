<?php 
    //suetups database for other functionalities
    include "./database/database.php";

    //setups list of articles for rendering
    include "./articleListClass.php";
    $articleList = new ArticleList();
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
    
    <div class="welcome">
        <h1>Vítejte na TravelBlog! Jednička v cestování!</h1>
    </div>
    <div class="index">
        <div class="filter">
            
        </div>
        <div class="display"> 
            <div class="blog-list">
                 <?php 
                    //renders list of articles
                    $articleList->render();
                ?> 
                


            </div>
            
        </div>
    </div>
    <footer>
    &copy 2024 - <?php echo " " . date("Y") . "   " ?>
    <?php echo "Dnes je " . date("d.m.y") ?>
    </footer>
</body>
</html>