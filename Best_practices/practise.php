<?php
$dsn = 'mysql:host=localhost;dbname=test_db';
$username = 'root';
$password = '';

try {
  // PDO -> full form -> PHP Data Objects; it is a database access layer providing a uniform method of access to multiple databases.

  // PDO provides a way to work with multiple databases using a unified API, making it easier to write database-agnostic code and enhance security with features like prepared statements.

    $pdo = new PDO($dsn, $username, $password);
    $pdo->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);



    // SQL query with placeholders
    $sql = 'SELECT id, username, email FROM users WHERE username = :username AND email = :email';

    // Prepare the statement
    $stmt = $pdo->prepare($sql);

    // Data to bind
    $username = 'john_doe';
    $email = 'john@example.com';

    // Bind the parameters
    $stmt->bindParam(':username', $username);
    $stmt->bindParam(':email', $email);

    // Execute the statement
    $stmt->execute();

    // Fetch the results
    $users = $stmt->fetchAll(PDO::FETCH_ASSOC);

    foreach ($users as $user) {
        echo 'ID: ' . $user['id'] . '<br>';
        echo 'Username: ' . $user['username'] . '<br>';
        echo 'Email: ' . $user['email'] . '<br><br>';
    }

} catch (PDOException $e) {
    echo 'Connection failed: ' . $e->getMessage();
}
?>
