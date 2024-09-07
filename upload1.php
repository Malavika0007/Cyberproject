<?php
if ($_SERVER['REQUEST_METHOD'] == 'POST' && isset($_FILES['file'])) {
    $server_name = "localhost";
    $username = "root";
    $password = "";
    $database_name = "demodb";

    $conn = new mysqli($server_name, $username, $password, $database_name);

    if ($conn->connect_error) {
        die("Connection failed: " . $conn->connect_error);
    }

    $file = $_FILES['file']['tmp_name'];
    $table = $_POST['table'];
    $archive_table = $table . '_archive';

    // Read the uploaded CSV file
    $uploaded_content = array_map('str_getcsv', file($file, FILE_IGNORE_NEW_LINES | FILE_SKIP_EMPTY_LINES));

    // Process each line of the CSV
    foreach ($uploaded_content as $line) {
        $date = date('Y-m-d'); // Default to current date
        $src_ip_or_host = isset($line[0]) ? $conn->real_escape_string(trim($line[0])) : '';

        // Check if the record already exists
        $check_sql = "SELECT COUNT(*) AS count FROM $table 
                      WHERE event_date = '$date' AND source_ip = '$src_ip_or_host'";
        $check_result = $conn->query($check_sql);
        $count = $check_result->fetch_assoc()['count'];

        if ($count == 0) {
            $sql = "INSERT INTO $table (event_date, source_ip) 
                    VALUES ('$date', '$src_ip_or_host')";

            if (!$conn->query($sql)) {
                echo "Error: " . $sql . "<br>" . $conn->error;
            }
        }
    }

    // Display updated contents of the database table
    echo "<h2>Contents of $table</h2>";
    echo "<table border='1' align='center'>";
    echo "<tr>
            <th>Date</th>
            <th>Source IP/Host</th>
          </tr>";

    $sql = "SELECT event_date, source_ip FROM $table ORDER BY event_date DESC";
    $result = $conn->query($sql);

    if ($result->num_rows > 0) {
        while ($row = $result->fetch_assoc()) {
            echo "<tr>
                    <td>" . $row['event_date'] . "</td>
                    <td>" . $row['source_ip'] . "</td>
                  </tr>";
        }
    } else {
        echo "<tr><td colspan='2'>No records found in the database.</td></tr>";
    }
    echo "</table>";

    if ($table !== 'reddb') { // REDDB doesn't have an archive table
        // Display archived records from the archive table
        $sql_archive = "SELECT event_date, source_ip, archived_date FROM $archive_table";
        $result_archive = $conn->query($sql_archive);

        echo "<h2>Contents from $archive_table</h2>";
        echo "<table border='1' align='center'>";
        echo "<tr>
                <th>Date</th>
                <th>Source IP/Host</th>
                <th>Archived Date</th>
              </tr>";

        if ($result_archive->num_rows > 0) {
            while ($row = $result_archive->fetch_assoc()) {
                echo "<tr>
                        <td>" . $row['event_date'] . "</td>
                        <td>" . $row['source_ip'] . "</td>
                        <td>" . $row['archived_date'] . "</td>
                      </tr>";
            }
        } else {
            echo "<tr><td colspan='3'>No records found in the archive database.</td></tr>";
        }
        echo "</table>";
    }

    $conn->close();
}
?>