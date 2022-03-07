<!DOCTYPE html>
<html lang="de">
  <head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>DHBW - InstaMMK</title>
  </head>
  <body>


    <?php
        $servername = "localhost";
        $username = "username";
        $password = "password";

        // Create connection
        $conn = new mysqli($servername, $username, $password);

        // Check connection
        if ($conn->connect_error) {
        die("Connection failed: " . $conn->connect_error);
        }
        echo "Connected successfully";
    ?>


        <nav>
            <p>
                <?php
                    $name = $_GET['name'];
                    if($name == "Marcel"){
                        echo $name . "'s Website";
                    }
                    else{
                        echo "Hallo Welt";
                    }
                ?>
            </p>
            <ul>
                <li>
                    <a href="index.php">Home</a>
                </li>
                <li>
                    <a href="profile.php">Profil</a>
                </li>
            </ul>
        </nav>


        <img src="https://upload.wikimedia.org/wikipedia/commons/0/01/DHBW_MA_Logo.jpg" alt="Test" width="200px" />

        <table>
            <tr>
                <td>Name</td>
                <td>Alter</td>
                <td>Note</td>
            </tr>
            <tr>
                <td>Marcel</td>
                <td>21</td>
                <td>1,4</td>
            </tr>
        </table>

  </body>
</html>
