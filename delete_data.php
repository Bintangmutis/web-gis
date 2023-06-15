<?php
$servername = "localhost";
$username = "root";
$password = "";
$dbname = "data_baberr";

$conn = new mysqli($servername, $username, $password, $dbname);

if ($conn->connect_error) {
    die("Connection failed: " . $conn->connect_error);
}

if ($_SERVER["REQUEST_METHOD"] == "POST") {
    $nama_lokasi = $_POST["nama_lokasi"];

    $sql = "DELETE FROM barbershop WHERE nama_lokasi = ?";
    $stmt = $conn->prepare($sql);
    $stmt->bind_param("s", $nama_lokasi);

    if ($stmt->execute()) {
        echo "success";
    } else {
        echo "error";
    }

    $stmt->close();
}

$conn->close();
?>
