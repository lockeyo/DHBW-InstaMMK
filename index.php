<!DOCTYPE html>
<html lang="de">
  <head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>DHBW - InstaMMK</title>
  </head>
  <body>
        <nav>
            <p>
                <?php
                    $name = $_GET['name'];
                    echo "Halo " . $name;
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
