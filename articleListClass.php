<?php
//this file contains class for rendering list of articles


class ArticleList{

    private $articles =[];

    //constructor of List of articles, loads data from database
    public function __construct() {
        //gets database object
        $db =$GLOBALS["database"]->getDatabase();

        //fetchs articles from database
        $query = $db->query("
        select idArticles as id, Title,  DatePublic, articles.ProfileImg as img, UserName,  destination.Name as destination from articles 
        inner join users on articles.Author=users.idUsers 
        inner join destination on articles.destination = destination.idDestination ");
        $this->articles = $query->fetchAll(PDO::FETCH_ASSOC);
        
    }

    //function for rendering list of articles
    public function render(){
        
        //loops over all fetched articles and renders them
        for($i = 0; $i< count($this->articles); $i++){
            $article = $this->articles[$i];

            //gets propterties of article
            $id = $article["id"];
            $title = $article["Title"];
            $date = date("d.m.Y", strtotime($article["DatePublic"]));
            $img = $article["img"];
            $user = $article["UserName"];
            $destination = $article["destination"];

            //renders article
            echo <<<eof
                <div class="blog-post">
                    <img src="$img" alt="blog-img" onclick="window.location='./article.php?id=$id';">
                    <div>
                        <h2 onclick="window.location='./article.php?id=$id';">$title</h2>
                        
                        <div class="post-tags">
                        <h3>$user</h3>
                        <h3>$destination</h3>
                        <h3>$date</h3>
                        </div>
                    </div>
                </div>
            eof;

        }
    }


}









?>