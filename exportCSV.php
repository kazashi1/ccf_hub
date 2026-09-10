<?php
include 'connection.php';

$result = $conn->query("
    SELECT s.firstname, s.lastname, s.year_level, s.course
    FROM present_students p
    INNER JOIN students s ON p.student_id = s.id
    ORDER BY s.lastname ASC
");

if (!$result) {
    die("Query Failed: " . $conn->error);
}

header('Content-Type: text/csv; charset=utf-8');
header('Content-Disposition: attachment; filename=present_students.csv');

$output = fopen('php://output', 'w');

fputcsv($output, ['Student Name', 'Year Level', 'Course']);

while ($row = $result->fetch_assoc()) {
    $name = $row['lastname'] . ", " . $row['firstname'];
    fputcsv($output, [$name, $row['year_level'], $row['course']]);
}

fclose($output);
exit;
?>
