<?php  
    
    // Get ID from the browser parameters
    $resultTotal = 16;
    if($_GET['id'] > 0){
        $imageId = $_GET['id'];
    }
    else{
        $imageId = 1;
    }

    // ### MySQL Connection
    // ### 
    $servername = "localhost";
    $username = "mmk21";
    $password = "bjLHrcXGi74qL5nb73Th";
    // $username = "root";
    // $password = "root";

    // Create connection
    $conn = new mysqli($servername, $username, $password);
    
    // Check connection
    if ($conn->connect_error) {
        die("Connection failed: " . $conn->connect_error);
    }
    
    // $conn->select_db("mmk21");
    $conn->select_db("InstaMMK");

    $sql = "SELECT * FROM posts WHERE id = " . $imageId . " LIMIT 1";
    $result = $conn->query($sql);
    // $sql2 = "SELECT * FROM users WHERE id = " . $result[0]->id;
    // $result2 = $conn->query($sql2);

?>


<!DOCTYPE html>
<html lang="de">
    <head>
        <meta charset="utf-8">
        <title>InstaMMk</title>

        <link rel="stylesheet" href="css/font-awesome.min.css">
        <link rel="stylesheet" href="css/stylesheet.css">
    </head>
    <body>

    <!-- Header -->
    <header id="topHeader">
       <h1>MMK21-Insta</h1>
    </header>    

    <!-- Main -->
    <main>

        <?php
        while($row = $result->fetch_assoc()) {
        ?>

        <div id="timeline">
            <div id="prevImage">
                <?php 
                if($imageId > 1){
                ?>
                <a href="<?php echo "index.php?id=" . ($imageId-1) ?>">
                    <i class="fa fa-angle-left" aria-hidden="true"></i>
                </a>

                <?php
                }
                ?>
            </div>
            <article id="timelineContent">
                <p class="usernamen">@
                    <?php echo $row['userId'] ?>
                </p>
                <img src="images/<?php echo $row['image'] ?>" alt="image">
                <p class="text"><?php echo $row['description'] ?></p>
                <p class="heart">
                    <a onclick="alert('Diese Funktion ist nicht aktiv')">
                        <i class="fa fa-heart-o" aria-hidden="true"></i>
                    </a>
                </p>
                <div style="clear: both;"></div>
                <time datetime="<?php echo $row['date'] ?> 18:00"><?php echo $row['date'] ?></time>
            </article>
            <div id="nextImage">
                <?php 
                if ($resultTotal > $imageId){
                ?>
                <a href="<?php echo "index.php?id=" . ($imageId+1) ?>">
                    <i class="fa fa-angle-right" aria-hidden="true"></i>
                </a>
                <?php 
                }
                ?>
            </div>
        </div>

        <?php
        }
        ?>
    </main>

    <!-- Footer -->
    <footer>
        <div id="navigationWrapper">
            <div id="navigation">
                <ul>
                    <li>
                        <a onclick="alert('Diese Funktion ist nicht aktiv')">
                            <i class="fa fa-plus" aria-hidden="true"></i>
                        </a>
                    </li>
                    <li>
                        <a onclick="alert('Diese Funktion ist nicht aktiv')">
                            <i class="fa fa-search" aria-hidden="true"></i>
                        </a>
                    </li>
                    <li class="active">
                        <a onclick="alert('Diese Funktion ist nicht aktiv')">
                            <i class="fa fa-home" aria-hidden="true"></i>
                        </a>
                    </li>
                    <li>
                        <a onclick="alert('Diese Funktion ist nicht aktiv')">
                            <i class="fa fa-envelope" aria-hidden="true"></i>
                        </a>
                    </li>
                    <li>
                        <a onclick="alert('Diese Funktion ist nicht aktiv')">
                            <i class="fa fa-user" aria-hidden="true"></i>
                        </a>
                    </li>
                </ul>
            </div>
        </div>
        
    </footer>

    </body>
</html>