<?php
// Connection to CCF Hub database
include 'connection.php';

// Insert data
/*if ($_SERVER["REQUEST_METHOD"] == "POST" && isset($_POST['save'])) {
    $firstname = $_POST['firstname'];
    $lastname = $_POST['lastname'];
    $year_level = $_POST['year_level'];
    $course = $_POST['course'];

    $sql = "INSERT INTO students (firstname, lastname, year_level, course) 
            VALUES ('$firstname', '$lastname', '$year_level', '$course')";
    $conn->query($sql);
}*/

if (isset($_POST['save'])) {
    $firstname = $_POST['firstname'];
    $lastname = $_POST['lastname'];
    $year_level = $_POST['year_level'];
    $course = $_POST['course'];

    $stmt = $conn->prepare("INSERT INTO students (firstname, lastname, year_level, course) VALUES (?, ?, ?, ?)");
    $stmt->bind_param("ssss", $firstname, $lastname, $year_level, $course);

    if ($stmt->execute()) {
        // If successfully added
        header("Location: index.php?msg=added");
        exit;
    } else {
        echo "Error: " . $conn->error;
    }
}

$search = "";
if (isset($_GET['search'])) {
    $search = $_GET['search'];
    $stmt = $conn->prepare("SELECT * FROM students WHERE lastname LIKE ? ORDER BY lastname ASC");
    $param = "%" . $search . "%";
    $stmt->bind_param("s", $param);
    $stmt->execute();
    $result = $stmt->get_result();
} else {
    $result = $conn->query("SELECT * FROM students ORDER BY lastname ASC");
}
?>

<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <title>Student Form</title>
    <link rel="stylesheet" href="src/indexStyle.css">
</head>

<body>

    <div class="main-form-container">
        <h2>Add Student</h2>

        <!-- Add Student Form -->
        <form method="POST" class="student-form">
            <input type="text" name="lastname" placeholder="Enter Last Name" required>
            <input type="text" name="firstname" placeholder="Enter First Name" required>

            <select name="year_level" required>
                <option value="1st Year">1st Year</option>
                <option value="2nd Year">2nd Year</option>
                <option value="3rd Year">3rd Year</option>
                <option value="4th Year">4th Year</option>
            </select>

            <select name="course" required>
                <option value="BS Accountancy">BS Accountancy</option>
                <option value="BS Information Tech">BS Information Tech</option>
                <option value="BS Education">BS Education</option>
                <option value="BS Business Ad">BS Business Ad</option>
                <option value="BS Entrepreneurship">BS Entrepreneurship</option>
            </select>

            <button type="submit" name="save">Save</button>
        </form>

        <div class="extra-actions">
            <!--
            <form method="GET" action="">
                <input type="text" name="search" placeholder="Search by Last Name"
                    value="<?php echo htmlspecialchars($search ?? ''); ?>">
                <button type="submit">Search</button>
                <a href="index.php" class="reset-btn">Reset</a>
            </form>
            -->

            <form method="GET" action="">
                <input type="text" name="search" placeholder="Search by Last Name"
                    value="<?php echo htmlspecialchars($search); ?>">
                <button type="submit">Search</button>
                <a href="index.php" class="reset-btn">Reset</a>
            </form>
        </div>
    </div>


    <?php if (!empty($search)): ?> <!-- Only show list when searched -->
        <h3>Student List</h3>
        <table cellpadding="5">
            <tr>
                <th>Student Name</th>
                <th>Year Level</th>
                <th>Course</th>
                <th>Action</th>
            </tr>
            <?php
            if ($result->num_rows > 0) {
                while ($row = $result->fetch_assoc()) {
                    echo "<tr>
            <td>" . ucfirst($row['lastname']) . ", " . ucfirst($row['firstname']) . "</td>
            <td>" . $row['year_level'] . "</td>
            <td>" . $row['course'] . "</td>
            <td class='action-links'>
                <a href='edit.php?id=" . $row['id'] . "'>Edit</a> 
                <a href='#' class='delete-btn' data-id='" . $row['id'] . "'>Delete</a>
                <a href='#' class='inBtn' data-id='" . $row['id'] . "'>In</a>
            </td>
        </tr>";
                }
            } else {
                echo "<tr><td colspan='4'>No records found</td></tr>";
            }
            ?>
        </table>
    <?php endif; ?>

    <script src="https://cdn.jsdelivr.net/npm/sweetalert2@11"></script>
    <script src="src/script.js"></script>

</body>

</html>