<?php 
session_start();
include "../Utils/Util.php";
include "../Utils/Validation.php";
if (isset($_SESSION['username']) &&
    isset($_SESSION['admin_id'])) {
    
    include "../Controller/Admin/System.php";  
    // get Certificates
    $student_count = getstudentsCount();
    $Instructor_count = getInstructorCount();
    $Course_count = getCourseCount();
    
    # Header 
    $title = "CurriculumX - OverView ";
    include "inc/Header.php";


$conn = new mysqli("localhost","root","","curriculumx");



if($conn->connect_error){
    die("Connection Failed");
}

$query = "SELECT * FROM announcement ORDER BY id DESC LIMIT 1";
$result = $conn->query($query);
?>
  <?php include "inc/NavBar.php"; ?>

<div class="container  ">
  <!-- NavBar -->
  
  <div class="p-5  shadow">
    <div class="d-flex align-items-center gap-3">
        <h4 class="text-danger"> Notice Board</h4>
    <a href="announcement.php" class="ml-2">
        <button class="btn btn-success btn-sm mb-1">Upload Announcement</button>
    </a></div>
    <div class="container-xl d-flex justiy-content-center align-items-center">
<?php if($result->num_rows>0){
    while($info = $result->fetch_assoc()){
        echo "<div class='text-center p-5 shadow' style='margin: 20px;'>"; 
        echo "<h3>" . $info["fname"] . "</h3>"; 
        echo "<iframe src='" . $info["file_path"] . "' width='1000' height='500'></iframe>"; 
        echo "</div>";
    }
}
?>
    </div>

    

    <!-- Display Graphs/Charts for Analysis -->
    <div class="mb-5 text-center p-5 shadow" style="max-width: 600px; margin: 20px">
        <h4>Traffic Analysis</h4>
        <!-- Bar Chart -->
        <canvas id="visitedStudentsChart" width="400" height="200"></canvas>
    </div>

    

    <!-- Display Overall Statistics -->
    <div class="mb-5 overall-statistics">
        <h4>Overall Statistics</h4>
        <ul class="d-flex">
            <li><span><?=$student_count?></span>Total Students </li>
            <li><span><?=$Instructor_count?></span>Total Instructors</li>
            <li><span><?=$Course_count?></span>Total Courses</li>
            <!-- Add more statistics as needed -->
        </ul>
    </div>

    <!-- Display Course Enrollment Statistics -->
    <div class="mb-5 enrollment-statistics">
        <h4>Departmental Enrollment Statistics</h4>
        <p>Top 3 Courses with Highest Enrollment</p>
        <ul class="d-flex">
            <?php $query= "SELECT d.department_name,count(*) as TotalStudents FROM student s INNER JOIN department d ON s.department_id = d.department_id GROUP BY d.department_id;";
            $result = $conn->query($query);
            if ($result) { 
                while ($row = $result->fetch_assoc()) { 
                    echo "<li><span>" . $row['TotalStudents'] . " students</span> " . $row['department_name'] . "</li>";
                 } } 
                    else { echo "<li>Error: " . $conn->error . "</li>"; }
            ?>

            <!-- Add more statistics as needed -->
        </ul>
    </div><br>
   <h4>Expected vs Actual Student Registration This Week</h4><br>
    <div class="mb-5" style="max-width: 350px">
        
        <!-- Pie Chart -->
        <canvas id="registrationPieChart" width="400" height="400"></canvas>
    </div>
    
  </div>

<script>
    // Sample data for enrollment pie chart
    var registrationPieChart = {
        labels: ['Actual', 'Expected'],
        datasets: [{
            data: [300, 500],
            backgroundColor: ['#0D6EFD', '#eee'],
        }]
    };

    // Create enrollment pie chart
    var enrollmentPieChart = new Chart(document.getElementById('registrationPieChart'), {
        type: 'pie',
        data: registrationPieChart
    });

    // Sample data for visited students bar chart
    var visitedStudentsData = {
        labels: ['Week 1', 'Week 2', 'Week 3', 'Week 4','week 5','week 6','week 7','week 8','week 9','week 10','week 11','week 12'],
        datasets: [{
            label: 'Visited Students',
            data: [20, 30, 25, 15,10,5,15,40,10,20,25,30],
            backgroundColor: 'rgba(75, 192, 192, 0.2)',
            borderColor: 'rgba(75, 192, 192, 1)',
            borderWidth: 1
        }]
    };

    // Create visited students bar chart
    var visitedStudentsChart = new Chart(document.getElementById('visitedStudentsChart'), {
        type: 'line',
        data: visitedStudentsData
    });
</script>
</div>
 <!-- Footer -->
<?php include "inc/Footer.php"; ?>


<?php
 }else { 
$em = "First login ";
Util::redirect("../login.php", "error", $em);
} ?>