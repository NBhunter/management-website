<?php
ob_start();
$action = $_GET['action'];
include 'admin_class.php';
$crud = new Action();

if($action == 'login'){
	$login = $crud->login();
	if($login)
		echo $login;
}
if($action == 'login2'){
	$login = $crud->login2();
	if($login)
		echo $login;
}
if($action == 'logout'){
	$logout = $crud->logout();
	if($logout)
		echo $logout;
}
if($action == 'logout2'){
	$logout = $crud->logout2();
	if($logout)
		echo $logout;
}
if($action == 'save_user'){
	$save = $crud->save_user();
	if($save)
		echo $save;
}
if($action == 'delete_user'){
	$save = $crud->delete_user();
	if($save)
		echo $save;
}
if($action == 'signup'){
	$save = $crud->signup();
	if($save)
		echo $save;
}
if($action == "save_settings"){
	$save = $crud->save_settings();
	if($save)
		echo $save;
}
if($action == "save_leave_type"){
	$save = $crud->save_leave_type();
	if($save)
		echo $save;
}
if($action == "delete_leave_type"){
	$save = $crud->delete_leave_type();
	if($save)
		echo $save;
}
if($action == "save_department"){
	$save = $crud->save_department();
	if($save)
		echo $save;
}
if($action == "delete_department"){
	$save = $crud->delete_department();
	if($save)
		echo $save;
}
if($action == "save_position"){
	$save = $crud->save_position();
	if($save)
		echo $save;
}
if($action == "delete_position"){
	$save = $crud->delete_position();
	if($save)
		echo $save;
}
if($action == "save_employee"){
	$save = $crud->save_employee();
	if($save)
		echo $save;
}
if($action == "delete_employee"){
	$save = $crud->delete_employee();
	if($save)
		echo $save;
}
if($action == "get_positions"){
	$get = $crud->get_positions();
	if($get)
		echo $get;
}
if($action == "get_available"){
	$get = $crud->get_available();
	if($get)
		echo $get;
}
if($action == "get_manager"){
	$get = $crud->get_manager();
	if($get)
		echo $get;
}
if($action == "get_supervisor"){
	$get = $crud->get_supervisor();
	if($get)
		echo $get;
}
if($action == "save_leave_c"){
	$save = $crud->save_leave_c();
	if($save)
		echo $save;
}
// lu thong tin phieu chi
if($action == "save_leave"){
	$save = $crud->save_leave();
	if($save)
		echo $save;
}
// luu thong tin phieu chi khach hang
if($action == "save_leave_customer"){
	
	$save = $crud->save_leave_customer();
	if($save)
		echo $save;
}
// luu thong tin phieu chi ncc
if($action == "save_leave_supplier"){
	$save = $crud->save_leave_supplier();
	if($save)
		echo $save;
}
// luu thong tin phieu thu
if($action == "save_receipt"){
	$save = $crud->save_receipt();
	if($save)
		echo $save;
}
// luu thong tin phieu thu khach hang
if($action == "save_receipt_customer"){
	$save = $crud->save_receipt_customer();
	if($save)
		echo $save;
}
// luu thong tin phieu thu ncc
if($action == "save_receipt_supplier"){
	$save = $crud->save_receipt_supplier();
	if($save)
		echo $save;
}
if($action == "save_customer"){
	$save = $crud->save_customer();
	if($save)
		echo $save;
}
if($action == "save_dexuat"){	
	$save = $crud->save_dexuat();
	if($save)
		echo $save;
}if($action == "save_dexuat_noidung"){
	$save = $crud->save_dexuat_noidung();
	if($save)
		echo $save;
}if($action == "save_tcdexuat_noidung"){
	$save = $crud->save_tcdexuat_noidung();
	if($save)
		echo $save;
}
if($action == "save_supplier"){
	$save = $crud->save_supplier();
	if($save)
		echo $save;
}
if($action == "action_leave"){
	$save = $crud->action_leave();
	if($save)
		echo $save;
}
if($action == "action_dexuat"){
	$save = $crud->action_dexuat();
	if($save)
		echo $save;
}
if($action == "decline_dexuat"){
	$save = $crud->decline_dexuat();
	if($save)
		echo $save;
}
if($action == "action_chidx"){
	$save = $crud->action_chidx();
	if($save)
		echo $save;
}
if($action == "action_chi"){
	$save = $crud->action_chi();
	if($save)
		echo $save;
}
if($action == "delete_leave"){
	$save = $crud->delete_leave();
	if($save)
		echo $save;
}
if($action == "delete_dexuat"){
	$save = $crud->delete_dexuat();
	if($save)
		echo $save;
}
if($action == "save_offer_c"){
	$save = $crud->save_offer_c();
	if($save)
		echo $save;
}
if($action == "save_offer"){
	$save = $crud->save_offer();
	if($save)
		echo $save;
}
if($action == "action_offer"){
	$save = $crud->action_offer();
	if($save)
		echo $save;
}
if($action == "delete_offer"){
	$save = $crud->delete_offer();
	if($save)
		echo $save;
}