<?php
//fetch.php
$connect = mysqli_connect("localhost", "root", "", "sharp_it");
$columns = array('student_id', 'student_name', 'student_class', 'total_mark', 'exam_date');

$query = "SELECT * FROM table3 WHERE ";

if($_POST["is_date_search"] == "yes")
{
 $query .= 'exam_date BETWEEN "'.$_POST["start_date"].'" AND "'.$_POST["end_date"].'" AND ';
}

if(isset($_POST["search"]["value"]))
{
 $query .= '
  (student_id LIKE "%'.$_POST["search"]["value"].'%" 
  OR student_name LIKE "%'.$_POST["search"]["value"].'%" 
  OR student_class LIKE "%'.$_POST["search"]["value"].'%" 
  OR total_mark LIKE "%'.$_POST["search"]["value"].'%")
 ';
}

if(isset($_POST["order"]))
{
 $query .= 'ORDER BY '.$columns[$_POST['order']['0']['column']].' '.$_POST['order']['0']['dir'].' 
 ';
}
else
{
 $query .= 'ORDER BY student_id DESC ';
}

$query1 = '';

if($_POST["length"] != -1)
{
 $query1 = 'LIMIT ' . $_POST['start'] . ', ' . $_POST['length'];
}

$number_filter_row = mysqli_num_rows(mysqli_query($connect, $query));

$result = mysqli_query($connect, $query . $query1);

$data = array();

while($row = mysqli_fetch_array($result))
{
 $sub_array = array();
 $sub_array[] = $row["student_id"];
 $sub_array[] = $row["student_name"];
 $sub_array[] = $row["student_class"];
 $sub_array[] = $row["total_mark"];
 $sub_array[] = $row["exam_date"];
 $data[] = $sub_array;
}

function get_all_data($connect)
{
 $query = "SELECT * FROM table3";
 $result = mysqli_query($connect, $query);
 return mysqli_num_rows($result);
}

$output = array(
 "draw"    => intval($_POST["draw"]),
 "recordsTotal"  =>  get_all_data($connect),
 "recordsFiltered" => $number_filter_row,
 "data"    => $data
);

echo json_encode($output);

?>
