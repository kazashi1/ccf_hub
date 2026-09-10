<?php
include 'connection.php';

// Reset
if (isset($_POST['clear'])) {
    $conn->query("TRUNCATE TABLE present_students");
    header("Location: present.php?msg=Attendance+list+cleared");
    exit;
}

$sql = "SELECT s.firstname, s.lastname, s.year_level, s.course, p.in_time 
        FROM present_students p
        JOIN students s ON p.student_id = s.id
        ORDER BY p.in_time DESC";

$result = $conn->query($sql);
?>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Present Students</title>
    <link rel="stylesheet" href="src/presentStyle.css">
</head>

<body>
    <div class="container">
        <h2>Present Students</h2>

        <!-- Buttons -->
        <div class="actions">
            <form method="POST" action=""
                onsubmit="return confirm('Are you sure you want to clear the attendance list?');">
                <button type="submit" name="clear" class="clear-btn">Clear Present List</button>
            </form>
            <a href="exportCSV.php" class="export-btn">Export to CSV</a>
        </div>

        <!-- Table -->
        <table>
            <tr>
                <th>Student Name</th>
                <th>Year Level</th>
                <th>Course</th>
                <th>Time In</th>
            </tr>
            <?php
            if ($result->num_rows > 0) {
                while ($row = $result->fetch_assoc()) {
                    echo "<tr>
                      <td>" . ucfirst($row['lastname']) . ", " . ucfirst($row['firstname']) . "</td>
                      <td>" . $row['year_level'] . "</td>
                      <td>" . $row['course'] . "</td>
                      <td>" . $row['in_time'] . "</td>
                    </tr>";
                }
            } else {
                echo "<tr><td colspan='4' class='no-data'>No students have clicked In yet</td></tr>";
            }
            ?>
        </table>
    </div>
</body>

</html>