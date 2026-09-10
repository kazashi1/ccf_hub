<?php
include 'connection.php';

$id = $_GET['id'] ?? null;
if (!$id) {
    die("Invalid request.");
}

$result = $conn->query("SELECT * FROM students WHERE id=$id");
if ($result->num_rows == 0) {
    die("Student not found.");
}
$student = $result->fetch_assoc();

if ($_SERVER["REQUEST_METHOD"] == "POST" && isset($_POST['update'])) {
    $firstname = $_POST['firstname'];
    $lastname = $_POST['lastname'];
    $year_level = $_POST['year_level'];
    $course = $_POST['course'];

    $sql = "UPDATE students 
            SET firstname='$firstname', lastname='$lastname', year_level='$year_level', course='$course'
            WHERE id=$id";
    $conn->query($sql);

    header("Location: index.php?msg=updated");
    exit;
}
?>

<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <title>Edit Student</title>
    <link rel="stylesheet" href="src/editStyle.css">
</head>

<body>

    <div class="container">
        <h2>Edit Student Info</h2>
        <form method="POST">
            <input type="text" name="lastname" value="<?= htmlspecialchars($student['lastname']); ?>" required>
            <input type="text" name="firstname" value="<?= htmlspecialchars($student['firstname']); ?>" required>

            <select name="year_level" required>
                <option value="1st Year" <?= $student['year_level'] == '1st Year' ? 'selected' : ''; ?>>1st Year</option>
                <option value="2nd Year" <?= $student['year_level'] == '2nd Year' ? 'selected' : ''; ?>>2nd Year</option>
                <option value="3rd Year" <?= $student['year_level'] == '3rd Year' ? 'selected' : ''; ?>>3rd Year</option>
                <option value="4th Year" <?= $student['year_level'] == '4th Year' ? 'selected' : ''; ?>>4th Year</option>
            </select>

            <select name="course" required>
                <option value="BS Accountancy" <?= $student['course'] == 'BS Accountancy' ? 'selected' : ''; ?>>BS Accountancy</option>
                <option value="BS Information Tech" <?= $student['course'] == 'BS Information Tech' ? 'selected' : ''; ?>>BS Information Tech</option>
                <option value="BS Education" <?= $student['course'] == 'BS Education' ? 'selected' : ''; ?>>BS Education</option>
                <option value="BS Business Ad" <?= $student['course'] == 'BS Business Ad' ? 'selected' : ''; ?>>BS Business Ad</option>
                <option value="BS Entrepreneurship" <?= $student['course'] == 'BS Entrepreneurship' ? 'selected' : ''; ?>>BS Entrepreneurship</option>
            </select>

            <button type="submit" name="update">Update</button>
        </form>

        <a href="index.php" class="back-link">Back to List</a>
    </div>

</body>

</html>
