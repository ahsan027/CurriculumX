<?php 
session_start();
include "../Utils/Util.php";
include "../Utils/Validation.php";
if (isset($_SESSION['username']) &&
    isset($_SESSION['student_id'])) {

      $course_id =  $_GET['course_id'];

    # Header
    $title = "CurriculumX - ".$course['course']['title'];
    include "inc/Header.php";
?>
<div class="container">
  <!-- NavBar & Profile-->
  <?php include "inc/NavBar.php";?>
  <div class="side-by-side mt-5">
    <div class="l-side shadow p-3">
      
      <div class="d-flex p-2 justify-content-between align-items-center bg-light">
        <b>Course Content</b>
        <button id="sideBtn" class="btn fs-3 btn-light"><i class="fa fa-bars"></i></button>
      </div>
      <ul class="list-group" id="sideMenu">
        <?php $i=0; foreach($course['chapters'] as $chapter) { $i++; 
            if ($chapter['chapter_id'] == $_chapter_id) {
                $progress_plus = ($chapter_val*$i);
                $cureent =  $chapter_val *$i;
                if ($cureent >= $progress) {
                 updateStudentProgress($course_id, $student_id, $progress_plus);
                }
            }
            
        ?>
          <li class="list-group-item">
            <a href="javascript:void()" class="btn badge-primary">
              <?=$chapter['title']?></a>

             <ul>
              <?php
              
               foreach($course['topics'] as $topic) { 
                 if ($topic['chapter_id'] == $chapter['chapter_id']) {
                  if ($topic['topic_id'] == $_topic_id) { 
                    $chapter_title = $chapter['title'];
                    $topic_title = $topic['title'];
              ?>
               <li>
                 <a href="Courses-Enrolled.php?course_id=<?=$course_id?>&chapter_id=<?=$topic['chapter_id']?>&topic_id=<?=$topic['topic_id']?>" class="btn badge-primary" style="color: #0D6EFD;" >
                  <b><?=$topic['title']?></b></a>
               </li>
               <?php }else { ?>
                <li>
                 <a href="Courses-Enrolled.php?course_id=<?=$course_id?>&chapter_id=<?=$topic['chapter_id']?>&topic_id=<?=$topic['topic_id']?>" class="btn badge-primary"><?=$topic['title']?></a>
               </li>
               <?php } } } ?>
             </ul>
           </li>
         <?php } ?>
          
        </ul>
    </div>
    <div class="r-side p-5 shadow">
      <h6><?=$course['course']['title']?></h6>
      <h6><?=$chapter_title?></h6><hr>  
      <h5><?=$topic_title?></h5>
        <div>
          <?php if (!empty($course['content']['data'])) {
            echo $course['content']['data'];
          }
           ?>
        </div>

        <div><br><hr>
        <h6>Progress</h6>
        <div class="progress mb-2">
            <div class="progress-bar" role="progressbar" style="width: <?=$progress?>%;" aria-valuenow="<?=$progress?>" aria-valuemin="0" aria-valuemax="100"><?=ceil($progress)?>%</div>
        </div>
        <?php if ($progress == 100) {?>
        <div class="text-center">
          <a class="btn btn-success" href="Action/generateCertificate.php?course_id=<?=$course['content']['course_id']?>">Get Certificate</a>
        </div>
        <?php }else { ?>
          <div class="text-center">
          <a class="btn btn-warning disabled" href="#">Get Certificate</a>
        </div>
        <?php } ?>
        
      </div><hr>
    </div>
  </div>
</div>
</div>
</div>

 <!-- Footer -->
<?php include "inc/Footer.php"; ?>
<script src="../assets/js/jquery-3.5.1.min.js"></script>

    <script>
      // Side Menu sideMenu
      $("#sideBtn").click(function(){
          $("#sideMenu").slideToggle();
      });
    </script>
<?php
 }else { 
$em = "First login ";
Util::redirect("../login.php", "error", $em);
} ?>