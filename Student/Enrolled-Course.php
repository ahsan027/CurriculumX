<?php 
session_start();
include "../Utils/Util.php";
include "../Database.php";
if (isset($_SESSION['username']) &&
    isset($_SESSION['student_id'])) {

      $id = $_SESSION['student_id'];

      $database = new Database();
      $conn = $database->connect();


  $query = "SELECT * FROM enrolled_student e INNER JOIN course c ON c.course_id = e.course_id WHERE e.student_id=:id";

  $stmt = $conn->prepare($query);
  $stmt->bindParam(':id', $id);
  $stmt->execute();
  $courses = $stmt->fetchAll(PDO::FETCH_ASSOC);
  // print_r($courses);
  $len = count($courses);



    # Header
    $title = "Curriculum - Students ";
    include "inc/Header.php";
    
?>
  <?php include "inc/NavBar.php"; ?>

<div class="container">
  <!-- NavBar -->

 <?php if($len>0){ ?>
  <h4 class="course-list-title">All Enrolled Courses ( <?= $len ?>)</h4>
  <div class="course-list">

  <?php foreach($courses as $course): ?>
 
    <div class="card mb-3 course">

    <div class="row g-0">

      <div class="col-md-4">
        <img src="../Upload/thumbnail/<?= $course['cover'] ?>" 
             class="img-fluid rounded-start" 
             alt="course"
             width="500">
      </div>
     
      <div class="col-md-8">
        <div class="card-body">
          <h5 class="card-title"><?php echo $course['title']?></h5>
          <h5 class="card-title"><?php echo $course['course_id']?></h5>

          <p class="card-text"><?= $course['description'] ?></p>
          <p class="card-text"><small class="text-body-secondary"><?= $course['created_at'] ?></small></p>
          <a href="courseContents.php?course_id=<?= $course['course_id'] ?>" class="btn btn-primary">View Course</a>

          <a href="Action/generateCertificate.php?course_id=<?= $course['course_id'] ?>" class="btn btn-success">Get Certificate</a>
        </div>
      </div>
      
    </div>
  </div>
  <?php endforeach; ?>
  
  </div>
<?php }else{ ?>
  <div class="alert alert-info" role="alert">
      0 courses record found in the database
   </div>
<?php } ?>
</div>

 <!-- Footer -->
<?php include "inc/Footer.php"; ?>

<?php
 }else { 
$em = "First login ";
Util::redirect("../login.php", "error", $em);
} ?>