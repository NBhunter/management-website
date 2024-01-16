<?php 
include_once 'db_connect.php';
require_once 'Classes/PHPExcel.php';
function run()
   {
    $file = $_FILES['phieuchi']; // load file ra object PHPExcel
    $objFile = PHPExcel_IOFactory::identify($file);
    $objData = PHPExcel_IOFactory::createReader($objFile);
    //Chỉ đọc dữ liệu
   $objData->setReadDataOnly(true);
   $objPHPExcel = $objData->load($file);

   $sheet = $objPHPExcel->setActiveSheetIndex(0);
   }
?>
