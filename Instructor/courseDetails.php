<?php 
session_start();
include "../Utils/Util.php";
include '../Database.php';
if (isset($_SESSION['username']) &&
    isset($_SESSION['instructor_id'])) {

  $db = new Database();
  $conn = $db->Connect();

  if (isset($_GET['course_id'])) {
    $query = "SELECT * FROM Student s INNER JOIN enrolled_student e ON e.student_id = s.student_id WHERE course_id = :course_id";
    $stmt = $conn->prepare($query);
    $stmt->bindParam(':course_id', $_GET['course_id']);
    $stmt->execute();
    $courses = $stmt->fetchAll(PDO::FETCH_ASSOC);
    // print_r($courses);
    $conn = null;

   

  }
  
    # Header
    $title = "Curriculumx - Courses ";
    include "inc/Header.php";

?>
  <?php include "inc/NavBar.php"; ?>

<div class="container">
  <!-- NavBar -->
  
  <div class="list-table pt-5">
  <?php if ($courses) { ?>
  <h4>Total Students (<?php echo count($courses)?>)</h4>

  <table class="table table-bordered">
      <tr>
        <th>#Id</th>
        <th>Course Title</th>
        <th>Department: </th>
        <th>Action</th>
      </tr>
      <?php foreach ($courses as $course) {?>
      <tr>
      <td><?=$course["student_id"]?></td>
       <td><?php echo $course['first_name']." ".$course['last_name']?></td>
       <td class="status"> <?php 
         $db = new Database();
         $conn = $db->Connect();
       
         if (isset($_GET['course_id'])) {
           $query = "SELECT * FROM department d INNER JOIN student s ON s.department_id = d.department_id WHERE student_id = :student_id";
           $stmt = $conn->prepare($query);
           $stmt->bindParam(':student_id', $course["student_id"]);
           $stmt->execute();
           $dept = $stmt->fetchAll(PDO::FETCH_ASSOC);
          //  print_r($dept);
           $conn = null;

           echo $dept[0]['department_name'];
       
          
       
         }
       

       ?></td>
       <td class="action_btn">
        <form method="POST" action="inc/deleteStudent.php">
   <button type="submit" class="btn btn-warning" name="myButton" value="<?php echo json_encode([$dept[0]['student_id'], $_GET['course_id']]);?>">Delete Student</button>
</form>

        
        
       </td>
      </tr>
      <?php } ?>
  </table>
  <?php } else { ?>
    <div class="alert alert-info" role="alert" style="background-color: #d9edf7; color: #31708f; padding: 15px; border: 1px solid #bce8f1; border-radius: 5px; margin-top: 10px;">
  <h1 style="text-align: center; margin: 0; font-size: 24px;">0 Students Enrolled</h1>
</div>


   <?php } ?>

  </div>



</div>
 <!-- Footer -->
<?php include "inc/Footer.php"; ?>
<script src="../assets/js/jquery-3.5.1.min.js"></script>
<script type="text/javascript">
 
<?php
 }else { 
$em = "First login ";
Util::redirect("../login.php", "error", $em);
} ?>