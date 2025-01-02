<?php 
session_start();
include "../Utils/Util.php";
include "../Database.php";
if (isset($_SESSION['username']) &&
    isset($_SESSION['student_id'])) {


      $db = new Database();
  $conn = $db->connect();
  $query = "SELECT * FROM course WHERE course_id = :course_id";
  $stmt = $conn->prepare($query);
  $stmt->bindParam(':course_id', $_GET['course_id']);
  $stmt->execute();
  $course = $stmt->fetch(PDO::FETCH_ASSOC);
  // print_r($course);
  $conn = null;
    
    # Header
    $title = "CurriCulumX - Students ";
    include "inc/Header.php";

?>
  <?php include "inc/NavBar.php"; ?>

<div class="container">
  <!-- NavBar -->

  <h4 class="course-list-title"></h4>
  <div class="card" style="max-width: 700px;">
    <div class="card-body">
      
      <h5 class="card-title">Course Title: <?= $course['title'] ?> </h5>
      <h5 class="card-title pt-3">Course Description: <?=$course['description']?></h5>
      <p class="card-text">
       
      </p>
    </div>
    <ul class="list-group list-group-flush">
      <?php if ($course['status'] === "public") { ?>
        <li class="list-group-item">Status : <mark style="background-color:aquamarine"> <?= $course['status'] ?></mark> </li>
       <?php } else { ?>
        <li class="list-group-item">Status : <mark style="background-color: #f8d7da;">Private</mark></li>
       <?php } ?>
    
       <?php
       
      $db = new Database();
      $conn = $db->connect();
       $query = "SELECT * FROM instructor WHERE instructor_id = :instructor_id";
        $stmt = $conn->prepare($query);
        $stmt->bindParam(':instructor_id', $course['instructor_id']); 
        $stmt->execute();
        $instructor = $stmt->fetch(PDO::FETCH_ASSOC);
        // print_r($instructor);
        $conn = null;
        ?>
        <li class="list-group-item">Instructor:<mark> <?php echo $instructor['first_name']." ".$instructor['last_name'] ?></mark></li>
        <li class="list-group-item">Gsuite: <?php echo $instructor['email']?></li>
        <li class="list-group-item">Created at: <mark> <?= $course['created_at'] ?></mark></li>
        <li class="list-group-item"><mark style="background-color:aquamarine;">Certificate After Complete The Course</mark></li>
      </ul>
   
      <?php if ($course["cover"] != "default_course.jpg") { ?>
    
      <div>
        <img src="../Upload/thumbnail/<?php echo $course['cover'] ?>" 
             class="img-fluid rounded-start" 
             alt="course"
             width="100%">
      </div>
      <?php } ?>
</div>
<a href="Courses.php" class=""><button class="btn btn-primary mt-2">Go Back</button></a>
</div>

 <!-- Footer -->
<?php include "inc/Footer.php"; ?>

<?php
 }else { 
$em = "First login ";
Util::redirect("../login.php", "error", $em);
} ?>