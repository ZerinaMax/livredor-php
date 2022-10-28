<?php 
require './classes/database_handler.class.php';
require  './classes/message.class.php';

$database = new DatabaseHandler();
$comment = new Message($database->connectToDatabase());

?>
<!DOCTYPE html>
<html lang="fr">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="style.css">
    <title>Livre d'Or</title>
</head>

    <body>
        <div class="container"> 
            <h1>Livre d'Or</h1>
            <form method="POST">
                <fieldset class="form-group">
                    <legend>E-mail</legend>
                    <input type="email" name="txt_email" >
                </fieldset>
                <fieldset class="form-group">
                    <legend>Votre message</legend>
                    <textarea name="txt_message" cols="30" rows="10"></textarea>
                </fieldset>
                <button value="submit" name='sub' class="btn">Envoyer</button>
            </form>
        </div>

        <div class="table">
            <table>
                <tr>
                    <th>E-mail</th>
                    <th>Commentaire</th>
                    <th>Date/Heure</th>
                </tr>
                <?php
                $messages=$comment->readMessage();
                foreach($messages as $object) {
                echo "
                <tr>
                    <td style='font-style:italic;font-weight:bold;'>" .$object["txt_email"] . 
                    "<td style='font-weight:800'>" .$object["txt_message"]."</td>" . 
                    "<td>" .$object["date"]."</td>
                </tr>";}
                ?>
            </table>
        </div>
    <?php

    if (isset($_POST['sub']) && isset($_POST['txt_email']) && isset($_POST['txt_message'])){
            $email = htmlspecialchars(strip_tags($_POST['txt_email']));
            $message = htmlspecialchars(strip_tags($_POST['txt_message']));
            if (!empty($email) && !empty($message)) {
                $comment->createMessage($email, $message);
                header('Location: http://127.0.0.1/guestbook-php/');
        };
    }
    ?>
    </body>
</html>