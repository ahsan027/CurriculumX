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
           echo "        <img src='thumbnails/t1.jpg' alt='Thumbnail 1'>";
           echo "    </div>";
           echo "    <div class='card-content'>";
           echo "        <h2>".$r['topic_title']."</h2>";
           echo "        <p>". $r['descriptions']."</p>";
           echo "        <p>"."Lorem ipsum, dolor sit amet consectetur adipisicing elit. Accusantium nemo quasi voluptatem repudiandae delectus impedit suscipit sint a, doloremque officiis voluptatibus dolorem excepturi quae numquam sequi. Amet rerum soluta nihil magnam beatae accusantium, laborum numquam ullam quibusdam odit, nam accusamus voluptate fuga autem culpa quae molestias sequi, eum dolore illo."."</p>";

           echo "        <a href='https://www.youtube.com/watch?v=eP1cSKcOjyM&list=PLib4rFadvfrckeiUjBjYWnxtyUmW5-X8r' target='_blank'>Watch Video</a>";
           echo "    </div>";
           echo "</div>";
           

        } ?>
    </div>
</body>
</html>
