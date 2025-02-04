<?php 
session_start();
include "../Utils/Util.php";
include "../Utils/Validation.php";
if (isset($_SESSION['username']) &&
    isset($_SESSION['admin_id'])) {
    
  if (isset($_GET['student_id'])) {
    include "../Controller/Admin/Student.php";
    $_id = Validation::clean($_GET['student_id']);
    $student = getById($_id);
   if (empty($student['student_id'])) {
     $em = "Invalid Student id";
     Util::redirect("index.php", "error", $em);
   }
   // get Certificates
   $certificates = getCertificate($_id);
    # Header 
    $title = "CurriculumX - Student ";
    include "inc/Header.php";
?>
  <?php include "inc/NavBar.php"; ?>

<div class="container text-center">
  <!-- NavBar -->
  
  <div class="list-table pt-5">
  <div class="r-side p-5 shadow" style="max-width: 500px;">
      <!-- <h4>Student Details</h4><br> circle -->
      <div class="profile text-center">

        <img  class="rounded float-left"
              src="../upload/profile/<?=$student['profile_img']?>" alt="PROFILE IMG" width="150">

        

              <h5 class="p-2"><?=$student['first_name']?> <?=$student['last_name']?></h5>
      </div><br><br>
        <ul class="list-group">
          <li class="list-group-item">First name: <?=$student['first_name']?></li>
          <li class="list-group-item">Last name: <?=$student['last_name']?></li>
          <li class="list-group-item">Email: <?=$student['email']?></li>
          <li class="list-group-item">Date of birth: <?=$student['date_of_birth']?></li>
          <li class="list-group-item">Joined at: <?=$student['date_of_joined']?></li>
          <li class="list-group-item">Department: <?php 
    $id = $student["student_id"];
    $conn = new mysqli("localhost", "root", "", "curriculumx");

    // Check connection
    if ($conn->connect_error) {
        die("Connection failed: " . $conn->connect_error);
    }

    $query = "SELECT d.department_name FROM department d INNER JOIN student s ON s.department_id = d.department_id WHERE s.student_id = $id";
    $result = $conn->query($query);

    if ($result->num_rows > 0) {
        while ($row = $result->fetch_assoc()) {
            if($row['department_name']=="CSE"){
              echo "Computer Science of Engineering & Technology";

            }elseif($row['department_name']=="BBA"){
              echo "Bachelor of Business Studies";

            }else{
              echo "Electrical & Electronics Engineering";
            } ;
        }
    } else {
        echo "No department found";
    }

    $conn->close();
?></li>

          <li class="list-group-item">Student id: <?=$student['student_id']?></li>
          <li class="list-group-item">Username: <?=$student['username']?></li>
          
        </ul>
        <div class="mt-3">
          <a href="Reset-Password.php?for=Student&student_id=<?=$student['student_id']?>" class="btn btn-primary">Reset Password</a>
        </div>
        <?php if (!empty($certificates[0]["certificate_id"])) { ?>
        <h4 class="mt-5">Certificates</h4>
        <ul class="list-group">
           <?php 
             $i = 0;
             foreach ($certificates as $certificate) { $i++;
           ?>
              <li class="list-group-item">
                <b><?=$i ?>. </b>
                <a href="../Certificate.php?certificate_id=<?=$certificate['certificate_id']?>"> <?=$certificate['course_title']?> </a>
              </li>

           <?php } ?>
          
        </ul> 
        <?php } ?>
    </div>
  </div>
  </div>



 <!-- Footer -->
<?php include "inc/Footer.php"; ?>

<?php
 }else { 
  $em = "Invalid Student id";
  Util::redirect("index.php", "error", $em);
  }

}else { 
$em = "First login ";
Util::redirect("../login.php", "error", $em);
} ?>