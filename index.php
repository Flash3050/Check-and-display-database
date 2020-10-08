<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <link rel="stylesheet" href="style.css">
</head>
<body>

<?php 
    $t1 = array();
    if(isset($_POST['login']) && isset($_POST['haslo'])){

        $login = $_POST['login'];
        $pass = $_POST['haslo'];

        if($login=="root" && $pass=="duzapita"){

            $sql_adres = "localhost";
            $sql_login = "root";
            $sql_pass = "";
            $sql_tabela = "3c";


            $connect = mysqli_connect($sql_adres, $sql_login, $sql_pass, $sql_tabela);

            $zapytanie = ("SELECT * FROM jeden");

            $query = mysqli_query($connect, $zapytanie);

            while($r=mysqli_fetch_array($query)){
                $id = $r['id'];
                $t1[$id]['imie'] = $r[1];
                $t1[$id]['nazwisko'] = $r[2];
                $t1[$id]['tel'] = $r[3];
echo<<<END
        
                <table style="border: 1px black solid;">
                    <tr>
                        <td>ID</td> <td>IMIE</td> <td>NAZWISKO</td> <td>NR TELEFONU</td>
                    </tr>

                    <tr>
                        <td>$r[0]</td> <td>$r[1]</td> <td>$r[2]</td> <td>$r[3]</td>
                    </tr>
                </table>
        
END;

            }

            echo "<br />";
            echo "<br />";

            $zapytanie_dwa = ("SELECT * FROM dwa");
            $query = mysqli_query($connect, $zapytanie_dwa);

            while($b=mysqli_fetch_array($query)){
                $id = $b['id'];
                $t1[$id]['imie2'] = $b[1];
                $t1[$id]['nazwisko2'] = $b[2];
                $t1[$id]['iq'] = $b[3];
echo<<<END
                        
                                <table style="border: 1px black solid;">
                                    <tr>
                                        <td>ID</td> <td>IMIE</td> <td>NAZWISKO</td> <td>IQ</td>
                                    </tr>
                
                                    <tr>
                                        <td>$b[0]</td> <td>$b[1]</td> <td>$b[2]</td> <td>$b[3]</td>
                                    </tr>
                                </table>
                        
END;
        }
        foreach($t1 as $k){
            $imie=$k['imie'];
            $nazwisko=$k['nazwisko'];
            $tel=$k['tel'];
            $imie2=$k['imie2'];
            $nazwisko2=$k['nazwisko2'];
            $iq=$k['iq'];

            echo "<br />";
            echo "<br />";
echo<<<END
        <div id="suma"
            $imie." - ".$nazwisko." - ".$tel." - ".$imie2." - ".$nazwisko2." - ".$iq."<br/>";
        </div>
END;
            echo $k['imie']." - ".$k['nazwisko']." - ".$k['tel']." - ".$k['imie2']." - ".$k['nazwisko2']." - ".$k['iq']."<br/>";
        }
    }
        else{
        echo "Hasło nieprawidłowe!"."<br />."."<a href='index.php'>Powrót do strony głównej</a>";
        }
    }
    ?>

    <div id="con">
        <div id="formularz">
            <form action="index.php" method="post">
                <input type="text" name="login" id="" placeholder="Wpisz login:">
                <input type="password" name="haslo" id="" placeholder="Wpisz haslo:">
                <input type="submit" value="WYKONAJ">
            </form>
        </div>
    </div>
</body>
</html>