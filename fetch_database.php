<?php
if (isset($_GET['table'])) {
    $server_name = "localhost";
    $username = "root";
    $password = "";
    $database_name = "demodb";
    $table = $_GET['table'];

    $conn = new mysqli($server_name, $username, $password, $database_name);

    if ($conn->connect_error) {
        die("Connection failed: " . $conn->connect_error);
    }

    $sql = "SELECT * FROM $table";
    $result = $conn->query($sql);

    if ($result->num_rows > 0) {
        echo '<table border="1">';
        echo '<tr><th>Event Date</th><th>Source IP</th></tr>';
        while ($row = $result->fetch_assoc()) {
            echo '<tr>';
            echo '<td>' . htmlspecialchars($row['event_date']) . '</td>';
            echo '<td>' . htmlspecialchars($row['source_ip']) . '</td>';
            echo '</tr>';
        }
        echo '</table>';

        // Add the Upload File button
        echo '<br>';
        echo '<button onclick="redirectToUploadPage()">Upload File</button>';
    } else {
        echo 'No data found.';
    }

    $conn->close();
}
?>