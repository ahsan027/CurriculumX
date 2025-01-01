<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>My Videos</title>
    <link rel="stylesheet" href="styles.css">
</head>
<body>
    <style>body {
    font-family: Arial, sans-serif;
    background-color: #f4f4f4;
    margin: 0;
    padding: 0;
    display: flex;
    justify-content: center;
    align-items: center;
    height: 100vh;
}

.container {
    text-align: center;
}

h1 {
    color: #333;
    margin-bottom: 20px;
}

.video-box {
    width: 560px;
    height: auto;
    margin: 10px auto;
    border: 1px solid #ccc;
    box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
    border-radius: 8px;
    overflow: hidden;
}

video {
    width: 100%;
    height: auto;
}
</style>
    <div class="container">
        <h1>My Videos</h1>
        <div class="video-box">
            <video controls>
                <source src="your-video-file.mp4" type="video/mp4">
                Your browser does not support the video tag.
            </video>
        </div>
        <div class="video-box">
            <video controls>
                <source src="another-video-file.mp4" type="video/mp4">
                Your browser does not support the video tag.
            </video>
        </div>
        <!-- Add more video boxes as needed -->
    </div>
</body>
</html>
