<?php
session_start();

include "../Utils/Validation.php";
include "../Utils/Util.php";
include "../Database.php";
include "../Models/Student.php";
include "../Models/Admin.php";
include "../Models/Instructor.php";

// Check if the cookie is set and session is not already set
if (isset($_COOKIE['username']) && !isset($_SESSION['username'])) {
    $username = $_COOKIE['username'];
  $role = strtolower($_COOKIE['role']);
    $id = $_COOKIE[$role.'_id'];
  
    $db = new Database();
    $conn = $db->connect();

    $Student = new Student($conn);
    $Instructor = new Instructor($conn);
    $Admin = new Admin($conn);


    if ($role === "student"){
      $Student->init($id);
      $student_data = $Student->getData();
        $_SESSION['username'] = $student_data['username'];
        $_SESSION['student_id'] = $student_data['student_id'];
        $_SESSION['usertype'] = 'Student';
    }
        
    } elseif ($role === "instructor") {
        $Instructor->init($id);
        $instructor_data = $Instructor->getData();
        $_SESSION['username'] = $instructor_data['username'];
        $_SESSION['instructor_id'] = $instructor_data['instructor_id'];
        $_SESSION['usertype'] = 'Instructor';

    } elseif ($role === "instructor") {
      $Admin->init($id);
        $admin_data = $Admin->get();
        $_SESSION['username'] = $admin_data['username'];
        $_SESSION['admin_id'] = $admin_data['admin_id'];
        $_SESSION['usertype'] = 'Admin';
    }

    $conn = null;

?>
