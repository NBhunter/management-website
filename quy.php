<?php  
     $myfile=fopen('quy.txt','w');
     $noidung= 1000000;
     fwrite($myfile,$noidung);
     fclose($myfile);
?> 