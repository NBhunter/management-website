<?php
session_start();
include 'db_connect.php';
// $cn=mysqli_connect("localhost","root","","image") or die("Could not Connect My Sql");
$output_dir = "HoaDon/";/* Path for file upload */
	$RandomNum   = time();
	$ImageName      = str_replace(' ','-',strtolower($_FILES['image']['name'][0]));
	$ImageType      = $_FILES['image']['type'][0];
 
	$ImageExt = substr($ImageName, strrpos($ImageName, '.'));
	$ImageExt       = str_replace('.','',$ImageExt);
	$ImageName      = preg_replace("/\.[^.\s]{3,4}$/", "", $ImageName);
	$NewImageName = $ImageName.'-'.$RandomNum.'.'.$ImageExt;
    $ret[$NewImageName]= $output_dir.$NewImageName;
	// value data
	$Ngaytaophieu = $_POST['Ngaytaophieu'];
	$tennguoidexuat = $_SESSION['details']['id'];
	$bophan = $_POST['bophan'];
	$noidung = $_POST['noidung'];
	$kinhphi = $_POST['kinhphi'];
	$thoigianbatdau = $_POST['thoigianbatdau'];
	$thoigianketthuc = $_POST['thoigianketthuc'];
	/* Try to create the directory if it does not exist */
	if (!file_exists($output_dir))
	{
		@mkdir($output_dir, 0777);
	}               
	move_uploaded_file($_FILES["image"]["tmp_name"][0],$output_dir."/".$NewImageName );
	     $sql = "INSERT INTO `de_xuat` (`id`, `Ngaytaophieu`, `tennguoidexuat`, `bophan`, `noidung`, `kinhphi`, `thoigianbatdau`, `thoigianketthuc`, `status`, `thoigianduyet`, `nguoiduyet`, `status_chi`, `lydo_tc`, `Anh_HoaDon`) 
		 VALUES ('', '$Ngaytaophieu', '$tennguoidexuat', '$bophan', '$noidung', '$kinhphi', '$thoigianbatdau', '$thoigianketthuc', NULL, NULL, NULL, NULL, NULL, '$NewImageName');";
		if (mysqli_query($conn, $sql)) {
			var_dump($_FILES["image"]["tmp_name"][0]);
			header('Location: index.php?page=my_dexuat');  
		}
		else {
		echo "Error: " . $sql . "" . mysqli_error($cn);
	 }

?>