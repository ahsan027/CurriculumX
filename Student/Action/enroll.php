<?php 
session_start();
$dns = "mysql:host=localhost;dbname=curriculumx";
$pdo = new PDO($dns, 'root', '');
$pdo->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
try {


  if (isset($_GET['btnClick'])) {
    $query = "INSERT INTO enrolled_student (student_id, course_id) VALUES (:student_id, :course_id)";
    print_r($_GET['btnClick']);
    echo "<br>";
    print_r($_SESSION['student_id']);


    $stmt = $pdo->prepare($query);
    $stmt->bindParam(':student_id', $_SESSION['student_id']);
    $stmt->bindParam(':course_id', $_GET['btnClick']);
    $stmt->execute();

  }


}catch (PDOException $e) {
  echo 'Connection failed: ' . $e->getMessage();
}

?>




