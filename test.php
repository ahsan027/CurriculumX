<?php
include "Database.php";
include "Models/Student.php";

$conn = (new Database())->connect();

$students = new Student($conn);
$res = $students->getAllStudents();
$department_id = "";
 $dept = "0";
if ($_SERVER['REQUEST_METHOD'] == 'POST') {

    $dept = $_POST['dept'];
    echo $dept;
}
 ?>
<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<title>Sign Up</title>
	<link rel="stylesheet" 
	      type="text/css" 
	      href="Assets/css/login-signup.css">
	<link rel="icon" type="image/x-icon" href="favicon.ico">
</head>
<body>


 
    	<div class="form-holder">
        <form method="POST" action="">
        <div class="d-flex bg-black form-group w-100">
					<label>Department: </label>
  <select class="form-control  w-100" id="inputGroupSelect04" name="dept">
    <option selected value="1">CSE</option>

    <option value="2">BBA</option>
    <option value="3">EEE</option>
  </select>
  <button type="submit">Submit</button>

  <h1><?php
  foreach ($res as $student) {
    if ($student['department_id'] == $dept) {
      echo $student['first_name'] ."<br/>";

    }

  }
  
  ?></h1>
</div>

        </form>
    	
    </div>
  
</body>
</html>