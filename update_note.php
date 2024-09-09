<?php
if (isset($_POST['id']) && isset($_POST['tresc'])) {
    $id = (int)$_POST['id'];
    $tresc = $_POST['tresc'];

    // Połączenie z bazą danych
    $mysqli = new mysqli('localhost', 'root', '', 'notatki_db');
    if ($mysqli->connect_error) {
        die('Błąd połączenia z bazą danych: ' . $mysqli->connect_error);
    }

    // Aktualizacja notatki
    $stmt = $mysqli->prepare("UPDATE notatki SET tresc = ? WHERE id = ?");
    $stmt->bind_param('si', $tresc, $id);
    $stmt->execute();

    if ($stmt->affected_rows > 0) {
        echo 'Notatka zaktualizowana';
    } else {
        echo 'Błąd aktualizacji notatki';
    }

    $stmt->close();
    $mysqli->close();
}
?>
