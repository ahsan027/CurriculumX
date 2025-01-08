<?php 
session_start();
include "../Utils/Util.php";


if (isset($_SESSION['username']) &&
    isset($_SESSION['student_id'])) {

    include "../Controller/Student/Course.php";
    $row_count = getCount();
    
    $page = 1;
    $row_num = 6;
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
    $courses = getSomeCourses($offset, $row_num);
  
  $stuId = $_SESSION['student_id'];

  $dns = "mysql:host=localhost;dbname=curriculumx";
  $c = new PDO($dns, 'root', '');
  $c->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
  try{
    $stmt = $c->prepare("SELECT Course_id FROM enrolled_student WHERE student_id = $stuId");
    $stmt->execute();
    $res = $stmt->fetchAll(PDO::FETCH_ASSOC);
 

    $resArr = [];

    for($i = 0; $i < count($res); $i++){
      $resArr[] = $res[$i]['Course_id'];
     
     
    }
  
  
  } catch (PDOException $e) {
    echo 'Connection failed: ' . $e->getMessage();
  }


    # Header
    $title = "CurriculumX - Students ";
    include "inc/Header.php";

?>
  <?php include "inc/NavBar.php"; ?>

<div class="container">
  <!-- NavBar -->
  <?php include "inc/SearchBox.php"; ?>

  <?php if ($courses) { ?>
  <h4 class="course-list-title">All Courses (<?=$row_count?>)</h4>

<?php if($results && $results->num_rows > 0){ ?>
    <div class="results">
    <div class="row">
        <?php while ($course = $results->fetch_assoc()): ?>
          <div class="col-md-4">
        <img src="../Upload/thumbnail/<?=$course["cover"]?>" 
             class="img-fluid rounded-start" 
             alt="course"
             width="500">
      </div>
      <div class="col-md-8">
        <div class="card-body">
        
          <h5 class="card-title"><?=$course["title"]?></h5>
          <p class="card-text"><?=$course["description"]?></p>
          <p class="card-text"><small class="text-body-secondary"><?=$course["created_at"]?><?=$course["instructor_id"]?> </small></p>


          <?php
$dsn = 'mysql:host=localhost;dbname=curriculumx';
$username = 'root';
$password = '';
try{
  
    $pdo = new PDO($dsn, $username, $password);
    $pdo->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
    
        $query = "SELECT * FROM instructor WHERE instructor_id=:instructor_id";
        $stmt = $pdo->prepare($query);
    $stmt->bindParam(':instructor_id', $course['instructor_id']);
    $stmt->execute();
    $result = $stmt->fetchAll(PDO::FETCH_ASSOC);
    // print_r($result[0]["status"]);
    $flag = false;
    if($result[0]["status"]==="Active"){
      
      $flag = true;
    }
    // var_dump($flag);
    if($flag){

       if (in_array($course['course_id'],$resArr)) {
        
          echo "<a href='Course.php?course_id=".$course['course_id']."' class='btn btn-primary'>View Course</a>";
      
        }else{
       
          echo " <form action=action/enroll.php method=GET>";
          echo "<button class='btn btn-primary' type=submit name=btnClick>Enroll</button>";
          echo "</form>";
   
        }

    }else{
          echo "<button class='btn btn-danger'>Enroll Blocked</button>";

    }
    
    

}catch(PDOException $e){
  echo "$e";
}   


       
        
    ?>
    <?php
    if (isset($_GET['btnClick'])) {
        echo "<p>Button clicked with GET: " . htmlspecialchars($_GET['btnClick']) . "</p>";
    }
    ?>
    
      ?>        
        </div>
      </div>
<?php endwhile; ?>
<?php } else{?>

  <div class="course-list">

    
    <?php foreach ($courses as $course) {?>

    <div class="card mb-3 course">
    <div class="row g-0">
      <div class="col-md-4">
        <img src="../Upload/thumbnail/<?=$course["cover"]?>" 
             class="img-fluid rounded-start" 
             alt="course"
             width="500">
      </div>
      <div class="col-md-8">
        <div class="card-body">
 

          <h5 class="card-title"><?=$course["title"]?></h5>
          <p class="card-text"><?=$course["description"]?></p>
          <p class="card-text"><small class="text-body-secondary"><?=$course["created_at"]?></small></p>

          <?php
          
$dsn = 'mysql:host=localhost;dbname=curriculumx';
$username = 'root';
$password = '';
try{
  
    $pdo = new PDO($dsn, $username, $password);
    $pdo->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
    
        $query = "SELECT * FROM instructor WHERE instructor_id=:instructor_id";
        $stmt = $pdo->prepare($query);
    $stmt->bindParam(':instructor_id', $course['instructor_id']);
    $stmt->execute();
    $result = $stmt->fetchAll(PDO::FETCH_ASSOC);
    
    $flag = false;
    if($result[0]["status"]==="Active"){
      
      $flag = true;
    }
    // var_dump($flag);
    if($flag){
        
        if (in_array($course['course_id'],$resArr)) {
        
          echo "<a href='Course.php?course_id=".$course['course_id']."' class='btn btn-success'>View Course</a>";
      
        }else{
       
          echo "<form action=action/enroll.php method=GET>";
echo"    <button class='btn btn-primary' type=submit name=btnClick value=". $course['course_id'].">Enroll Course</button>";
            echo "</form>";
          echo "</form>";
   
        }
      }else{
        echo "<button class='btn btn-danger'>Enroll Blocked</button>";

      }
    }catch(PDOException $e){
      echo $e;

    }
        
    ?>
        </div>
      </div>
    </div>
  </div>
  <?php } ?>
  </div>
  <?php } ?>
<?php }else{ ?>
  <div class="alert alert-info" role="alert">
      0 courses record found in the database
   </div>
<?php } ?>
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
            <a href="Courses.php?page=<?=$prev?>" class="btn btn-secondary m-2">Prev</a>
           <?php }else { ?>
            <a href="#" class="btn btn-secondary m-2 disabled">Prev</a>
            
           <?php 
           }
           $push_mid = $page;
           if ($page >= 2)  $push_mid = $page - 1;
           if ($page > 3)  $push_mid = $page - 3;
          
           for($i = $push_mid; $i < 5 + $page; $i++){
            if($i == $page){ ?>
             <a href="Courses.php?page=<?=$i?>" class="btn btn-success m-2"><?=$i?></a>
           <?php }else{ ?>
             <a href="Courses.php?page=<?=$i?>" class="btn btn-secondary m-2"><?=$i?></a>

           <?php } 
           if($last_page <= $i)break;

            } 
            if($next_btn){
            ?>
            <a href="Courses.php?page=<?=$next?>" class="btn btn-secondary m-2">Next</a>
        <?php }else { ?>
           <a href="#" class="btn btn-secondary m-2 disabled" des>Next</a>
        <?php } ?>
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