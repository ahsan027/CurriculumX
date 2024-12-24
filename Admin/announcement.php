<?php 
$em ="";
$conn = new mysqli("localhost","root","","edupulsedb");

if($conn->error){
    die("Connection Failed");
}
else{
    if($_SERVER['REQUEST_METHOD']=='POST'){
        if(empty($_FILES)){
            exit("File was Empty");
        }
        if($_FILES['fileToUpload']['error']!== UPLOAD_ERR_OK){
            switch($_FILES['fileToUpload']['error']){
                case UPLOAD_ERR_PARTIAL:
                    $em = "File only partially Uploaded";
                    break;
                case UPLOAD_ERR_NO_FILE:
                    $em = "No File was Uploaded";
                    break;
                default:
                    $em = "Unknown Error Occured";
                    break;
            }

        }else{
            $filename = $_FILES['fileToUpload']['name'];
            $dire = __DIR__ ."/announcements/" .$filename;
$i=1;
            while(file_exists($dire)){
            $dire = __DIR__ ."/announcements/".($i)."_" .$filename;
$i++;
            }

            if(move_uploaded_file($_FILES['fileToUpload']['tmp_name'],$dire)){
                echo "<h5 class='text-success'>Uploaded Successfully</h5>";
                $file_path = "announcements/" . basename($dire); 
                // Relative path 
                $stmt = $conn->prepare("INSERT INTO announcement (fname, file_path) VALUES (?, ?)"); 
                $stmt->bind_param("ss", $filename, $file_path); 
                
                if($stmt->execute()) { 
                    echo "<h2 class='text-success'>File information saved to database successfully.</h2>"; } 
                    else { echo "<h2 class='text-danger'>Failed to save file information to database.</h2>"; } 
                    $stmt->close();
                    header("Location: System-analysis.php");
            }
            else{
            exit("Failed To upload");
        }
        }

    }
}

?>


<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
    <title>CurriCulumX - Announcement</title>
</head>
<body>
<div class="container d-flex justify-content-center align-items-center" style="min-height: 100vh;"> 
    <div class="card p-4"> 
        <h2 class="text-center">Upload PDF</h2> 
        <form method="POST" action="<?php echo $_SERVER['PHP_SELF']; ?>" enctype="multipart/form-data"> 
            <div class="form-group"> 
                <label for="fileToUpload">Select PDF to upload:</label> 
                <input type="file" name="fileToUpload" id="fileToUpload" class="form-control" accept="application/pdf"> </div>
                <p class="text-sm text-danger fw-bold"><?= $em; ?></p>
                 <button type="submit" class="btn btn-success btn-block">Upload PDF</button>
                </form> 
            </div> 
        </div>
    
</form>
</div>
<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js" integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" crossorigin="anonymous"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>
</body>
</html>