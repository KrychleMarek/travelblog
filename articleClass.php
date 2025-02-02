<?php 
    class Article
    {
        public $title;
        public $authorName;
        public $destination;
        public $datePublic;
        public $content;

        function __construct($id)
        {
            $db =$GLOBALS["database"]->getDatabase();
            
            $query = $db->query("select Title, Content, DatePublic, UserName,  destination.Name as destination from articles inner join users on articles.Author=users.idUsers inner join destination on articles.destination = destination.idDestination where idArticles = ".$id);
            $data = $query->fetch();

            $this->title = $data["Title"];
            $this->authorName = $data["UserName"];
            $this->destination = $data["destination"];
            $this->datePublic = $data["DatePublic"];
            $this->content = $data["Content"];
        }

        function getTitle()
        {
            return $this->title;
        }

        function getAuthor()
        {
            return $this->authorName;
        }

        function getDestination()
        {
            return $this->destination;
        }

        function getDate()
        {
            $convDate = date("d.m.Y", strtotime($this->datePublic));
            return $convDate;
        }

        function render()
        {
            try
            {
                echo 
            "
            <section>  
                <div class='img-title' style='background-image:url(./images/stockMountians.jpg);'>
                    <div class='title'>
                            <h1 class='blog-h1'>".$this->getTitle()."</h1>
                                <div class='tags'>
                                    <span>".$this->getDestination()."</span>
                                    <span>".$this->getAuthor()."</span>
                                    <span>".$this->getDate()."</span>
                                </div>
                    </div>
                </div>
                <div class='content'>".
                            $this->content
                ."</div>

            </section>
            ";
            
            }catch(Exception $e)
            {
                echo "Vyskytla se chyba. Kontaktujte administrátora.";
            }
        }

        
    }
?>