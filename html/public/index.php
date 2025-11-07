<!DOCTYPE html>
<html lang="pt-br">
<head>
    <title>Container Docker Nginx, MySQL e PHP</title>
    <meta content="utf8" />
</head>
<body>
    <?php
        echo "Olá Mundo!";
        echo "<br/>";
        echo "Eu estou rodando a partir de um container com nginx, php e mysql.";
        echo "<br/>";
        echo "coloque os arquivos dentro da pasta /html/public";
    ?>
    
    <div style="display: flex; align-items: center; flex-direction: column">
        <?php
            include "../db/db.php";
            // testandoo xdebug
            // testando conexão com o banco de dados
        
            echo "<h2>Testando conexão com o MySQL</h2>";
        
            while ($user = $users->fetch(PDO::FETCH_ASSOC)) {
                var_dump($user);
            }
        ?>
    </div>

</body>
</html>
