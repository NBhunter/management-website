<?php include 'db_connect.php' ?>
<style>
	td p {
		margin:unset;
	}
</style>
<script> 

</script>
<div class="container-fluid">
	<div class="card">
								<div class="card-header">
									<h5 class="card-title">Danh sách phiếu đề xuất</h5>
									<a href="xuly.php" class ="btn btn-success"><i clas ="dwn"></i>export</a>
								</div>
								<div class="table-responsive">
									<table class="table mb-0">
									<thead>
										<tr>
							<th>#</th>
							<th>Ngày</th>
							<th>Người lập</th>
							<th>Nội dung</th>
							<th>Số tiền</th>
							<th>bắt đầu</th>
							<th>kết thúc</th>
							<th>Trạng thái</th>
							<th>Trạng thái chi</th>
							<th>Hành động</th>
							<th>Chi dự án</th>
							
						</tr>
					</thead>
					<tbody>
					    <?php 
						$USER = $conn->query("SELECT *,concat(firstname,' ',middlename,' ',lastname) as name from employee_details where id = ".$_SESSION['login_id']);
						$detail = $USER->fetch_array();
						$i = 1;
						if($_SESSION['login_id']==14||$_SESSION['login_id']==11||$_SESSION['login_id']==19||$_SESSION['login_id']==17||$detail['department_id']==6){
						$qry = $conn->query("SELECT * FROM de_xuat dx");
						}elseif(($_SESSION['login_id'] == 20)){
							$qry = $conn->query("SELECT * FROM de_xuat dx,employee_details ed WHERE dx.bophan = 3;");
						}
						else{
						$qry = $conn->query("SELECT * FROM de_xuat dx,employee_details ed WHERE dx.bophan = ed.department_id and ed.user_id = ".$_SESSION['login_id']." and (ed.manager_id = 1 OR ed.manager_id = 3 OR ed.manager_id = 6 OR ed.manager_id = 7 OR ed.manager_id = 9 OR ed.manager_id = 11 OR ed.manager_id BETWEEN 13 and 15);");
						}
						while($row=$qry->fetch_assoc()):
							{
							$action_by = 'N/A';
							if($row['status'] > 0){
								$emp = $conn->query("SELECT *,concat(firstname,' ',middlename,' ',lastname) as name from employee_details where id = ".$row['nguoiduyet']);
								if($emp->num_rows > 0 ){
									$action_by = ucwords($emp->fetch_array()['name']);
								}
							}
						}
							?>
						
						<tr>
						<td class="text-center"> <?php echo $i++; ?></td>
						<td>
								<?php echo date("d/m/Y",strtotime($row['Ngaytaophieu'])) ?>
							</td>
						<td>
							<?php
							
										$emp = $conn->query("SELECT *,concat(firstname,' ',middlename,' ',lastname) as name  FROM `employee_details` WHERE `id`= '".$row['tennguoidexuat']."'");
								if($emp->num_rows > 0 ){
										$tennhanvien = ucwords($emp->fetch_array()['name']);
									}
									$emp = $conn->query("SELECT *  FROM `department` WHERE `id`= '".$row['bophan']."'");
								if($emp->num_rows > 0 ){
										$bophan = ucwords($emp->fetch_array()['name']);
									}
									?>
								<?php echo $tennhanvien ?>
								<br><a>Bộ Phận: <?php echo $bophan ?></a>
							</td>
						<td>
								<?php echo ucwords($row['noidung']) ?>
								<?php if($row['Anh_HoaDon'] != null) {?> 
									<!-- href là nó sẽ link đến vị trí {local}/HoaDon/anh -->
								</br><a href="HoaDon/<?php echo $row['Anh_HoaDon'] ?>" target="_blank"> xem ảnh </a>
									<?php }?>
							</td>
							<td>
							<?php
								      /**
														  *
														  * Chuyển đổi chuỗi kí tự thành dạng slug dùng cho việc tạo friendly url.
														  *
														  * @access    public
														  * @param    string
														  * @return    string
														  */
														  if (!function_exists('currency_format')): {
															function currency_format($number, $suffix = 'đ') {
																if (!empty($number)) {
																	return number_format($number, 0, ',', '.') . "{$suffix}";
																}
															}
														 }	
														endif;	
														 echo currency_format($row['kinhphi']);
							 ?>
							 </td>
							 <td>
								<?php echo date("d/m/Y",strtotime($row['thoigianbatdau'])) ?>
							</td>
							<td>
								<?php echo date("d/m/Y",strtotime($row['thoigianketthuc'])) ?>
							</td>
							<td class="text-center">
							<?php if($row['status'] == 0): ?>
								<span class="badge bg-primary">Chờ duyệt</span>
								<?php elseif($row['status'] == 1): ?>
									<span class="badge bg-success">Đã duyệt</span>
								<?php elseif($row['status'] == 2): ?>
									<span class="badge bg-danger">Từ chối</span>
									
								<?php endif; ?>
								<p><?php echo $action_by ?> </p>
								<p><?php echo $row['status'] > 0 ? date("d/m/Y",strtotime($row['thoigianduyet'])) : 'N/A' ?> </p>
									
							</td>
							<td class="text-center">
							<?php if($row['status'] == 2): ?>
								<p >Lý do từ chối phiếu:<?php echo $row['lydo_tc'] ?></p>
							<?php elseif($row['status_chi'] == 0): ?>
									<span class="badge bg-warning">chưa chi</span>
								<?php elseif($row['status_chi'] == 1): ?>
									<span class="badge bg-danger">đã chi tiền</span>
								<?php elseif($row['status_chi'] == 2): ?>
									<span class="badge bg-success">đã nhận tiền</span>
								<?php endif; ?>
								
							</td>
							<td class="text-center">
								<?php 
								 
								$TP = $conn->query("SELECT *,concat(firstname,' ',middlename,' ',lastname) as name  FROM `employee_details` WHERE `user_id`= '".$_SESSION['login_id']."'");
								
								if($TP->num_rows > 0 ){
									$TPid = $TP->fetch_assoc();
								}
								if($row['status'] == 0):
								if(($TPid['department_id'] == $row['bophan']&&($TPid['type'] == 1))||($TPid['department_id'] ==6 && $TPid['type']==1)):
								?>
								<button class="btn btn-sm btn-outline-primary approved_dexuat" id="approved_leave" type="button" data-id="<?php echo $row['id'] ?>" >Đồng ý </button>
								<button class="btn btn-sm btn-outline-danger decline_dexuat" type="button" data-id="<?php echo $row['id'] ?>">Từ chối</button>
								<?php 	endif;endif;	?>
								<?php if($_SESSION['details']['department_id']== 6||$_SESSION['login_id']== 19||$_SESSION['login_id']== 11):?>
							  <a href="xuly_donchitietdexuat.php?id=<?php echo $row['id']?>" class ="btn btn-success"><i clas ="dwn"></i>export</a>
							  <?php endif;?>
							  <?php
			if($_SESSION['login_id']==19||$_SESSION['login_id']==11):
				?>
							<button class="btn btn-sm btn-outline-primary edit_nddexuat" type="button" data-id="<?php echo $row['id'] ?>" >Sửa</button>
							<?php 
			endif;?>
							</td>
							  <td>
			<?php if(($row['status']==1 && $row['status_chi']==0)&&($_SESSION['details']['department_id']== 6||$_SESSION['login_id']== 19 || $_SESSION['login_id']==11)):?>
				<button class="btn btn-sm btn-success approved_chi" id="approved_chi" type="button" data-id="<?php echo $row['id'] ?>" >Đã chi </button>
							  <?php endif;?>
								
							  </td>
						</tr>
						
				<?php
				endwhile;?>
					</tbody>
				</table>
			</div>
		</div>
	</div>
</div>
<script>

$('.edit_nddexuat').click(function(){
		uni_modal("Edit Leave","manage_dexuat_noidung.php?id="+$(this).attr('data-id'),"mid-large")
		
	})
	$('.approved_dexuat').click(function(){
		action_dexuat($(this).attr('data-id'),1)
		
	})
	$('.approved_chi').click(function(){
		action_chidx($(this).attr('data-id'),1)
		
	})
	$('.decline_dexuat').click(function(){
		
  var decline;
  
	decline = prompt("Nhập lý do từ chối(nhập -1 để hủy):", "");
   while (decline == null || decline == "") {
    alert("bạn cần phải nhập cái gì đó.");
	decline = prompt("Nhập lý do từ chối:", "");
}
if(decline != -1){
decline_dexuat($(this).attr('data-id'),2,decline)
}
	})
	function decline_dexuat($id,$status,$decline){
		start_load()
		$.ajax({
			url:'ajax.php?action=decline_dexuat',
			method:'POST',
			data:{id:$id,status:$status,decline:$decline},
			success:function(resp){
				if(resp==1){
					alert_toast("Leave application succesffuly updated",'success');
					setTimeout(function(){
						location.reload()
					},1500)

				}
			}

		})
	}
	function action_dexuat($id,$status){
		start_load()
		$.ajax({
			url:'ajax.php?action=action_dexuat',
			method:'POST',
			data:{id:$id,status:$status},
			success:function(resp){
				if(resp==1){
					alert_toast("Leave application succesffuly updated",'success');
					setTimeout(function(){
						location.reload()
					},1500)

				}
			}

		})
	}
	function action_chidx($id,$status_chi){
		start_load()
		$.ajax({
			url:'ajax.php?action=action_chidx',
			method:'POST',
			data:{id:$id,status_chi:$status_chi},
			success:function(resp){
				if(resp==1){
					alert_toast("Leave application succesffuly updated",'success');
					setTimeout(function(){
						location.reload()
					},1500)

				}
			}

		})
	}
	$('table').dataTable();
	
</script>