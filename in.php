<?php
include 'connection.php';

if (isset($_GET['id'])) {
    $student_id = intval($_GET['id']);

    $check = $conn->prepare("SELECT * FROM present_students WHERE student_id = ?");
    $check->bind_param("i", $student_id);
    $check->execute();
    $result = $check->get_result();

    if ($result->num_rows == 0) {
        $stmt = $conn->prepare("INSERT INTO present_students (student_id) VALUES (?)");
        $stmt->bind_param("i", $student_id);
        $stmt->execute();
    }

    header("Location: index.php?msg=Student+marked+as+present");
    exit;
}
?>
