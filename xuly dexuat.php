<?php
include_once 'db_connect.php';
function filterData(&$str){ 
    $str = preg_replace("/\t/", "\\t", $str); 
    $str = preg_replace("/\r?\n/", "\\n", $str); 
    if(strstr($str, '"')) $str = '"' . str_replace('"', '""', $str) . '"'; 
} 
 
// Excel file name for download 
$fileName = "de xuat" . date('Y-m-d') . ".xls"; 
 
// Column names 
$fields = array('ID', 'người lập','bộ phận', 'ngày lập', 'nội dung', 'số tiền','ngày bắt đầu','ngày kết thúc', 'trạng thái', 'thời gian duyệt', 'người duyệt','trạng thái chi'); 
 
// Display column names as first row 
$excelData = implode("\t", array_values($fields)) . "\n"; 
 
// Fetch records from database 
$query = $conn->query("SELECT * FROM de_xuat where status like 1 ORDER BY id ASC"); 
if($query->num_rows > 0){ 
    // Output each row of the data 
    while($row = $query->fetch_assoc()){ 
        $status = ($row['status'] == 1)?'đã duyệt':'chua duyet'; 
        $status_chi = ($row['status_chi'] == 1)?'đã chi tiền':(($row['status_chi'] == 2)?'đã nhận tiền':'chua chi tien'); 
        $bophan = "N/A";
        $approved ="N/A";
        $query2 = $conn->query("SELECT *,concat(firstname,' ',middlename,' ',lastname) as name FROM employee_details Where id =".$row['tennguoidexuat']." ORDER BY id ASC"); 
        $employee = ucwords($query2->fetch_array()['name']);
        $query2 = $conn->query("SELECT * FROM `department` WHERE id = ".$row['bophan']." ORDER BY id ASC"); 
        $bophan = ucwords($query2->fetch_array()['name']);
        if($row['status'] != 0){
            $query2 = $conn->query("SELECT *,concat(firstname,' ',middlename,' ',lastname) as name FROM employee_details Where id =".$row['nguoiduyet']." ORDER BY id ASC"); 
        $approved = ucwords($query2->fetch_array()['name']);
         }
        $lineData = array($row['id'], $employee,$bophan,date("d/m/Y",strtotime($row['Ngaytaophieu'])), $row['noidung'], $row['kinhphi'], date("d/m/Y",strtotime($row['thoigianbatdau'])),date("d/m/Y",strtotime($row['thoigianketthuc'])), $status, date("d/m/Y",strtotime($row['thoigianduyet'])) , $approved,$status_chi); 
        array_walk($lineData, 'filterData'); 
        $excelData .= implode("\t", array_values($lineData)) . "\n"; 
    } 
}else{ 
    $excelData .= 'No records found...'. "\n"; 
} 
 
// Headers for download 
header("Content-Type: application/vnd.ms-excel"); 
header("Content-Disposition: attachment; filename=\"$fileName\""); 
header("Expires: 0");
header("Cache-Control: must-revalidate, post-check=0, pre-check=0");
header("Cache-Control: private",false);
// Render excel data 
echo $excelData; 
 
exit;
?>