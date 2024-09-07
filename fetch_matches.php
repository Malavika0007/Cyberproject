<?php
$servername = "localhost";
$username = "root";
$password = "";
$dbname = "demodb";

$conn = new mysqli($servername, $username, $password, $dbname);

if ($conn->connect_error) {
    die("Connection failed: " . $conn->connect_error);
}

$table = $_POST['table'];
$file = $_FILES['file']['tmp_name'];

// Read the contents of the uploaded file
$fileContent = file_get_contents($file);

// Example: Query the database and check for matches
$sql = "SELECT * FROM $table";
$result = $conn->query($sql);

$matches = [];

if ($result->num_rows > 0) {
    while ($row = $result->fetch_assoc()) {
        // Example: Compare each row from the database with the file content
        // Implement your specific matching logic here
        if (strpos($fileContent, $row['source_ip']) !== false) {
            $matches[] = $row;
        }
    }
}

$conn->close();

// Return matches as JSON response
echo json_encode($matches);
?>
