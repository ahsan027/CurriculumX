<?php  

session_start();
include "Utils/Util.php";

session_unset();
session_destroy();

if (isset($_COOKIE['username'])) {
  setcookie("username", "", time() - 3600, "/");
  setcookie("role", "", time() - 3600, "/");
  setcookie("student_id", "", time() - 3600, "/");
}


$em = "logged out! ";
Util::redirect("login.php", "error", $em);