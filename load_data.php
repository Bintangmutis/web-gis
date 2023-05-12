<?php
header('Content-Type: application/json');

$servername = "localhost";
$username = "root";
$password = "";
$dbname = "data_baberr";

$conn = new mysqli($servername, $username, $password, $dbname);

if ($conn->connect_error) {
    die("Connection failed: " . $conn->connect_error);
}

// Fetch node data
$sql = "SELECT * FROM barbershop";
$result = $conn->query($sql);
$data = array();

if ($result->num_rows > 0) {
    while ($row = $result->fetch_assoc()) {
        $data['markers'][] = $row;
    }
} else {
    echo "0 results";
}

// Fetch circle data
$sql = "SELECT * FROM circles";
$result = $conn->query($sql);

if ($result->num_rows > 0) {
    while ($row = $result->fetch_assoc()) {
        $data['circles'][] = $row;
    }
}else {
    echo "0 results";
}

// Fetch polygon data
$sql = "SELECT * FROM polygons";
$result = $conn->query($sql);

if ($result->num_rows > 0) {
    while ($row = $result->fetch_assoc()) {
        $data['polygons'][] = $row;
    }
} else {
    echo "0 results";
}
echo json_encode($data);

$conn->close();
?>
