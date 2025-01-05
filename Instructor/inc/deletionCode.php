<!-- <?php
$dns = 'mysql:host=localhost;dbname=curriculumx';
$pdo = new PDO($dns, 'root', '');
$pdo->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);

try {
    if ($_SERVER["REQUEST_METHOD"] == "POST") {
        if (isset($_POST['myButton'])) {
            $buttonValue = $_POST['myButton'];
            
            // Start transaction
            $pdo->beginTransaction();

            // Delete related rows in certificate table
            $sql = "DELETE FROM certificate WHERE student_id = :student_id";
            $stmt = $pdo->prepare($sql);
            $stmt->bindParam(':student_id', $buttonValue);
            $stmt->execute();

            // Delete related rows in enrolled_student table
            $sql = "DELETE FROM enrolled_student WHERE student_id = :student_id";
            $stmt = $pdo->prepare($sql);
            $stmt->bindParam(':student_id', $buttonValue);
            $stmt->execute();

            // Delete row in student table
            $sql = "DELETE FROM student WHERE student_id = :student_id";
            $stmt = $pdo->prepare($sql);
            $stmt->bindParam(':student_id', $buttonValue);
            $stmt->execute();

            // Commit transaction
            $pdo->commit();

            header("Location: delSuccess.php");
        } else {
            echo "Button Was Never Clicked";
        }
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
    <h1>Deletion Process</h1>
</body>
</html> -->
