<?php
include '../Utils/Util.php';
include '../Controller/Admin/Student.php';

$host = "localhost";
$username = 'root';
$password = "";
$db = "edupulsedb";
$conn = new mysqli($host, $username, $password, $db); // Check connection 

if ($conn->connect_error) { 
    die("Connection failed: " . $conn->connect_error);
}

if (isset($_GET['id'])) {
    $id = $_GET['id'];
    $sql = "DELETE FROM student WHERE student_id=$id";

    if ($conn->query($sql) === TRUE) {
        echo "Record deleted successfully";
    } else {
        echo "Error deleting record: " . $conn->error;
    }
} else {
    echo "Invalid request.";
}
$conn->close();

// Redirect back to the students page
header("Location: index.php");
exit();
?>
