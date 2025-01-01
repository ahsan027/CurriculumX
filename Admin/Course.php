<?php 
$id = $_GET["course_id"];
$dns = "mysql:host=localhost;dbname=curriculumx";

$pdo = new PDO($dns, 'root', '');

$pdo->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);

try{
    $query = "SELECT * FROM contents WHERE course_id = :id";
    $stmt = $pdo->prepare($query);
    $stmt->bindParam(':id', $id);
    $stmt->execute();
    $result = $stmt->fetchAll(PDO::FETCH_ASSOC);
   



}catch(PDOException $e){
    echo 'Connection failed: ' . $e->getMessage();
}

?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>My Topics</title>
    <link rel="stylesheet" href="course.css">
</head>
<body>
<a href="courses.php"><button class="styled-button"> <span class="arrow">←</span> Dash Board </button></a>

    <div class="container">
        <?php foreach($result as $r){
           echo "<div class='card'>";
           echo "    <div class='thumbnail'>";
           echo "        <img src='thumbnail1.jpg' alt='Thumbnail 1'>";
           echo "    </div>";
           echo "    <div class='card-content'>";
           echo "        <h2>".$r['topic_title']."</h2>";
           echo "        <p>This is a description of the first topic. It provides a brief overview of what this topic is about.</p>";
           echo "        <a href='https://example.com/topic1' target='_blank'>Watch Video</a>";
           echo "    </div>";
           echo "</div>";
           

        } ?>
           




    

        
        
        
        <!-- Add more cards as needed -->
    </div>
</body>
</html>
