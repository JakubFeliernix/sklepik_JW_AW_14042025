<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="style.css">
    <title>Sklep z rowerami</title>
</head>
<body>
    <header><h2>BANER</h2></header>
    <main>
        <aside>
            <form method="post">
            <select onchange="this.form.submit()" name="wybor" id="wybor">
                <option value="0">Wybierz</option>
                <option value="1">Rowery górskie</option>
                <option value="2">Rowery sportowe</option>
                <option value="3">Rowery typu BMX</option>
            </select>
            </form>
        </aside>
        <div class="content">
            <?php
            $baza = new mysqli("localhost","root","","moj_sklepik",3306);
            if(isset($_POST["wybor"])){
                $wybor = $_POST["wybor"];
                if($wybor == 1){
                    $rowery_gorskie = $baza->query("SELECT opis, img FROM rowery_gorskie");
                    while(list($opis, $img)=mysqli_fetch_row($rowery_gorskie)){
                        echo("<div><img src='$img'>");
                        echo("<p>$opis</p></div>");
                     
                    }
                }
                if($wybor == 2){
                    $rowery_sportowe = $baza->query("SELECT opis FROM rowery_sportowe");
                    $wybor = $_POST["wybor"];
                    if($wybor == 2){
                        $rowery_sportowe = $baza->query("SELECT opis, img FROM rowery_sportowe");
                        while(list($opis, $img)=mysqli_fetch_row($rowery_sportowe)){
                            echo("<div><img src='$img'>");
                            echo("<p>$opis</p></div>");
                         
                        }
                    }
                }
                if($wybor == 3){
                    $rowery_typu_BMX = $baza->query("SELECT opis FROM rowery_typu_BMX");
                    $wybor = $_POST["wybor"];
                    if($wybor == 3){
                        $rowery_typu_BMX = $baza->query("SELECT opis, img FROM rowery_typu_BMX");
                        while(list($opis, $img)=mysqli_fetch_row($rowery_typu_BMX)){
                            echo("<div><img src='$img'>");
                            echo("<p>$opis</p></div>");
                         
                        }
                    }
                }
            }
            ?>
        </div>
    </main>
    <footer><h2>COPYRIGHT BY DK</h2></footer>
</body>
</html>
<?php
$baza->close();
?>