<?php
// Połączenie z bazą danych
$mysqli = new mysqli('localhost', 'root', '', 'notatki_db');
if ($mysqli->connect_error) {
    die('Błąd połączenia z bazą danych: ' . $mysqli->connect_error);
}

// Pobranie notatek z bazy
$result = $mysqli->query("SELECT * FROM notatki");

// Wyświetlenie notatek w odpowiednim formacie dla Accordion
while ($row = $result->fetch_assoc()) {
    echo '<h3>Notatka ' . $row['id'] . '</h3>';
    echo '<div data-id="' . $row['id'] . '">';
    echo '<textarea>' . htmlspecialchars($row['tresc']) . '</textarea>';
    echo '</div>';
}

$mysqli->close();
?>
