<?php 
session_start();
$dns = "mysql:host=localhost;dbname=curriculumx";
$pdo = new PDO($dns, 'root', '');
$pdo->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
try {


  if (isset($_GET['btnClick'])) {

    $query = "INSERT INTO enrolled_student (student_id, course_id) VALUES (:student_id, :course_id)";

    $stmt = $pdo->prepare($query);
    $stmt->bindParam(':student_id', $_SESSION['student_id']);
    $stmt->bindParam(':course_id', $_GET['btnClick']);
    $stmt->execute();

    $newquery = "INSERT INTO certificate (course_id, student_id) VALUES (:course_id, :student_id)";

    $stmt = $pdo->prepare($newquery);
    $stmt->bindParam(':student_id', $_SESSION['student_id']);
    $stmt->bindParam(':course_id', $_GET['btnClick']);
    $stmt->execute();
    header("Location: ../Courses.php");
    $pdo = null;


  }


}catch (PDOException $e) {
  echo 'Connection failed: ' . $e->getMessage();
}

?>




