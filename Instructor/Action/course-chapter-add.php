<?php 
session_start();
include "../../Utils/Util.php";
if (isset($_SESSION['username']) &&
    isset($_SESSION['instructor_id'])) {
    include "../../Utils/Validation.php";
    include "../../Database.php";
    include "../../Models/Course.php";

   if ($_SERVER['REQUEST_METHOD'] == "POST") {

    

   $chapter_title   = Validation::clean($_POST["topic_title"]);
   $course_id = Validation::clean($_POST["course_id"]);
   $thumbnail = "default_course.jpg";
    if(empty($chapter_title)) {
        $em = "Invalid Title";
        Util::redirect("../Courses-add.php", "error", $em);
    }else if (empty($course_id)) {
        $em = "Invalid course";
        Util::redirect("../Courses-add.php", "error", $em);
    }else {

        if (isset($_FILES['thumbnail']['name'])) {
            $img_name = $_FILES['thumbnail']['name'];
            $tmp_name = $_FILES['thumbnail']['tmp_name'];
            $error = $_FILES['thumbnail']['error'];
 
            if($error === 0){
             $img_ex = pathinfo($img_name, PATHINFO_EXTENSION);
             $img_ex_to_lc = strtolower($img_ex);
 
             $allowed_exs = array('jpg', 'jpeg', 'png');
             if(in_array($img_ex_to_lc, $allowed_exs)){
                $new_img_name = uniqid("thumbnail-", true).'.'.$img_ex_to_lc;
                $img_upload_path = '../../Upload/thumbnail/'.$new_img_name;
                move_uploaded_file($tmp_name, $img_upload_path);
                // update the Database
                 $thumbnail = $new_img_name;
             }else {
                $em = "You can't upload files of this type";
               Util::redirect("../Course-chapter-add.php", "error", $em);
             }
          }else {
             $em = "unknown error occurred!";
            Util::redirect("../Courses-chapter-add.php", "error", $em);
          }
        }

       $db = new Database();
       $conn = $db->connect();

       $query = "INSERT INTO contents (topic_title, thumbnail, course_id,descriptions,video_link) VALUES (:topic_title,:thumbnail, :course_id, :descriptions, :video_link)";

        $stmt = $conn->prepare($query);
        $stmt->bindParam(':topic_title', $chapter_title);
        $stmt->bindParam(':thumbnail', $thumbnail);
        $stmt->bindParam(':course_id', $course_id);
        $stmt->bindParam(':descriptions', $_POST["descriptions"]);
        $stmt->bindParam(':video_link', $_POST["video_link"]);
        $res = $stmt->execute();
        print_r($res);

       if ($res) {
        $sm = "New chapter Successfully Created!";
        Util::redirect("../Courses-add.php", "success", $sm);
       }else {
        $em = "An error occurred";
        Util::redirect("../Courses-add.php", "error", $em);
       }
       $conn = null;
    }
    }else {
        $em = "REQUEST Error";
        Util::redirect("../Courses-add.php", "error", $em);
    }
}else {
    $em = "First login ";
    Util::redirect("../../login.php", "error", $em);
}