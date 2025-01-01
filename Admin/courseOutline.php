<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Responsive Video Grid</title>
    <link rel="stylesheet" href="styles.css">
</head>
<style>/* styles.css */
body {
    font-family: Arial, sans-serif;
    background-color: #f8f9fa;
    display: flex;
    justify-content: center;
    align-items: center;
    height: 100vh;
    margin: 0;
}

.container {
    width: 90%;
    margin: auto;
}

.row {
    display: flex;
    flex-wrap: wrap;
    gap: 20px;
}

.card {
    background-color: #ffffff;
    border-radius: 5px;
    box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
    flex: 1 1 calc(33.333% - 20px);
    box-sizing: border-box;
    padding: 10px;
    overflow: hidden;
}

.video-container {
    position: relative;
    padding-bottom: 56.25%; /* 16:9 aspect ratio */
    height: 0;
    overflow: hidden;
    margin-bottom: 10px;
}

.video-container iframe {
    position: absolute;
    top: 0;
    left: 0;
    width: 100%;
    height: 100%;
}

.card-text {
    font-size: 16px;
}

@media (max-width: 768px) {
    .card {
        flex: 1 1 calc(50% - 20px);
    }
}

@media (max-width: 480px) {
    .card {
        flex: 1 1 100%;
    }
}
</style>
<body>
    <div class="container">
        <div class="row">
            <div class="card">
                <div class="video-container">
                    <iframe src="https://www.youtube.com/embed/VIDEO_ID_1" allowfullscreen></iframe>
                </div>
                <p class="card-text">Tutorial 1 Description</p>
            </div>
            <div class="card">
                <div class="video-container">
                    <iframe src="https://www.youtube.com/embed/VIDEO_ID_2" allowfullscreen></iframe>
                </div>
                <p class="card-text">Tutorial 2 Description</p>
            </div>
            <div class="card">
                <div class="video-container">
                    <iframe src="https://www.youtube.com/embed/VIDEO_ID_3" allowfullscreen></iframe>
                </div>
                <p class="card-text">Tutorial 3 Description</p>
            </div>
            <!-- Add more cards as needed -->
        </div>
    </div>
    <script src="script.js"></script>
</body>
</html>
