<?php  

session_start();
include "Utils/Util.php";

session_unset();
session_destroy();
$role = strtolower($_COOKIE['role']);


if (isset($_COOKIE['username'])) {
  setcookie("username", "", time() - (86400*7), "/");
  setcookie("role", "", time() - (86400*7), "/");


  setcookie("$role"."_id", "", time() - (86400*7), "/");
}


$em = "logged out! ";
Util::redirect("login.php", "error", $em);