<?php 
session_start();
include "../Utils/Util.php";
if (isset($_SESSION['username']) &&
    isset($_SESSION['admin_id'])) {
    include "../Controller/Admin/Student.php";
    $row_count = getCount();

    $page = 1;
    $row_num = 5;
    $offset = 0;
    $last_page = ceil($row_count / $row_num);
    if(isset($_GET['page'])){
    if($_GET['page'] > $last_page){
        $page = $last_page;
    }else if($_GET['page'] <= 0){
        $page = 1; 
    }else $page = $_GET['page'];
    }
    if($page != 1) $offset = ($page-1) * $row_num;
    $students = getSomeStudent($offset, $row_num);
    # Header
    $title = "CurriculumX - Total Students ";
    include "inc/Header.php";

?>

<div class="container-fluid">
  <!-- NavBar -->
  <?php include "inc/NavBar.php"; ?>
  
  <div class="list-table pt-5">
  <?php if ($students) { ?>
  <h4>All Students (<?=$row_count?>)</h4>

  <div class="mb-4 d-flex justify-content-center align-items-center">
    <?php include 'inc/SearchBox.php' ?>
  </div>

  <?php if(isset($_GET['search'])){?>
    <?php if ($results && $results->num_rows > 0): ?>
    <div class="results">
    <div class="row">
    <div class="col-md-5">
        <?php while ($student = $results->fetch_assoc()): ?>
            <div class="card">
                <img src=<?php $student['profile_img']; ?> class="card-img-top" alt="Card Image">
                <div class="card-body">
                    <h5 class="card-title"><?=$student["first_name"]?> <?=$student["last_name"]?></h5>
                    <p class="card-text">Student ID:  <?=$student["student_id"]?></p>
                    <p class="card-text">Dept: CSE</p>
                    <a href="Student.php?student_id=<?=$student["student_id"]?>"><button type="button" class="btn btn-info">Visit Profile</button></a>
                    <button onclick="confirmDelete(<?=$student['student_id']?>)" class="btn btn-danger mt-2">Delete</button>
                </div>
            </div>
        <?php endwhile; ?>
        </div>

    </div>
<?php elseif ($results): ?>
    <div class="results">
        <p>No results found.</p>
    </div>
<?php endif; ?>



<?php }else{ ?> 
  <div class="row">
  <?php foreach ($students as $student) {?>

<div class="col-md-2 mb-3">
            <div class="card">
                <img src="../img/frnds/Official pic.jpg" class="card-img-top" alt="Card Image">
                <div class="card-body">
                    <h5 class="card-title"><?=$student["first_name"]?> <?=$student["last_name"]?></h5>
                    <p class="card-text">Student ID:  <?=$student["student_id"]?></p>
                    <p class="card-text">Dept: CSE</p>
                    <a href="Student.php?student_id=<?=$student["student_id"]?>"><button type="button" class="btn btn-info">Visit Profile</button></a>
                    <button onclick="confirmDelete(<?=$student['student_id']?>)" class="btn btn-danger mt-2">Delete</button>
                </div>
            </div>
        </div>

  <?php } ?>
  </div>
  <?php } ?>
  <div class="container text-center">
  <div class="row">
  </div>

  <?php if ($last_page > 1 ) { ?>
  <div class="d-flex justify-content-center mt-3 border">
      <?php
            $prev = 1;
            $next = 1;
            $next_btn = true;
            $prev_btn = true;
            if($page <= 1) $prev_btn = false; 
            if($last_page ==  $page) $next_btn = false; 
            if($page > 1) $prev = $page - 1;
            if($page < $last_page) $next = $page + 1;
            
            if ($prev_btn){
            ?>
            <a href="index.php?page=<?=$prev?>" class="btn btn-secondary m-2">Prev</a>
           <?php }else { ?>
            <a href="#" class="btn btn-secondary m-2 disabled">Prev</a>
            
           <?php 
           }
           $push_mid = $page;
           if ($page >= 2)  $push_mid = $page - 1;
           if ($page > 3)  $push_mid = $page - 3;
          
           for($i = $push_mid; $i < 5 + $page; $i++){
            if($i == $page){ ?>
             <a href="index.php?page=<?=$i?>" class="btn btn-success m-2"><?=$i?></a>
           <?php }else{ ?>
             <a href="index.php?page=<?=$i?>" class="btn btn-secondary m-2"><?=$i?></a>

           <?php } 
           if($last_page <= $i)break;

            } 
            if($next_btn){
            ?>
            <a href="index.php?page=<?=$next?>" class="btn btn-secondary m-2">Next</a>
        <?php }else { ?>
           <a href="#" class="btn btn-secondary m-2 disabled" des>Next</a>
        <?php } ?>
  </div>

  <?php }}else { ?>
    <div class="alert alert-info" role="alert">
      0 students record found in the database
</div>

  <?php } ?>
  </div>



</div>
 <!-- Footer -->
<?php include "inc/Footer.php"; ?>
<script src="../assets/js/jquery-3.5.1.min.js"></script>
<script type="text/javascript">
  function confirmDelete(stud_id) {
      if (confirm('Are you sure you want to delete this student?')) {
          window.location.href = 'delete_student.php?id=' + stud_id;
      }
  }
</script>
<?php
 }else { 
$em = "First login ";
Util::redirect("../login.php", "error", $em);
} ?>
