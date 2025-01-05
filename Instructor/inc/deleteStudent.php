<?php
$dns = 'mysql:host=localhost;dbname=curriculumx';
$pdo = new PDO($dns, 'root', '');
$pdo->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
$student_id = $_GET['student_id'];
$info = explode(",", $student_id);
try {
    
    if (isset($info[0])) {
        $student_id = $info[0];
        $course_id = $info[1];
        
        $pdo->beginTransaction();

        $sql = "DELETE FROM enrolled_student WHERE student_id = :student_id AND course_id=:course_id";
        $stmt = $pdo->prepare($sql);
        $stmt->bindParam(':student_id', $student_id);
        $stmt->bindParam(':course_id', $course_id);

        if($stmt->execute()){
            echo "Successfully Deleted";
        }
        else{
            echo "Not Attainable";
        }
        $pdo->commit();

        // header("Location: delSuccess.php");
        } else {
            echo "Button Was Never Clicked";
        }
   
} catch (PDOException $e) {
    // Rollback transaction if there is an error
    $pdo->rollBack();
    echo "Connection Failed: " . $e->getMessage();
}
?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
</head>
<body>
    <h1>Deletion Process

     
        <?= $info[0]." ". $info[1]?>

    </h1>
</body>
</html>
