<?php
include_once 'db_connect.php';
function filterData(&$str){ 
    $str = preg_replace("/\t/", "\\t", $str); 
    $str = preg_replace("/\r?\n/", "\\n", $str); 
    if(strstr($str, '"')) $str = '"' . str_replace('"', '""', $str) . '"'; 
} 
function currency_format($number, $suffix = 'đ') {
    if (!empty($number)) {
        return number_format($number, 0, ',', '.') . "{$suffix}";
    }
}
 
 
// Excel file name for download 
//$fileName = "chi tiết đơn ".$_GET['id']."_" . date('Y-m-d').".csv" ; 
//$fileName = 'export.xlsx';
$header1 ="CÔNG TY TNHH SẢN XUẤT TRƯỜNG HƯNG";
$header2 ="E9/199D Thế Lữ, Xã Tân Nhựt, Huyện Bình Chánh, TPHCM	";
$header3 ="Tel: 02822452294-02822452293-02822452294-02835351192";
$title = "PHIẾU ĐỀ XUẤT";
$excelData = $header1."\n".$header2 . "\n". $header3 ."\n".$title."\n"; 
// Column names 
$fields = array(''); 
 
// Display column names as first row 
$excelData .= implode("\t", array_values($fields)) . "\n"; 
 
// Fetch records from database 
if(isset($_GET['id'])){
	$query = $conn->query("SELECT * FROM de_xuat  where id=".$_GET['id']);
	

if($query->num_rows > 0){ 
    // Output each row of the data 
    while($row = $query->fetch_assoc()){ 
        $excelData .= date("d/m/Y",strtotime($row['Ngaytaophieu']))."\n"; 
        $bophan = "N/A";
        $address = "N/A";
        $approved ="N/A";
        $query2 = $conn->query("SELECT *,concat(firstname,' ',middlename,' ',lastname) as name FROM employee_details Where id =".$row['tennguoidexuat']." ORDER BY id ASC"); 
        $employee = ucwords($query2->fetch_array()['name']);
        $query2 = $conn->query("SELECT * FROM `department` WHERE id = ".$row['bophan']." ORDER BY id ASC"); 
        $bophan = ucwords($query2->fetch_array()['name']);
        if($row['status'] != 0){
            
            $query2 = $conn->query("SELECT *,concat(firstname,' ',middlename,' ',lastname) as name FROM employee_details Where id =".$row['nguoiduyet']." ORDER BY id ASC"); 
        $approved = ucwords($query2->fetch_array()['name']);
         }
        // $thuchi = ($row['type'] == 1)?'Chi Khách Hàng':(($row['type'] == 3)?'Chi Nhà Cung Cấp':(($row['type'] == 2)?'Chi Khác': (($row['type'] == 4)?'Thu Khác': (($row['type'] == 5)?'Thu Khách Hàng':'Thu Nhà Cung Cấp' ) )) );
        $status = ($row['status'] == 1)?'Active':(($row['status'] == 2)? 'Refuse': 'Inactive'); 
        // $lineData = array($row['id'], date("d/m/Y",strtotime($row['date_created'])),  $employee,$thuchi, $customer, $address ,$row['money'], $row['reason'],$status,$approved ,  $row['date_approved']); 
        // array_walk($lineData, 'filterData'); 
        $excelData .= "Tên người đề xuất \t Số tiền"."\n";
        	
        $lineData1 = $employee . "\t".currency_format($row['kinhphi']);
        $excelData .= $lineData1 . "\n"; 
        $lineaddress= array("Bộ Phận:".$bophan);
        $excelData .= implode("\t", array_values($lineaddress)) . "\n" ;
        $excelData .= "Nội dung: \n".$row['noidung']."\n";
        $excelData .= "\t  Ngày bắt đầu \t Ngày kết thúc"."\n";
        $excelData .= "\t ".date("d/m/Y",strtotime($row['thoigianbatdau']))."\t ".date("d/m/Y",strtotime($row['thoigianketthuc']))."\n";
        $excelData .= "\t \t  Ngày duyệt"."\n";
        $excelData .= "\t \t ".date("d/m/Y",strtotime($row['thoigianduyet']))."\n";
        $excelData .= "Người lập phiếu \t \t  Người duyệt"."\n";
        $lineData2 = $employee . "\t \t".$approved;
        $excelData .= $lineData2 . "\t"; 
    } 
}}else{ 
    $excelData .= 'No records found...'. "\n"; 
} 
$encoded_csv = mb_convert_encoding($excelData, 'UTF-16LE', 'UTF-8');

// Headers for download 
//header("Content-Type: application/vnd.ms-excel; charset=utf-8"); 
//header("Content-type: application/x-msexcel; charset=utf-8");

//header("Content-disposition: xls; filename=" .date("Y-m-d")."_".$_GET['id']."_tb.xls; size=".strlen($xls));
//header("Content-Type: application/vnd.ms-excel"); 
//header('Content-Encoding: UTF-16LE');

//header("Content-Disposition: attachment; filename=\"$fileName\"");
header('Set-Cookie: fileDownload=true;path=/');
header("Pragma:public");
header("Expires: 0");
header("Cache-Control: must-revalidate, post-check=0, pre-check=0");
header("Cache-Control: private",false);
header('Content-Type: application/vnd.ms-excel');
header("Content-Disposition: attachment; filename=" .date("Y-m-d")."_".$_GET['id']."_tb_dx.csv; size=".strlen($csv));
header("Content-Transfer-Enconding:binary");

 // Render excel data 
//echo $excelData; 
echo chr(255) . chr(254) . $encoded_csv;;
 
exit;
?>
